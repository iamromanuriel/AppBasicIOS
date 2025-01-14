//
//  HomeViewModel.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 03/01/25.
//

import Foundation

class HomeViewModel : ObservableObject{     //Es un protocolo que deteca cambios y actualiza la interfaz.
    let userRepository =  UserRepository()
    
    @Published var users: [User] = []
    
    
    init(){
        users = userRepository.getUsers()
    }
    
    func onClick(){
        print("This is name")
    }
    
    func newUser(){
        let newId = users.last?.id ?? 0
        users.append(User(id: newId + 1, name: "user \(newId)", email:"usernew\(newId)@gmail.com"))
        print("To create new user \(newId)")
    }

}
