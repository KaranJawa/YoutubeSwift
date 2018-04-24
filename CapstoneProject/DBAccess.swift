//
//  DBAccess.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-08.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit
import SQLite
class DBAccess: NSObject {
    var database: Connection!
   

    func connect(){
        let fileManager = FileManager.default
        
        let documentsUrl = fileManager.urls(for: .documentDirectory,
                                            in: .userDomainMask)
        
        let finalDatabaseURL = documentsUrl.first!.appendingPathComponent("TrainsmartWellness.db")
        
        if !( (try? finalDatabaseURL.checkResourceIsReachable()) ?? false) {
            print("DB does not exist in documents folder")
            
            let documentsURL = Bundle.main.resourceURL?.appendingPathComponent("TrainsmartWellness.db")
            
            do {
                try fileManager.copyItem(atPath: (documentsURL?.path)!, toPath: finalDatabaseURL.path)
            } catch let error as NSError {
                print("Couldn't copy file to final location! Error:\(error.description)")
            }
            
        } else {
            print("Database file found at path: \(finalDatabaseURL.path)")
            do{
            let database = try Connection(finalDatabaseURL.path)
            self.database = database
            }catch{
                print("Unable to connect to database")
            }
        }
        
    }
    func insertUser(user: User)->Int{
        let name = Expression<String>("Name")
        let email = Expression<String>("Email")
        let phoneNo = Expression<String>("Phone")
        let gender = Expression<String>("Gender")
        let age = Expression<Int>("Age")
        let passwd = Expression<String>("Passwd")
        let approle = Expression<String>("approle")
        let insertUser = Table("User").insert(name <- user.name!,email <- user.email!,phoneNo <- user.phone!, gender <- user.gender!, age <- user.age!,passwd <- user.password!, approle <- user.approle!)
        do{
            try self.database.run(insertUser)
            print("Inserted User")
            return 0
        }catch{
            return 1
        }
       
    }
//    func listUsers()->[User]{
//        var users = [User]()
//
//        do{
//            let users = try self.database.prepare(Table("users"))
//            for user in users{
//                var u: User = User.init()
//                u.initWithStuff(user.get(name: Expression<String>),
//                                user.get(email: Expression<String>))
//            }
//            }
//        catch{
//
//        }
//        return users
//    }
//
//    func UpdateUser(user: User)->Int{
//        let users = Table("User").filter(Expression<Int>("id") == user.id!)
//        let email = Expression<String>("Email")
//       // let updateUser = users.update(email <- user.email!)
//        do{
//            //try database.run(updateUser)
//        }catch{
//            print(error)
//        }
//    }

    
}

