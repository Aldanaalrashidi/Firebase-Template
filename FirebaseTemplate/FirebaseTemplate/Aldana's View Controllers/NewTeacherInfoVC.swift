//
//  NewTeacherInfoVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/10/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit
import Firebase
import BSImagePicker
import CodableFirebase
import Photos

class NewTeacherInfoVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var selectedTeacher: Teacher = Teacher(name: "", teachergrade: "", subjectName: "", email: "", suggestedWeekdays: "", cost: "", stage: "",imageurl: URL(string: ""))
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    var ImageURL : URL?
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return gender.count
        case 2:
            return stage.count
        case 3:
            return classes.count
        case 4:
            return subject.count
        case 5:
            return cost.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return gender[row]
        case 2:
            return stage[row]
        case 3:
            return classes[row]
        case 4:
            return subject[row]
        case 5:
            return cost[row]
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            teacherGenderField.text = gender[row]
            teacherGenderField.resignFirstResponder()
        // selectedTeacher.gender = gender[row]
        case 2:
            stageField.text = stage[row]
            stageField.resignFirstResponder()
            selectedTeacher.stage = stage[row]
        case 3:
            classField.text = classes[row]
            classField.resignFirstResponder()
            selectedTeacher.teachergrade = classes[row]
        case 4:
            subjectField.text = subject[row]
            subjectField.resignFirstResponder()
            selectedTeacher.subjectName = subject[row]
        case 5:
            classCostField.text = cost[row]
            classCostField.resignFirstResponder()
            selectedTeacher.cost = cost[row]
        default:
            return
        }
    }
    
    @IBOutlet weak var teacherNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var daysOfWeekField: UITextField!
    @IBOutlet weak var classCostField: UITextField!
    @IBOutlet weak var teacherGenderField: UITextField!
    @IBOutlet weak var stageField: UITextField!
    @IBOutlet weak var classField: UITextField!
    @IBOutlet weak var subjectField: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var teacherAddImg: UIImageView!
    @IBOutlet weak var addImgBtn1: UIButton!
    
    
    //Picker view display
    let gender = ["أنثى", "ذكر"]
    let stage = ["المرحلة المتوسطة", "المرحلة الثانوية"]
    let classes = [SIXTH_GRADE, SEVENTH_GRADE, EIGHTH_GRADE, NINTH_GRADE, TENTH_GRADE, ELEVENTH_GRADE, TWELVETH_GRADE]
    let subject = [ENGLISH, ARABIC, MATH, ISLAM]
    let cost = ["٥ دك", "٦ دك", "٧ دك", "٨ دك", "٩ دك", "١٠ دك", "١١ دك", "١٢ دك", "١٣ دك", "١٤ دك", "١٥ دك", "١٦ دك", "١٧ دك", "١٨ دك", "١٩ دك", "٢٠ دك", "٢١ دك", "٢٢ دك", "٢٣ دك", "٢٤ دك", "٢٥ دك"]
    
    //PickerView
    var genderPickerView = UIPickerView()
    var stagePickerView = UIPickerView()
    var classPickerView = UIPickerView()
    var subjectPickerView = UIPickerView()
    var classCostPickerView = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputs()
        picker()
        tags()
        alignment()
        placeHolder()
        teacherAddImg.layer.cornerRadius = teacherAddImg.frame.width / 2
    }
    
    //Firebase test
    
    // var collectionName = ""
    //var teacher = Teacher(name: "test", teachergrade: "", subjectName: "", email: "", suggestedWeekdays: "", cost: "", image: "", stage: "")
    
    @IBAction func add(_ sender: UIButton) {
        error()
        newTeacher()
        //        if stageField.text == "المرحلة الثانوية"{
        //            collectionName = "HighSchool"
        //        }
        
        // 1. Retreive the object
        // 2. Update it
        // 3. Send it back
        let encodedTeacher = [try! FirebaseEncoder().encode(selectedTeacher)]
        Firestore
            .firestore()
            .collection(selectedTeacher.teachergrade)
            .document(selectedTeacher.subjectName)
            .updateData(["teachers" : FieldValue.arrayUnion(encodedTeacher)])
    }
    
    @IBAction func addImgBtn(_ sender: UIButton) {
        
        let imagePicker = ImagePickerController()
        imagePicker.settings.selection.max = 1
        
        presentImagePicker(imagePicker, select: { (asset) in
            // User selected an asset. Do something with it. Perhaps begin processing/upload?
            
        }, deselect: { (asset : PHAsset) in
            // User deselected an asset. Cancel whatever you did when asset was selected.
        }, cancel: { (assets : [PHAsset]) in
            // User canceled selection.
        }, finish: { (assets : [PHAsset]) in
            self.teacherAddImg.image = UploadImage().getAssetThumbnail(asset: assets[0])
            UploadImage.UploadImageAndGetUrl(path: "images",UUID().uuidString, ImageView: self.teacherAddImg.image!) { (U : URL) in
                self.ImageURL = U
                
            }
        })
    }
    
    //Error if text fields are empty
    func error(){
        if teacherNameField.text == "" || emailField.text == "" || daysOfWeekField.text  == "" || classCostField.text == "" || teacherGenderField.text == "" || stageField.text == "" || classField.text == "" || subjectField.text == "" {
            let alertController = UIAlertController(title: "المعلومات غير مكتملة", message: "أكمل المعلومات بالضغط على زر أكمل", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "أكمل", style: .cancel) { (alert) in
            }
            alertController.addAction(restartAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func newTeacher() {
        selectedTeacher.name = teacherNameField.text ?? "سعد"
        selectedTeacher.email = emailField.text ?? "saad@gmail.com"
        selectedTeacher.suggestedWeekdays = daysOfWeekField.text ?? "الثلاثاء، الخميس"
        selectedTeacher.imageurl = ImageURL
        print(selectedTeacher)
    }
    
    
    func picker(){
        genderPickerView.delegate = self
        genderPickerView.dataSource = self
        stagePickerView.delegate = self
        stagePickerView.dataSource = self
        classPickerView.delegate = self
        classPickerView.dataSource = self
        subjectPickerView.delegate = self
        subjectPickerView.dataSource = self
        classCostPickerView.dataSource = self
        classCostPickerView.delegate = self
    }
    
    //Input picker view to text field
    func inputs(){
        teacherGenderField.inputView = genderPickerView
        stageField.inputView = stagePickerView
        classField.inputView = classPickerView
        subjectField.inputView = subjectPickerView
        classCostField.inputView = classCostPickerView
    }
    
    //Tags
    func tags(){
        genderPickerView.tag = 1
        stagePickerView.tag = 2
        classPickerView.tag = 3
        subjectPickerView.tag = 4
        classCostPickerView.tag = 5
    }
    
    // Alignment
    func alignment(){
        teacherGenderField.textAlignment = .right
        stageField.textAlignment = .right
        classField.textAlignment = .right
        subjectField.textAlignment = .right
    }
    
    //Checking Info
    func checkInfo(){
        if teacherGenderField.text != "ذكر" || stageField.text != "المرحلة الثانوية" {
            infoError()
        }
        else if teacherGenderField.text != "أنثى" || stageField.text != "المرحلة المتوسطة" {
            infoError()
        }
    }
    
    //Alert Func
    func infoError(){
        let alertController = UIAlertController(title: "", message: "أدخل المعلومات الصحيحة", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "اكمل", style: .cancel) { (alert) in
            //action
            self.addBtn.isEnabled = true
        }
        alertController.addAction(restartAction)
        present(alertController, animated: true, completion: nil)
    }
    
    //Place Holder
    func placeHolder() {
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Lateef", size: 25)! // Note the !
        ]
        teacherGenderField.attributedPlaceholder = NSAttributedString(string: "جنسك", attributes:attributes)
        teacherNameField.attributedPlaceholder = NSAttributedString(string: "اسمك", attributes:attributes)
        emailField.attributedPlaceholder = NSAttributedString(string: "ايميلك", attributes:attributes)
        daysOfWeekField.attributedPlaceholder = NSAttributedString(string: "اقترح ايام الأسبوع", attributes:attributes)
        classCostField.attributedPlaceholder = NSAttributedString(string: "سعر الحصة للساعة", attributes:attributes)
        stageField.attributedPlaceholder = NSAttributedString(string: "المرحلة", attributes:attributes)
        classField.attributedPlaceholder = NSAttributedString(string: "الصف", attributes:attributes)
        subjectField.attributedPlaceholder = NSAttributedString(string: "المادة", attributes:attributes)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //verified speech & teacher terms
        if segue.identifier == "new teacher verification"{
            let verify = segue.destination as! VerifiedVC
            //verify female/ male teacher
            if teacherGenderField.text == "ذكر" {
                verify.verifyWho = "تم إضافة مدرس جديد"
            } else if teacherGenderField.text == "أنثى" {
                verify.verifyWho = "تم إضافة مدرسة جديدة"
            } else{
                infoError()
            }
        } else if segue.identifier == "to add teacher terms"{
            let vc = segue.destination as! DetailTermsVC
            vc.whoTerms = "المدرس:"
            vc.whatTerms =
            "١- يشترط على المدرس قبول ٣-٤ حصص في اليوم بمعدل لا يقل عن ٤ أيام في الأسبوع الواحد.                                                                                             ٢- وعلى المدرس أن يقوم بترتيب جدول حصصه بما يتناسب معه أسبوعياً.                                                                               ٣- عند وصول تنبيه بتسجيل حصه من قبل الطالب يظهر للمدرس منطقة سكن الطالب والوقت فيقوم المدرس بقبول أو رفض الحصه خلال ٢٤ ساعة وذلك بإرسال ايميل للطالب لتأكيد الحصه."
        }
    }
}

