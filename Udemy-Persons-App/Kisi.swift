//
//  Kisi.swift
//  Udemy-Persons-App
//
//  Created by Hakan Gül on 01/07/2023.
//

import Foundation


class Kisi : Identifiable {
    var id:Int?
    var adi: String?
    var telefon: String?
    
    init(){
        
    }
    
    init(id:Int, adi:String, telefon:String){
        self.id = id
        self.adi = adi
        self.telefon = telefon
    }
    
    
}
