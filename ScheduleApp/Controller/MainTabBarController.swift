//
//  ViewController.swift
//  ScheduleApp
//
//  Created by Александр Полетаев on 01.12.2021.
//

import UIKit
import RealmSwift

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpTabBar()
    }
    
    func setUpTabBar(){
        
        let scheduleViewController = createNavController(vc: ScheduleViewController(), itemName: "Schedule", itemImage: "calendar.badge.clock")
        let resultViewController = createNavController(vc: ResultViewController(), itemName: "Result", itemImage: "text.badge.checkmark")
        let contactsViewController = createNavController(vc: ContactsViewController(), itemName: "Contacts", itemImage: "rectangle.stack.person.crop")
        
        viewControllers = [scheduleViewController,resultViewController,contactsViewController]
    }
    
    func createNavController (vc: UIViewController, itemName: String, itemImage: String )-> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
    }
}



