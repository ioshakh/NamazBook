//
//  FirstButtonViewController.swift
//  NamazBook
//
//  Created by shahzod on 4/3/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class FirstButtonViewController: UIViewController  ,  UITableViewDataSource, UITableViewDelegate {
  
    
    
    
    @IBOutlet weak var tableViewLabel: UITableView!
    
    var items : Array<Post> = Array()
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
       
        
        items.append(Post(name: "  Niyat", text: " Tahorat olish uchun , iloji  bo'lsa , qiblaga yuzlanadi. Bismillahir  rohmanir rohiym deb , niyat qilinadi.", image: "ablution"))
        items.append(Post(name: "Qo'llarni yuvish", text: "Qo'llar bandigacha uch marta yuviladi.Barmog'ida uzugi bor kishi uni qimirlatib,ostiga suv yetkaziladi.Barmoqlarni bir-birining orasiga kirgiziladi.", image: "hand"))
        items.append(Post(name: "Og'iz chayish", text: "Tishlar misvok yoki yuvish pastasi bilan, yoki qo'l bilan ishqalab yuviladi.O'ng qo'lga suv olib,og'iz uch marta g'arg'ara qilib chayiladi", image: "drinkWater"))
        items.append(Post(name: "Burunni chayish", text: "O'ng qo'lga suv olib,burunga uch marta tortib qo'l bilan qoqib tozolanadi", image: "noseDrink" ))
        items.append(Post(name: "Yuzni yuvish", text: "Yuz yuviladi - uch marta.Yuznig chegarasi uzunasiga soch chiqqan joydan jag'ning ostigacha,kengligi esa ikki quloq yumshog'ining orasigacha bo'lgan o'rindir", image: "facewater"))
        items.append(Post(name: "Qo'llarni tirsakkacha yuvish", text: "Avval o'ng qo'l,so'ng chap qo'l tirsak bilan qo'shib uch marta yuviladi", image: "handWater"))
        items.append(Post(name: "Mas'h tortish", text: "Hovuchga suv olib to'kib tashlab , qo'li bilan boshning hamma qismiga bir marta mas'h tortiladi.Ko'rsatkich barmoq bilan quloq ichiga mas'h tortib,bosh barmoq bilan esa quloq tashqarisiga mas'h tortiladi", image: "headwater"))
        items.append(Post(name: "Oyoqlarni yuvish", text: "Chap qo'l bilan o'ng oyoqni oshiq(to'piq) bilan qo'shib va barmoqlar orasini(ishqalab) uch marta yuviladi. Chap oyoq ham shu farzda uch marta yuviladi", image: "leg"))
        
    }
    
    
    
    func initViews() {
          tableViewLabel.dataSource = self
          tableViewLabel.delegate = self
    }
    
    
    //Mark : - tableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let item = items[indexPath.row]
         
         let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self , options: nil)?.first as! TableViewCell
         
         cell.NameLabel.text = item.name
         
         cell.TextLabel.text = item.text
         
         cell.NamazImageLabel.image = UIImage(named: item.image!)
         
         return cell
                          
      }
    
    
      func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 595
       }
    
}
