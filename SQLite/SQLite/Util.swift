//
//  Util.swift
//  SQLite
//
//  Created by Admin on 27/04/22.
//

import Foundation

class Util : NSObject{
    class func getPath(_ fileName : String) -> String {
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileUrl = documentDirectory.appendingPathComponent(fileName)
        print(" DataBase Path \(fileUrl.path) ")
        return fileUrl.path
        
    }
    
    class func copyDataBase(_ fileName : String){
        let dbPath = getPath("SQlLogin.db")
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: dbPath){
            let bundle = Bundle.main.resourceURL
            let file = bundle?.appendingPathComponent(fileName)
            var error : NSError?
            
            do{
                try fileManager.copyItem(atPath: (file?.path)!, toPath: dbPath)
            }catch let error1 as NSError{
                error = error1
            }
            if error == nil{
                print("error in db")
            }
            else{
                print("Yeah !!")
            }
            
        }
    }
}

