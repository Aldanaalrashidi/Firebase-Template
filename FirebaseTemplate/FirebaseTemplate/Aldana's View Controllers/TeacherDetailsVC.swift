//
//  TeacherDetailsVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/14/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit
import SDWebImage
var teacherImgName: String!
class TeacherDetailsVC: UIViewController {
    var teachers: Teacher!
    @IBOutlet weak var teacherNameLabel: UILabel!
    @IBOutlet weak var teacherStageLabel: UILabel!
    @IBOutlet weak var teacherGradeLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var suggestedWeekdays: UILabel!
    @IBOutlet weak var detailTeacherImg: UIImageView!
    func DownloadImage(url : URL) {
        SDWebImageDownloader().downloadImage(with: url, options: .highPriority, progress: {  (receivedSize, expectedSize, url) in
            // image is being downloading and you can monitor progress here
        }) { (downloadedImage, data, error, success) in
            self.detailTeacherImg.image = downloadedImage
            
        }    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTeacherData()
        // Do any additional setup after loading the view.
        
        
        detailTeacherImg.layer.cornerRadius = detailTeacherImg.frame.width / 2
    }
    
    func setTeacherData(){
        teacherNameLabel.text = teachers.name
        teacherStageLabel.text = teachers.stage
        teacherGradeLabel.text = teachers.teachergrade
        costLabel.text = teachers.cost
        suggestedWeekdays.text = teachers.suggestedWeekdays
        if teachers.imageurl != nil{
            DownloadImage(url: teachers.imageurl)}
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
