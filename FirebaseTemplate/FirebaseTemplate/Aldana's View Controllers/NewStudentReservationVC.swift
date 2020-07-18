//
//  NewStudentReservationVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/12/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class NewStudentReservationVC: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return day.count
        case 2:
           return classDuration.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return day[row]
        case 2:
            return classDuration[row]
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            dayField.text = day[row]
            dayField.resignFirstResponder()
        case 2:
        durationField.text = classDuration[row]
        durationField.resignFirstResponder()
        default:
          return
        }
    }
    
    @IBOutlet weak var dayField: UITextField!
    @IBOutlet weak var durationField: UITextField!
    @IBOutlet weak var studentNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var areaField: UITextField!
    @IBOutlet weak var addressField: UITextField!
   
    
    
     //Picker view display
    let day = ["الأحد", "الأثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"]
    let classDuration = ["ساعة", "ساعتين", "٣ ساعات", "٤ ساعات"]
    
    //PickerView
    var dayPickerView = UIPickerView()
    var durationPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tags()
        alignment()
        inputs()
        picker()
        placeHolder()
    }
    
    @IBAction func reserve(_ sender: UIButton) {
        error()
        performSegue(withIdentifier: "verified", sender: nil)
    }
    
    //Error if text fields are empty
    func error(){
        if dayField.text == "" || durationField.text == "" || studentNameField.text == "" || emailField.text == "" || areaField.text == "" || addressField.text == "" {
            let alertController = UIAlertController(title: "المعلومات غير مكتملة", message: "أكمل المعلومات بالضغط على زر أكمل", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "اكمل", style: .cancel) { (alert) in
            }
            alertController.addAction(restartAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func picker(){
        dayPickerView.delegate = self
        dayPickerView.dataSource = self
        durationPickerView.delegate = self
        durationPickerView.dataSource = self
    }
    
    //Input picker view to text field
    func inputs(){
        dayField.inputView = dayPickerView
        durationField.inputView = durationPickerView
    }
    
    //Tags
    func tags(){
        dayPickerView.tag = 1
        durationPickerView.tag = 2
    }
    
    //Alignment
    func alignment(){
        dayField.textAlignment = .right
        durationField.textAlignment = .right
    }
    
    //Place Holder
    func placeHolder() {
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Lateef", size: 25)! // Note the !
        ]
        dayField.attributedPlaceholder = NSAttributedString(string: "اليوم", attributes:attributes)
        durationField.attributedPlaceholder = NSAttributedString(string: "مدة الحصة", attributes:attributes)
        studentNameField.attributedPlaceholder = NSAttributedString(string: "اسمك", attributes:attributes)
        emailField.attributedPlaceholder = NSAttributedString(string: "ايميلك", attributes:attributes)
        areaField.attributedPlaceholder = NSAttributedString(string: "المنطقة", attributes:attributes)
        addressField.attributedPlaceholder = NSAttributedString(string: "العنوان", attributes:attributes)
    }
 
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // verify
        if segue.identifier == "verified"{
            let verify = segue.destination as! VerifiedVC
            verify.verifyWho = "سيصلك ايميل خلال ٢٤ ساعة من المدرس إما بالتأكيد أو الرفض"
        }else if segue.identifier == "student reserve terms"{
            let vc = segue.destination as! DetailTermsVC
            vc.whoTerms = "الطالب:"
            vc.whatTerms = " ١- يقوم الطالب بالتسجيل في حصتي وذلك بإدخال البيانات المطلوبة منه أثناء التسجيل.                                                                                ٢- يسجل الطالب حصته ويحدد اليوم والوقت الذي يناسبه، ويمكن له أن يكرر التسجيل لحصص مختلفة كلٍ على حدى.                                                                       ٣- قبول أو رفض الحصة سيكون خلال ٢٤ ساعة بإرسال ايميل للطالب .                                                                         ٤- يمكن للطالب تحديد حصه مع مدرسيين معينين ولكن يترتب على ذلك امكانية رفضها اذا لم تتناسب مع المدرس المحدد.                                                                  ٥ -يتيح للطالب الغاء الحصه قبل بدئها بحد ادنى ٣ ساعات او او اكثر من خلال رسالة عبر الايميل."
        }
       
    }
    

}
