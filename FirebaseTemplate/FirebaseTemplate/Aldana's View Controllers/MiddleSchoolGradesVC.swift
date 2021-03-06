//
//  MiddleSchoolGradesVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/13/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class MiddleSchoolGradesVC: UIViewController {
    var selectedGrade: String!
    var selectedTag: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ifTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            selectedGrade = SIXTH_GRADE
            selectedTag = sender.tag
        case 1:
            selectedGrade = SEVENTH_GRADE
            //            print("\(selectedGrade)❌")
            selectedTag = sender.tag
        case 2:
            selectedGrade = EIGHTH_GRADE
        case 3:
            selectedGrade = NINTH_GRADE
            //            print("\(selectedGrade)❌")
            selectedTag = sender.tag
        default:
            print("didn't found data")
        }
        performSegue(withIdentifier: "to ms subjects", sender: nil)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! SubjectsVC
        vc.didSelect = Grade(title: selectedGrade, subjects: [])
        vc.gradeTag = selectedTag
    }    
}
