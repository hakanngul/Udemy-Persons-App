//
//  KisiDetaySayfa.swift
//  Udemy-Persons-App
//
//  Created by Hakan Gül on 01/07/2023.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfTel = ""
    let width = UIScreen.main.bounds.width
    
    var kisi = Kisi()
    
    func kisiGuncelle(id: String,adi: String, tel: String) {
        //print all parameters
        print("Adı : \(adi) - Tel : \(tel)")
        
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
                kisiGuncelle(id:"" , adi: tfKisiAd, tel: tfTel)
            }) {
                Text("Güncelle")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: width * 0.4, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15)
            }
            
        }.navigationTitle("Kişi Detay")
            .onAppear() {
                tfKisiAd = kisi.adi!
                tfTel = kisi.telefon!
            }
    }
}

struct KisiDetaySayfa_Previews: PreviewProvider {
    static var previews: some View {
        KisiDetaySayfa()
    }
}
