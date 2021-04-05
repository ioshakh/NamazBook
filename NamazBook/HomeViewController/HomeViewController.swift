//
//  HomeViewController.swift
//  NamazBook
//
//  Created by shahzod on 4/1/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    
    @IBOutlet weak var button3: UIButton!
    
    
    @IBOutlet weak var button4: UIButton!
    
    
    @IBOutlet weak var button5: UIButton!
    
    
    @IBOutlet weak var button6: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    
    func initViews() {
        addNavigationBar()
        buttonsLayerCorners()
    }
    
    
    // Mark : - Buttons
    
    func buttonsLayerCorners() {
        
        button1.layer.cornerRadius = 30.0
        button2.layer.cornerRadius = 30.0
        button3.layer.cornerRadius = 30.0
        button4.layer.cornerRadius = 30.0
        button5.layer.cornerRadius = 30.0
        button6.layer.cornerRadius = 30.0
      
        
    }
    
    
    func addNavigationBar() {
      let imageView = UIImageView(image: UIImage(named: "namoz2"))
        
      imageView.contentMode = .scaleToFill
      
      let item = UIBarButtonItem(customView: imageView)
        
      self.navigationItem.leftBarButtonItem = item
    }
    
    
    
    // Mark : - BUTTONS
    
    // First Button
    
    
    @IBAction func firstButton(_ sender: Any) {
        let cv = FirstButtonViewController(nibName: "FirstButtonViewController", bundle: nil)
        
        self.navigationController?.pushViewController(cv, animated: true)
    }
    
    
    @IBAction func secondButton(_ sender: Any) {
        let sc = secondViewController(nibName: "secondViewController", bundle: nil)
        
        self.navigationController?.pushViewController(sc, animated: true)
    }
    
    @IBAction func buttonSix(_ sender: Any) {
        
    }
    


}
