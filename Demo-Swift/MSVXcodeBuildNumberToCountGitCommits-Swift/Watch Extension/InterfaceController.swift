//
//  InterfaceController.swift
//  Watch Extension
//
//  Created by Serge Moskalenko on 10/4/18.
//  Copyright © 2018 Serge Moskalenko. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var activityRing: WKInterfaceActivityRing!
    @IBOutlet var interfaceLabel: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let appVersionString = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        let appBuildString = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
        
        interfaceLabel.setText(appVersionString! + "(build: " + appBuildString! + ")")
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
