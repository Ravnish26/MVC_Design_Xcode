//
//  ViewController.swift
//  Notification1
//
//  Created by Ravnish Singh on 22/02/22.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Pushb(_ sender: UIButton) {
      
        
        
        UNUserNotificationCenter.current().getNotificationSettings { notificationSettings in
            switch notificationSettings.authorizationStatus{
            case .notDetermined:
                self.requestAuthorization { <#Bool#>, <#Error?#> in
                    <#code#>
                }
            case .authorized:
            case .denied:
                print("Application NOT allowed")
            }
            }
        }
    
        }


