//
//  ContentView.swift
//  Udemy-Persons-App
//
//  Created by Hakan Gül on 01/07/2023.
//

import SwiftUI

struct Anasayfa: View {
    @State var kisiler = [Kisi]()
    @State private  var  searchText = ""
    
    func onDelete(at offets: IndexSet) {
        let kisi = kisiler[offets.first!]
        kisiler.remove(at: offets.first!)
        print("Kişi Sil : \(kisi.id!) - \(kisi.adi!)")
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(kisiler) {kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)) {
                        KisilerRow(kisi: kisi)
                    }
                }.onDelete(perform: onDelete)
            }
            
            .navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: KisiKayitSayfa()) {
                            Image(systemName: "plus")
                        }
                    }
                }
                .onAppear() {
                    var list = [Kisi]()
                    list.append(Kisi(id: 1, adi: "Hakan", telefon: "5317328099"))
                    list.append(Kisi(id: 2, adi: "Ahmet", telefon: "4565435345"))
                    list.append(Kisi(id: 3, adi: "Mehmet", telefon: "3654764523"))
                    list.append(Kisi(id: 4, adi: "Ali", telefon: "765475467"))
                    list.append(Kisi(id: 5, adi: "Veli", telefon: "23454657567"))
                    list.append(Kisi(id: 6, adi: "Ayşe", telefon: "56754735234"))
                    
                    kisiler = list
                }
        }.searchable(text: $searchText , placement: .navigationBarDrawer(displayMode: .always),
        prompt: "Kişi Ara"
        ).onChange(of: searchText) { res in
            print("Arama Sonucu :\(res)")
        }
    }
}

struct KisilerRow : View {
    var kisi = Kisi()
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(kisi.adi!).font(.system(size: 25))
            Text(kisi.telefon!).foregroundColor(.gray).font(.system(size: 20))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
