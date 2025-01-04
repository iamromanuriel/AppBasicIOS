//
//  ContentView.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 31/12/24.
//

import SwiftUI

var names = ["Roman", "Uriel", "Juan", "Pedro", "María", "Helen", "Jhon"]

struct ContentView: View {
    var body: some View {
        VStack {
            List (names, id: \.self){ name in
                Text(name)
            }
            
            Menu("Menu") {
                /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
            }
            Divider()
            Text("Element")
                .font(.largeTitle)
                .foregroundColor(.gray)
                .background(.orange)
                .onTapGesture {
                    print("gesto de elemento")
                }
                .padding()
            
            /*Rectangle()
                .fill(Color.red)
                .cornerRadius(20)
             */
        
            Image(systemName:"globe")
                .resizable()
                .frame(width: 50, height: 50)
                
            
            HStack {
                
                Button("Suscriber"){
                    print("Yours suscriber!")
                }
                Button("Notification"){
                    print("Notifications anabled!")
                }
                Button("Remove"){
                    print("To remove suscriber!")
                }
            }
            
        }
        .padding()
    }
}



#Preview {
    ContentView()
}

