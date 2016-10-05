//
//  ViewController.swift
//  MIFabDemo
//
//  Created by Mario on 05/10/2016.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate var fab: MIFab!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupFab()
        
    }

    fileprivate func setupFab() {
        
        var fabConfig = MIFab.Config()
        
        fabConfig.buttonImage = UIImage(named: "iconA")
        fabConfig.buttonBackgroundColor = UIColor.orange
        
        fab = MIFab(
            parentVC: self,
            config: fabConfig,
            options: [
                MIFabOption(
                    title: "Item two",
                    image: UIImage(named: "iconB"),
                    backgroundColor: UIColor.orange,
                    tintColor: UIColor.white,
                    actionClosure: {
                        
                        let alertController = UIAlertController(title: "Demo", message: "First fab button tapped", preferredStyle: .alert)
                        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                        
                        self.present(alertController, animated: true, completion: nil)
                        
                    }
                ),
                MIFabOption(
                    title: "Item three",
                    image: UIImage(named: "iconC"),
                    backgroundColor: UIColor.orange,
                    tintColor: UIColor.white,
                    actionClosure: {
                        
                        let alertController = UIAlertController(title: "Demo", message: "Second fab button tapped", preferredStyle: .alert)
                        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                        
                        self.present(alertController, animated: true, completion: nil)
                        
                    }
                )
            ]
        )
        
        fab.showButton(animated: true)
        
    }

}

