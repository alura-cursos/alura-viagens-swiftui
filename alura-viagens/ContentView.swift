//
//  ContentView.swift
//  alura-viagens
//
//  Created by Ândriu Felipe Coelho on 03/02/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { view in
            
            // MARK: - VStack Principal
            
            VStack {
                
                // MARK: - VStack Header
                
                VStack {
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.all)
                
                List {
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
