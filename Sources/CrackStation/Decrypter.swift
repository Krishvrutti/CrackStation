//
//  Decrypter.swift
//  
//
//  Created by krish vrutti  on 10/28/22.
//

import Foundation

//
// SI Lab, 2022
//

public protocol Decrypter {
    init()

    
    func decrypt(shaHash: String) -> String?
}
