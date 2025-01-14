//
//  UserRepository.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 10/01/25.
//

class UserRepository {
    var users: [User] = []
    
    func getUsers() -> [User] {
        users.append( User(id: 1, name: "Roman", email:"roman@gmail.com"))
        users.append( User(id: 2, name: "Uriel", email:"uriel@gmail.com"))
        users.append( User(id: 3, name: "Francisco", email:"francisco@gmail.com"))
        return users
    }
    
}
