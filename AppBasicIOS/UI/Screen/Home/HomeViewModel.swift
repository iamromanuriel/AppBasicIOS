//
//  HomeViewModel.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 03/01/25.
//

import Foundation

class HomeViewModel : ObservableObject{     //Es un protocolo que deteca cambios y actualiza la interfaz.
    @Published var users: [User] = []
    
    init(){
        users.append( User(id: 1, name: "Roman", email:"roman@gmail.com"))	
        users.append( User(id: 2, name: "Uriel", email:"uriel@gmail.com"))
        users.append( User(id: 3, name: "Francisco", email:"francisco@gmail.com"))
    }
}
