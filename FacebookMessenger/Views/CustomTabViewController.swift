//
//  CustomTabViewController.swift
//  FacebookMessenger
//
//  Created by Habib Durodola on 2020-12-30.
//

import UIKit

class CustomTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        let firstController = UINavigationController(rootViewController: ViewController(collectionViewLayout: layout))
        firstController.tabBarItem.title = "Main"
        firstController.tabBarItem.badgeValue = "2"
        firstController.tabBarItem.image = UIImage(named: "icons8-invite-50")

        viewControllers = [firstController ,  createNavTabBar(title: "Recents", imageString: "icons8-new-contact-50") ,  createNavTabBar(title: "Add", imageString: "icons8-new-contact-50")]

    }

    func createNavTabBar(title : String , imageString : String)->UINavigationController{
        let secondViewController = UIViewController()
        secondViewController.tabBarItem.title = title
        secondViewController.view.backgroundColor = .white
        secondViewController.tabBarItem.image = UIImage(named: imageString)
        let navController = UINavigationController(rootViewController: secondViewController)
        return navController

    }


}
