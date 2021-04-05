//
//  secondBomdodNamaziViewController.swift
//  NamazBook
//
//  Created by shahzod on 4/5/21.
//  Copyright © 2021 shahzod. All rights reserved.
//
import AVFoundation
import UIKit

class secondBomdodNamaziViewController: UIViewController {
    
    // Mark : - First Azan Button
    
    @IBOutlet weak var AzonPlay: UIButton!
    var player : AVAudioPlayer?
    
    // Mark : - Second Takbir Button
    
    @IBOutlet weak var TakbirPlay: UIButton!
    var playerTakbir : AVAudioPlayer?
    
    // Mark : - third  qiyom Button
    
    @IBOutlet weak var QiyomPlay: UIButton!
    var playerQiyom  : AVAudioPlayer?
    
    
    //Mark : Fourth ruku Button
    
    @IBOutlet weak var RukuPlay: UIButton!
    var playerRuku : AVAudioPlayer?
    
    //Mark : Fifth rukudan turish Button
    
    @IBOutlet weak var RukudanTurishButton: UIButton!
    var playerRukudanTurish : AVAudioPlayer?
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // Mark : AzonPlayButton Action
    
    
    // Mark : Azon Action
    
    @IBAction func AzonButtonPlay(_ sender: Any) {
        if let player  = player, player.isPlaying {
            
            player.stop()
            
        }
        else{
            let urlString = Bundle.main.path(forResource: "azon", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true , options: .notifyOthersOnDeactivation)
                
                
                guard  let urlString = urlString else {
                    return
                }
                
            player = try  AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player  else {
                    return
                }
                
                player.play()
            }
            catch {
                print("Something went wrong")
            }
        }
    }
    
    // Mark : Niyat Action
    
    @IBAction func NiyatActionButtonPlayer(_ sender: Any) {
        
        if let takbirButton  = playerTakbir , takbirButton.isPlaying {
                   
                   takbirButton.stop()
                   
               }
               else{
                   let urlString = Bundle.main.path(forResource: "Namoz", ofType: "mp3")
                   
                   do {
                       try AVAudioSession.sharedInstance().setMode(.default)
                       try AVAudioSession.sharedInstance().setActive(true , options: .notifyOthersOnDeactivation)
                       
                       
                       guard  let urlString = urlString else {
                           return
                       }
                       
                   playerTakbir = try  AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                       
                       guard let takbirButton = playerTakbir  else {
                           return
                       }
                    
                      takbirButton.play()
                       
                   }
                   catch {
                       print("Something went wrong")
                   }
               }
    }
    
    
    // Mark : - Qiyom Action
    
    
    
    @IBAction func QiyomActionButton(_ sender: Any) {
        if let qiyomButon  = playerQiyom , qiyomButon.isPlaying {
                          
                          qiyomButon.stop()
                          
                      }
                      else{
                          let urlString = Bundle.main.path(forResource: "qiyom", ofType: "mp3")
                          
                          do {
                              try AVAudioSession.sharedInstance().setMode(.default)
                              try AVAudioSession.sharedInstance().setActive(true , options: .notifyOthersOnDeactivation)
                              
                              
                              guard  let urlString = urlString else {
                                  return
                              }
                              
                          playerQiyom = try  AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                              
                              guard let qiyomButton = playerQiyom  else {
                                  return
                              }
                           
                               qiyomButton.play()
                              
                          }
                          catch {
                              print("Something went wrong")
                          }
                      }
    }
    
    // Mark : - Ruku Action
    
    
    
    @IBAction func RukuActionButton(_ sender: Any) {
        if let rukuButon  = playerRuku , rukuButon.isPlaying {
                              
                              rukuButon.stop()
                              
                          }
                          else{
                              let urlString = Bundle.main.path(forResource: "ruku", ofType: "mp3")
                              
                              do {
                                  try AVAudioSession.sharedInstance().setMode(.default)
                                  try AVAudioSession.sharedInstance().setActive(true , options: .notifyOthersOnDeactivation)
                                  
                                  
                                  guard  let urlString = urlString else {
                                      return
                                  }
                                  
                              playerRuku = try  AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                                  
                                  guard let rukuButon =  playerRuku else {
                                      return
                                  }
                               
                                   rukuButon.play()
                                  
                              }
                              catch {
                                  print("Something went wrong")
                              }
                          }
        }
        
    
    // Mark : - Rukudan turish Action
    
    @IBAction func RukudanTurishActionButton(_ sender: Any) {
    
    if let rukudanTurishButon  = playerRukudanTurish , rukudanTurishButon.isPlaying {
        
        rukudanTurishButon.stop()
        
    }
    else{
        let urlString = Bundle.main.path(forResource: "rukudanTurish", ofType: "mp3")
        
        do {
            try AVAudioSession.sharedInstance().setMode(.default)
            try AVAudioSession.sharedInstance().setActive(true , options: .notifyOthersOnDeactivation)
            
            
            guard  let urlString = urlString else {
                return
            }
            
        playerRukudanTurish = try  AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
            
            guard let rukudanTurishButton =  playerRukudanTurish else {
                return
            }
         
             rukudanTurishButton.play()
            
        }
        catch {
            print("Something went wrong")
        }
      }
    }
    
}
