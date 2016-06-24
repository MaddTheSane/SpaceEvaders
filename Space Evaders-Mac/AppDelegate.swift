//
//  AppDelegate.swift
//  Space Evaders-Mac
//
//  Created by C.W. Betts on 6/24/16.
//  Copyright (c) 2016 Tristen Miller. All rights reserved.
//


import Cocoa
import SpriteKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var skView: SKView!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
		GCHelper.sharedInstance.authenticateLocalUser()
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true
    }
}
