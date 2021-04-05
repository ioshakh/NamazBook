//
//  Post.swift
//  NamazBook
//
//  Created by shahzod on 4/4/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import Foundation


class Post {
    var name : String? = ""
    var text : String? = ""
    var image : String? = ""
    
    
    init(name:String , text:String , image:String) {
        self.name = name
        self.text = text
        self.image = image
    }
}
