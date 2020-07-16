//
//  SubjectsVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/13/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class SubjectsVC: UIViewController {
    var didSelect: main!
    var gradeTag: Int!
    var finalSubject: [NewTeachers] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func subjectTapped(_ sender: UIButton) {
//        print("\(didSelect)U🍕")
//        print("\(sender.tag)U🍕")
//         print("\(gradeTag)U🍕")
        switch sender.tag {
        case 0:
            finalSubject = didSelect.subject[sender.tag]
        case 1:
            finalSubject = didSelect.subject[sender.tag]
        case 2:
            finalSubject = didSelect.subject[sender.tag]
        case 3:
            finalSubject = didSelect.subject[sender.tag]
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
        vc.teacher = finalSubject
    }
}
