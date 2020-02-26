import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapIcloudBackup)
public class CapIcloudBackup: CAPPlugin {
    
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }
    
    @objc func skipBackupForUrl(_ call: CAPPluginCall) {
        let urlString = call.getString("urlString") ?? ""
        let succes = SkipBackup.addSkipBackupAttributeToItemAtURL(filePath: urlString)
        switch succes {
        case true:
            call.success([
                "success": true
            ])
        default:
            call.success([
                "succes": true
            ])
        }
        
    }
}
