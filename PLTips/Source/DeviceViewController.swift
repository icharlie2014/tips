//
//  DeviceViewController.swift
//  PLTips
//
//  Created by panglong on 15/11/13.
//  Copyright © 2015年 apple. All rights reserved.
//

import UIKit

class DeviceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = UIView(frame: CGRect(x: 10,y: 50,width: 50,height: 50));
        myView.backgroundColor = UIColor.redColor();
        self.view.addSubview(myView);
        
        /*** Display the device version ***/
        switch Device.version() {
            /*** iPhone ***/
        case .iPhone4:       print("It's an iPhone 4")
        case .iPhone4S:      print("It's an iPhone 4S")
        case .iPhone5:       print("It's an iPhone 5")
        case .iPhone5C:      print("It's an iPhone 5C")
        case .iPhone5S:      print("It's an iPhone 5S")
        case .iPhone6:       print("It's an iPhone 6")
        case .iPhone6S:      print("It's an iPhone 6S")
        case .iPhone6Plus:   print("It's an iPhone 6 Plus")
        case .iPhone6SPlus:  print("It's an iPhone 6 S Plus")
            
            /*** iPad ***/
        case .iPad1:         print("It's an iPad 1")
        case .iPad2:         print("It's an iPad 2")
        case .iPad3:         print("It's an iPad 3")
        case .iPad4:         print("It's an iPad 4")
        case .iPadAir:       print("It's an iPad Air")
        case .iPadAir2:      print("It's an iPad Air 2")
        case .iPadMini:      print("It's an iPad Mini")
        case .iPadMini2:     print("It's an iPad Mini 2")
        case .iPadMini3:     print("It's an iPad Mini 3")
        case .iPadMini4:     print("It's an iPad Mini 4")
        case .iPadPro:       print("It's an iPad Pro")
            
            /*** iPod ***/
        case .iPodTouch1Gen: print("It's a iPod touch generation 1")
        case .iPodTouch2Gen: print("It's a iPod touch generation 2")
        case .iPodTouch3Gen: print("It's a iPod touch generation 3")
        case .iPodTouch4Gen: print("It's a iPod touch generation 4")
        case .iPodTouch5Gen: print("It's a iPod touch generation 5")
        case .iPodTouch6Gen: print("It's a iPod touch generation 6")
            
            /*** Simulator ***/
        case .Simulator:    print("It's a Simulator")
            
            /*** Unknown ***/
        default:            print("It's an unknown device")
        }
        
        /*** Display the device screen size ***/
        switch Device.size() {
        case .Screen3_5Inch: print("It's a 3.5 inch screen")
        case .Screen4Inch:   print("It's a 4 inch screen")
        case .Screen4_7Inch: print("It's a 4.7 inch screen")
        case .Screen5_5Inch: print("It's a 5.5 inch screen")
        default:             print("Unknown size")
        }
        
        /*** Helpers ***/
//        if Device.isEqualToScreenSize(Size.Screen3_5Inch) {
//            print("It's a 3.5 inch screen")
//        }
//        
//        if Device.isEqualToScreenSize(Size.Screen4Inch) {
//            print("It's a 4 inch screen")
//        }
//        
//        if Device.isLargerThanScreenSize(Size.Screen4_7Inch) {
//            print("Your device screen is larger than 4.7 inch")
//        }
//        
//        if Device.isSmallerThanScreenSize(Size.Screen4_7Inch) {
//            print("Your device screen is smaller than 4.7 inch")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
