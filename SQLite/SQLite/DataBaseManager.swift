//
//  DataBaseManager.swift
//  SQLite
//
//  Created by Admin on 29/04/22.
//

import Foundation
var shareInstance = DatabaseManager()
class DatabaseManager : NSObject{
    var dataBase : FMDatabase? = nil
    
    
    class func getInstance() -> DatabaseManager{
        if shareInstance.dataBase == nil{
            shareInstance.dataBase = FMDatabase(path: Util.getPath("SQlLogin.db"))
        }
        return shareInstance
    }
    
    func saveData(_ modeInfo : SQLoginModel) -> Bool{
        shareInstance.dataBase?.open()
        let isSave = shareInstance.dataBase?.executeUpdate("INSERT INTO SignUp(fname, lname, phone, email) VALUES(?, ?, ?, ?)" , withArgumentsIn: [modeInfo.fname, modeInfo.lname, modeInfo.phone, modeInfo.email])
        
        shareInstance.dataBase?.close()
        return isSave!
        
    }
    
}
