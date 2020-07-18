//
//  TermsVC.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/11/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class TermsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    // teacher and student terms
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "to teacher terms"{
            let vc = segue.destination as! DetailTermsVC
            vc.whoTerms = "المدرس:"
            vc.whatTerms =
            "١- يشترط على المدرس قبول ٣-٤ حصص في اليوم بمعدل لا يقل عن ٤ أيام في الأسبوع الواحد.                                                                                             ٢- وعلى المدرس أن يقوم بترتيب جدول حصصه بما يتناسب معه أسبوعياً.                                                                               ٣- عند وصول تنبيه بتسجيل حصه من قبل الطالب يظهر للمدرس منطقة سكن الطالب والوقت فيقوم المدرس بقبول أو رفض الحصه خلال ٢٤ ساعة وذلك بإرسال ايميل للطالب لتأكيد الحصه."
        } else if segue.identifier == "to student terms"{
            let vc = segue.destination as! DetailTermsVC
            vc.whoTerms = "الطالب:"
            vc.whatTerms = " ١- يقوم الطالب بالتسجيل في حصتي وذلك بإدخال البيانات المطلوبة منه أثناء التسجيل.                                                                                ٢- يسجل الطالب حصته ويحدد اليوم والوقت الذي يناسبه، ويمكن له أن يكرر التسجيل لحصص مختلفة كلٍ على حدى.                                                                       ٣- قبول أو رفض الحصة سيكون خلال ٢٤ ساعة بإرسال ايميل للطالب .                                                                         ٤- يمكن للطالب تحديد حصه مع مدرسيين معينين ولكن يترتب على ذلك امكانية رفضها اذا لم تتناسب مع المدرس المحدد.                                                                  ٥ -يتيح للطالب الغاء الحصه قبل بدئها بحد ادنى ٣ ساعات او او اكثر من خلال رسالة عبر الايميل."
        }
    }
}
