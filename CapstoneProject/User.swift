//
//  User.swift
//  FinalProjectMyVersion
//
//  Created by Xcode User on 2018-04-05.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit

class User: NSObject {
    var id: Int?
    var name : String?
    var password : String?
    var email : String?
    var phone : String?
    var gender : String?
    var physicianName : String?
    var age: Int?
    var approle: String?
    override init() {
        super.init()
    }
  
//    func initWithStuff(name:String,password:String,email:String,phone:String,gender:String,physicianName:String,physicianPhone: String)
//    {
//        self.name = name
//        self.email = email
//        self.password = password
//        self.phone = phone
//        self.gender = gender
//        self.physicianName = physicianName
//        self.physicianPhone = physicianPhone
//    }
    
    func initWithStuff(name:String,password:String,email:String,phone:String,gender:String,age: Int, approle: String)
        {
            self.setName(n: name)
            self.email = email
            self.password = password
            self.phone = phone
            self.gender = gender
            self.age = age
            self.approle = approle
        }
    
    enum ErrorsToThrow: Error {
        case shortPassword
        case allUpperCase
        case allLowerCase
        case phoneLength
    }
    
    func setName(n:String)
    {
        name = n
    }

    func setEmail(e:String)
    {
        email = e
    }
    
    func setPhone(ph:String)
    {
        phone = ph
    }
    
    func setPassword(pswd:String)
    {
        password = pswd
    }
    
    func setGender(g:String)
    {
        gender = g
    }
    
    func setPhysicianName(phName:String)
    {
        physicianName = phName
    }
    func setAge(age: Int)
    {
        self.age = age
    }

    
}
