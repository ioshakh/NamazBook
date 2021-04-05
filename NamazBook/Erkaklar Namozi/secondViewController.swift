//
//  secondViewController.swift
//  NamazBook
//
//  Created by shahzod on 4/5/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    // Mark : - Bomdod
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var viewButon: UIView!
    
    // Mark : - peshin
    
    @IBOutlet weak var peshinView: UIView!
    
    @IBOutlet weak var firstButtonPeshin: UIButton!
    
    @IBOutlet weak var secondPeshinButton: UIButton!
    
    @IBOutlet weak var thirdPeshinButton: UIButton!
    
    //Mark : - Asr
    
    
    @IBOutlet weak var AsrButton: UIButton!
    
    @IBOutlet weak var Asrview: UIView!
    
    // Mark : - Shom
    
    @IBOutlet weak var shomView: UIView!
    
    
    @IBOutlet weak var firstShomButton: UIButton!
    
    
    
    @IBOutlet weak var secondShomButton: UIButton!
    
    
    // Mark : Hufton
    
    @IBOutlet weak var huftonView: UIView!
    
    @IBOutlet weak var firstHuftonButton: UIButton!
    
    @IBOutlet weak var secondHuftonButton: UIButton!
    
    @IBOutlet weak var thirdHuftonButton: UIButton!
    
    // Mark : Juma
    
    
    @IBOutlet weak var jumaVIew: UIView!
    
    
    @IBOutlet weak var firstJumaButton: UIButton!
    @IBOutlet weak var secondJumaButton: UIButton!
    @IBOutlet weak var thirdJumaButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         initView()
    }

    
    
    
    func initView() {
         buttonCorners()
    }
    
    
    
    
    
    func buttonCorners() {
        // Mark : Bomdod Corners
        
        button1.layer.cornerRadius = 20
        
        button2.layer.cornerRadius = 20
        
        viewButon.layer.cornerRadius = 15

        // Mark : Peshin Corners
        
        peshinView.layer.cornerRadius = 15
        firstButtonPeshin.layer.cornerRadius = 20
        secondPeshinButton.layer.cornerRadius = 20
        thirdPeshinButton.layer.cornerRadius = 20
        
        // Mark ; Asr Corners
        
        Asrview.layer.cornerRadius = 15
        AsrButton.layer.cornerRadius = 20
        
        //Mark : Shom Corners
        
        firstShomButton.layer.cornerRadius = 20
        secondShomButton.layer.cornerRadius = 20
    
        shomView.layer.cornerRadius = 15
        
        // Mark : Hufton Corners
        
        firstHuftonButton.layer.cornerRadius = 20
        secondHuftonButton.layer.cornerRadius = 20
        thirdHuftonButton.layer.cornerRadius = 20
        
        huftonView.layer.cornerRadius = 15
        
        //Mark : Juma
        
        firstJumaButton.layer.cornerRadius = 20
        secondJumaButton.layer.cornerRadius = 20
        thirdJumaButton.layer.cornerRadius = 20
        
        jumaVIew.layer.cornerRadius = 15
    }
    
    
    
    // Mark : Action
    
    
    // Mark : Bomdod Nomoz Actions
    
    
    @IBAction func firstBomdodNamaz(_ sender: Any) {
       
    }
    
    
    @IBAction func secondBomdodNamaz(_ sender: Any) {
       let secondBomdodNamaz =  secondBomdodNamaziViewController(nibName: "secondBomdodNamaziViewController", bundle: nil)
        
      self.navigationController?.pushViewController(secondBomdodNamaz, animated: true)
    }
    
    
}
