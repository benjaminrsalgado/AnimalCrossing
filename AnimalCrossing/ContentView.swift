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

//DATOS
struct Datos: Identifiable{
    let id = UUID()
    let fruta: String
    let image: String
    var meGusta: Bool
}

struct Tarjeta: View{
    //LISTA DE DATOS
    
    @State var frutas : [Datos] = [
        Datos(fruta: "Melon", image: "melon", meGusta: false),
        Datos(fruta: "Sandia", image: "melon", meGusta: false),
        Datos(fruta: "Manzana", image: "melon", meGusta: false),
        Datos(fruta: "Papaya", image: "melon", meGusta: false),
        Datos(fruta: "Sandia", image: "melon", meGusta: false),
        Datos(fruta: "Manzana", image: "melon", meGusta: false),
        Datos(fruta: "Papaya", image: "melon", meGusta: false),
        Datos(fruta: "Sandia", image: "melon", meGusta: false),
        Datos(fruta: "Manzana", image: "melon", meGusta: false),
        Datos(fruta: "Papaya", image: "melon", meGusta: false)
    ]
    var body: some View{
        //SCROLLVIEW
        ScrollView{
            VStack{
                //FOR EACH
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
