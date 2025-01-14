//
//  HomeScreen.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 03/01/25.
//
import SwiftUI


struct HomeScreen: View {
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    	
    var body: some View {
        List(viewModel.users) { user in
            ListItem(user: user, action: {
                viewModel.onClick()
            })
        }
        MenuAddUser(newUser: {
            viewModel.newUser()
        })
    }
}

struct ListItem : View {
    let user: User
    let action: () -> Void
    var body: some View {
        VStack {
            Text("I am \(user.name)").font(.headline)
            Text("Email: \(user.email)")
        }
        .onTapGesture {
            action()
        }
    }
}

struct MenuAddUser: View{
    let newUser: () -> Void
    var body: some View {
        HStack {
            Image(systemName: "plus")
            Button("Add User") {
                newUser()
            }
        }
    }
}

#Preview {
    HomeScreen()	
}
