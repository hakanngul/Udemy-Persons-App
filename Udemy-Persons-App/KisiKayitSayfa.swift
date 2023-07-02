//
//  KisiKayitSayfa.swift
//  Udemy-Persons-App
//
//  Created by Hakan Gül on 01/07/2023.
//

import SwiftUI

struct KisiKayitSayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfTel = ""
    let width = UIScreen.main.bounds.width
    
    func kisiKayit(adi: String, tel: String) {
        tfKisiAd = adi
        tfTel = tel
    }
    
    
    var body: some View {
        VStack(spacing: 100) {
            
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.gray, width: 1)
                .padding()
            TextField("Telefon", text: $tfTel)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.gray, width: 1)
                .padding()
            
            Button(action: {
                kisiKayit(adi: tfKisiAd, tel: tfTel)
            }) {
                Text("Kaydet")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: width * 0.4, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15)
            }
        
        }.navigationTitle("Kişi Detay")
    }
}

struct KisiKayitSayfa_Previews: PreviewProvider {
    static var previews: some View {
        KisiKayitSayfa()
    }
}
