//
//  SkipBackup.swift
//  Plugin
//
//  Created by Jonathan Gerber on 26.02.20.
//  Copyright © 2020 Max Lynch. All rights reserved.
//

import Foundation

class SkipBackup{
    
    class func addSkipBackupAttributeToItemAtURL(filePath:String) -> Bool
       {
        let URL:NSURL = NSURL.fileURL(withPath: filePath) as NSURL

        assert(FileManager.default.fileExists(atPath: filePath), "File \(filePath) does not exist")

           var success: Bool
           do {
            try URL.setResourceValue(true, forKey:URLResourceKey.isExcludedFromBackupKey)
               success = true
           } catch let error as NSError {
               success = false
               print("Error excluding \(URL.lastPathComponent) from backup \(error)");
           }
        return success
    }
    
}



