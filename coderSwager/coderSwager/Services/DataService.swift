//
//  DataService.swift
//  coderSwager
//
//  Created by Patrik Kemeny on 20/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import Foundation


class DataService{
    static let instance = DataService() // static mean we can have just one copy in the memory
    private let categories = [
        Category(name: "SHIRTS", imageName: "shirts.png"),
        Category(name: "HOODIES", imageName: "hoodies.png"),
        Category(name: "HATS", imageName: "hats.png"),
        Category(name: "DIGITAL", imageName: "digital.png")]
    func getCategories() -> [Category] {
        return categories
    }
}
