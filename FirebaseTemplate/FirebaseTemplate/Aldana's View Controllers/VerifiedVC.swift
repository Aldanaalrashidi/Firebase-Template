//
//  VerifiedVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/11/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class VerifiedVC: UIViewController {
   
    @IBOutlet weak var verifyLabel: UILabel!
    var verifyWho: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyLabel.text = verifyWho
        // Do any additional setup after loading the view.
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
