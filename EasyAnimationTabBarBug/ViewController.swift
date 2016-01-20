//
//  ViewController.swift
//  EasyAnimationTabBarBug
//
//  Created by Patryk Kaczmarek on 20/01/16.
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .System)
        button.setTitle("button", forState: .Normal)
        button.addTarget(self, action: "didTapButton:", forControlEvents: .TouchUpInside)
        button.sizeToFit()
        button.center = view.center
        view.addSubview(button)
    }
    
    func didTapButton(_: UIButton) {
        
        let firstVC = UIViewController()
        firstVC.view.backgroundColor = UIColor.redColor()
        firstVC.title = "First!"
        
        let secondVC = UIViewController()
        secondVC.title = "Second!"
        secondVC.view.backgroundColor = UIColor.greenColor()
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstVC, secondVC]
        
        //present tab bar controller without animation:
        presentViewController(tabBarController, animated: false, completion: nil)
    }
}

