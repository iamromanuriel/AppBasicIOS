//
//  User.swift
//  AppBasicIOS
//
//  Created by Roman Uriel on 03/01/25.
//

struct User: Identifiable, Codable {
    let id: Int
    let name: String
    let email: String
    var isEnabled: Bool = false
}
