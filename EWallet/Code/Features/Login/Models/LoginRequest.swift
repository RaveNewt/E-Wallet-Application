//
//  LoginRequest.swift
//  EWallet
//
//  Created by Ihsanulisra Maulana on 27/06/23.
//

import Foundation

struct LoginRequest: Encodable {
    let username: String
    let password: String
}
