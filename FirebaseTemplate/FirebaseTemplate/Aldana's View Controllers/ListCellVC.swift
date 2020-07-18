//
//  ListCellVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/13/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class ListCellVC: UITableViewCell {
    
    @IBOutlet weak var teacherName: UILabel!
    @IBOutlet weak var teacherImg: UIImageView!
    
    @IBOutlet weak var subjectInCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//        teacherImg.image = UIImage(named: teacherImgName)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func callCell(for teacher: Teacher) {
        teacherName.text = teacher.name
        subjectInCell.text = teacher.subjectName
    }
}
