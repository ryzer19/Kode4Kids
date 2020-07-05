//
//  Post.swift
//  Kode4Kids
//
//  Created by Bibz on 05/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import Foundation


class Post{
    var id:String
    var author:String
    var text:String
    
    init(id:String, author:String, text:String) {
        self.id = id
        self.author = author
        self.text = text
    }
}
