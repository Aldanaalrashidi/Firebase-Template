//
//  Teachers.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/12/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import Foundation

struct NewTeachers{
    var name: String
    var teachergrade: String
    var subjectName: String
    var email: String
    var suggestedWeekdays: String
    var cost: String
    var image: String
    var stage: String
}

struct main {
    var grade: String
    var subject: [[NewTeachers]]
}

var teachers: NewTeachers!

// MARK:- Middle School
var middleSchool6Teacher: [[NewTeachers]] = [arabicTeachers6, englishTeachers6, mathTeachers6, islamTeachers6]
var middleSchool7Teacher: [[NewTeachers]] = [arabicTeachers7, englishTeachers7, mathTeachers7, islamTeachers7]
var middleSchool8Teacher: [[NewTeachers]] = [arabicTeachers8, englishTeachers8, mathTeachers8, islamTeachers8]
var middleSchool9Teacher: [[NewTeachers]] = [arabicTeachers9, englishTeachers9, mathTeachers9, islamTeachers9]

// MARK:- High School
var highSchool10Teacher: [[NewTeachers]] = [arabicTeachers10, englishTeachers10, mathTeachers10, islamTeachers10]
var highSchool11Teacher: [[NewTeachers]] = [arabicTeachers11, englishTeachers11, mathTeachers11, islamTeachers11]
var highSchool12Teacher: [[NewTeachers]] = [arabicTeachers12, englishTeachers12, mathTeachers12, islamTeachers12]




// MARK:- 6th grade
var mathTeachers6: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السادس", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السادس", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var englishTeachers6: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السادس", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السادس", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var arabicTeachers6: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السادس", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السادس", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var islamTeachers6: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السادس", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السادس", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]

// MARK:- 7th grade
var mathTeachers7: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السابع", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السابع", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var englishTeachers7: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السابع", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السابع", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var arabicTeachers7: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السابع", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السابع", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var islamTeachers7: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف السابع", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف السابع", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]

// MARK:- 8th grade
var mathTeachers8: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف الثامن", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var englishTeachers8: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف الثامن", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var arabicTeachers8: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف الثامن", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var islamTeachers8: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف الثامن", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]

// MARK:- 9th grade
var mathTeachers9: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف التاسع", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var englishTeachers9: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف التاسع", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var arabicTeachers9: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف التاسع", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]
var islamTeachers9: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), NewTeachers(name: "محمود", teachergrade: "الصف التاسع", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
]


// MARK:- 10th grade
var mathTeachers10: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف العاشر", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var englishTeachers10: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف العاشر", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var arabicTeachers10: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف العاشر", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var islamTeachers10: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف العاشر", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]

// MARK:- 11th grade
var mathTeachers11: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الحادي عشر", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف العاشر", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var englishTeachers11: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الحادي عشر", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الحادي عشر", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var arabicTeachers11: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الحادي عشر", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الحادي عشر", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var islamTeachers11: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade:"الصف الحادي عشر", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الحادي عشر", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]

// MARK:- 12th grade
var mathTeachers12: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثاني عشر", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var englishTeachers12: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثاني عشر", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var arabicTeachers12: [NewTeachers] = [
    NewTeachers(name: "أحمد", teachergrade: "الصف الثاني عشر", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]
var islamTeachers12: [NewTeachers] = [
    NewTeachers(name: "سعد", teachergrade:"الصف الثاني عشر", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), NewTeachers(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
]



// MARK:- grades
let grades: [main] = [grade10, grade11, grade12]

let grade6: main = main(grade: "الصف السادس", subject: middleSchool6Teacher )
let grade7: main = main(grade: "الصف السابع", subject: middleSchool7Teacher)
let grade8: main = main(grade: "الصف الثامن", subject: middleSchool8Teacher)
let grade9: main = main(grade: "الصف التاسع", subject: middleSchool9Teacher)
let grade10: main = main(grade: "الصف العاشر", subject: highSchool10Teacher)
let grade11: main = main(grade: "الصف الحادي عشر", subject: highSchool11Teacher)
let grade12: main = main(grade: "الصف الثاني عشر", subject: highSchool12Teacher)

