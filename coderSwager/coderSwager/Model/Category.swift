//
//  File.swift
//  coderSwager
//
//  Created by Patrik Kemeny on 20/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title: String
    private(set) public var imageName: String // bad practice to keep public
    //private for setting and public for retrieving
    
    init(name: String, imageName: String){ //same name but differenet variables
        self.title = name
        self.imageName = imageName
    }
    
}
