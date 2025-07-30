//
//  ContentView.swift
//  AnimalCrossing
//
//  Created by Benjamin Rojo on 30/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        Tarjeta()
        }
        .padding()
    }
}

struct Datos: Identifiable{
    let id = UUID()
    let fruta: String
    let image: String
    var meGusta: Bool
}

struct Tarjeta: View{
    @State var frutas : [Datos] = [
        Datos(fruta: "Melon", image: "melon", meGusta: true),
        Datos(fruta: "Sandia", image: "melon", meGusta: true),
        Datos(fruta: "Manzana", image: "melon", meGusta: true),
        Datos(fruta: "Papaya", image: "melon", meGusta: true)
    ]
    var body: some View{
        ScrollView{
            VStack{
                ForEach(frutas.indices, id:\.self){ index in
                    VStack{
                        Image(frutas[index].image)
                            .resizable()
                            .frame(height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        Text(frutas[index].fruta)
                            .font(.title2)
                        Button(action:{
                            frutas[index].meGusta.toggle()
                        }){
                            Image(systemName: frutas[index].meGusta ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                            .font(.title)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
