//
//  LoginResponse.swift
//  EWallet
//
//  Created by Ihsanulisra Maulana on 27/06/23.
//

import Foundation

struct LoginResponse: Decodable {
    let data: LoginResponseData
}

struct LoginResponseData: Decodable {
    let accessToken: String
    let refreshToken: String
}
