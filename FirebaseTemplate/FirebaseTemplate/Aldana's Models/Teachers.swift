//
//  Teachers.swift
//  حصتي
//
//  Created by tahani alrashidi on 7/12/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import Foundation

// School.grade.subject.teacher
// main.gradeSix.subjects[0].teacher
//main.Grade.Subject.Teacher

struct Teacher: Codable{
    var name: String
    var teachergrade: String
    var subjectName: String
    var email: String
    var suggestedWeekdays: String
    var cost: String
    var image: String
    var stage: String
}

struct Grade {
    var title: String
    var subjects: [Subject]
}

struct Subject{
    var title: String
    var teachers: [Teacher]
}

var teachers: Teacher!

// MARK:- Middle School
var grade6Subjects: [Subject] = [arabic6, english6, math6, islam6]
var grade7Subjects: [Subject] = [arabic7, english7, math7, islam7]
var grade8Subjects: [Subject] = [arabic8, english8, math8, islam8]
var grade9Subjects: [Subject] = [arabic9, english9, math9, islam9]

// MARK:- High School
var grade10Subjects: [Subject] = [arabic10, english10, math10, islam10]
var grade11Subjects: [Subject] = [arabic11, english11, math11, islam11]
var grade12Subjects: [Subject] = [arabic12, english12, math12, islam12]

// MARK:- 6th grade
var math6: Subject = Subject(title: "Math", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السادس", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السادس", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var english6 : Subject = Subject(title: "English", teachers:  [
    Teacher(name: "أحمد", teachergrade: "الصف السادس", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السادس", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var arabic6: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السادس", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السادس", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var islam6: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السادس", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السادس", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])

// MARK:- 7th grade
var math7: Subject = Subject(title: "Math", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السابع", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السابع", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var english7: Subject = Subject(title: "English", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السابع", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السابع", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
 var arabic7: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السابع", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السابع", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var islam7: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف السابع", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف السابع", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])

// MARK:- 8th grade
var math8: Subject = Subject(title: "Math", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف الثامن", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var english8: Subject = Subject(title: "English", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف الثامن", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var arabic8: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف الثامن", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var islam8: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثامن", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف الثامن", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])

// MARK:- 9th grade
var math9: Subject = Subject(title: "Math", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف التاسع", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var english9: Subject = Subject(title: "English", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف التاسع", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var arabic9: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف التاسع", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])
var islam9: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف التاسع", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"), Teacher(name: "محمود", teachergrade: "الصف التاسع", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة المتوسطة"),
    
])

// MARK:- 10th grade
var math10: Subject = Subject(title: "Math", teachers:[
    Teacher(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف العاشر", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var english10: Subject = Subject(title: "English", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف العاشر", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var arabic10: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف العاشر", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var islam10: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف العاشر", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف العاشر", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])

// MARK:- 11th grade
var math11: Subject = Subject(title: "Math", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الحادي عشر", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف العاشر", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var english11: Subject = Subject(title: "English", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الحادي عشر", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الحادي عشر", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var arabic11: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الحادي عشر", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الحادي عشر", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var islam11: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "أحمد", teachergrade:"الصف الحادي عشر", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الحادي عشر", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])

// MARK:- 12th grade
var math12: Subject = Subject(title: "Math", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثاني عشر", subjectName: "رياضيات", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "رياضيات", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var english12: Subject = Subject(title: "English", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثاني عشر", subjectName: "اللغة الانجليزية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "اللغة الانجليزية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var arabic12: Subject = Subject(title: "Arabic", teachers: [
    Teacher(name: "أحمد", teachergrade: "الصف الثاني عشر", subjectName: "اللغة العربية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "اللغة العربية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])
var islam12: Subject = Subject(title: "Islam", teachers: [
    Teacher(name: "سعد", teachergrade:"الصف الثاني عشر", subjectName: "اسلامية", email: "ahmad@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"), Teacher(name: "محمود", teachergrade: "الصف الثاني عشر", subjectName: "اسلامية", email: "mahmod@gmail.com", suggestedWeekdays: "الاحد و الخميس", cost: "١٠ دك", image: "ppp", stage: "المرحلة الثانوية"),
    
])

// MARK:- grades
let grades: [Grade] = [grade6, grade7, grade8, grade9, grade10, grade11, grade12]

let grade6: Grade = Grade(title: "الصف السادس", subjects: grade6Subjects )
let grade7: Grade = Grade(title: "الصف السابع", subjects: grade7Subjects)
let grade8: Grade = Grade(title: "الصف الثامن", subjects: grade8Subjects)
let grade9: Grade = Grade(title: "الصف التاسع", subjects: grade9Subjects)
let grade10: Grade = Grade(title: "الصف العاشر", subjects: grade10Subjects)
let grade11: Grade = Grade(title: "الصف الحادي عشر", subjects: grade11Subjects)
let grade12: Grade = Grade(title: "الصف الثاني عشر", subjects: grade12Subjects)

