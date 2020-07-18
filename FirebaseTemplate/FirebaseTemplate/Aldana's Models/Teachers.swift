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
    var stage: String
}

