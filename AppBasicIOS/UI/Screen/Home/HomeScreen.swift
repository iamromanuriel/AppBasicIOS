//
//  HomeScreen.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 03/01/25.
//
import SwiftUI

let user = ["name": "Roman", "LastName": "Uriel", "age": 24] as [String: Any]

var colors = ["Red","Blue","Yellow","Green","Grey","Purple","Orange","Brown","Black","White"]

struct HomeScreen: View {
    var body: some View {
        List(colors, id: \.self) {color in
            ListItem(color: color)
        }
    }
}

struct ListItem : View {
    let color: String
    var body: some View {
        VStack {
            Text("I am").font(.headline)
            Text(color)
        }
    }
}

#Preview {
    HomeScreen()	
}
