//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Ândriu Felipe Coelho on 12/02/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct HeaderView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        
        GeometryReader { view in
            
            VStack {
                
                // MARK: - VStack Header
                
                VStack {
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, self.horizontalSizeClass == .compact ? 50 : 90)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                .background(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -25 : -37.5)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {

        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))

            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 310))
        }
    }
}
