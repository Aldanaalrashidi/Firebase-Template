//
//  SubjectsVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/13/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class SubjectsVC: UIViewController {
    var didSelect: Grade!
    var gradeTag: Int!
    var finalSubject: Subject!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Networking.getListOf(COLLECTION_NAME: "\(didSelect.title)") { (subjects: [Subject]) in
            if subjects.count == 4{
                self.didSelect.subjects = subjects
            }
        }
        
    }
    
    @IBAction func subjectTapped(_ sender: UIButton) {
//        print("\(didSelect)U🍕")
//        print("\(sender.tag)U🍕")
//         print("\(gradeTag)U🍕")
        guard didSelect.subjects.count > 0 else{
            let alertController = UIAlertController(title: "انتظر", message: "يتم تحميل المعلومات", preferredStyle: .alert)
            alertController.addAction(.init(title: "اوكي", style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        switch sender.tag {
        case 0:
            finalSubject = didSelect.subjects[sender.tag]
        case 1:
            finalSubject = didSelect.subjects[sender.tag]
        case 2:
            finalSubject = didSelect.subjects[sender.tag]
        case 3:
            finalSubject = didSelect.subjects[sender.tag]
        default:
            print("didn't found data")
        }
       performSegue(withIdentifier: "to list", sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let vc = segue.destination as! TeachersListVC
        vc.subject = finalSubject
    }
}
