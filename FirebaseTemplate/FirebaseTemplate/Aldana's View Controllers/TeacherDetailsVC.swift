//
//  TeacherDetailsVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/14/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit
var teacherImgName: String!
class TeacherDetailsVC: UIViewController {
    var teachers: Teacher!
    @IBOutlet weak var teacherNameLabel: UILabel!
    @IBOutlet weak var teacherStageLabel: UILabel!
    @IBOutlet weak var teacherGradeLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var suggestedWeekdays: UILabel!
    @IBOutlet weak var detailTeacherImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTeacherData()
        detailTeacherImg.image = UIImage(named: teacherImgName)
        // Do any additional setup after loading the view.
    }
    
    func setTeacherData(){
        teacherNameLabel.text = teachers.name
        teacherStageLabel.text = teachers.stage
        teacherGradeLabel.text = teachers.teachergrade
        costLabel.text = teachers.cost
        suggestedWeekdays.text = teachers.suggestedWeekdays
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
