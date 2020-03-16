//
//  SkipBackup.swift
//  Plugin
//
//  Created by Jonathan Gerber on 26.02.20.
//  Copyright © 2020 Jonathan Gerber. All rights reserved.
//

import Foundation

class SkipBackup{
    
    class func addSkipBackupAttributeToItemAtURL(filePath:String) -> Bool
       {
        let URL:NSURL = NSURL.init(string: filePath)!

        assert(FileManager.default.fileExists(atPath: URL.path!), "File \(URL.path!) does not exist")

           var success: Bool
           do {
            try URL.setResourceValue(true, forKey:URLResourceKey.isExcludedFromBackupKey)
               success = true
           } catch let error as NSError {
               success = false
            print("Error excluding \(URL.path!) from backup description: \(error.description) code: \(error.code)");
           }
        return success
    }
    
}



