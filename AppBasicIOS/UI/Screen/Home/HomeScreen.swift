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
    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()
    	
    var body: some View {
        List(viewModel.users) { user in
            ListItem(user: user)
        }
    }
}

struct ListItem : View {
    let user: User
    let action: () -> Void = { print("Hello") }
    var body: some View {
        VStack {
            Text("I am \(user.name)").font(.headline)
            Text("Email: \(user.email)")
        }
    }
}

#Preview {
    HomeScreen()	
}
