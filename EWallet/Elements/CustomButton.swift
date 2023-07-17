//
//  CustomButton.swift
//  EWallet
//
//  Created by Ihsanulisra Maulana on 27/06/23.
//

import SwiftUI

struct CustomButton: View {
var textButton: String
var clicked: (() -> Void)
    var body: some View {
            Button(action: clicked){
                HStack(alignment: .center, spacing: 10){
                    Text(textButton)
                        .font(
                          Font.custom("Helvetica", size: 16)
                            .weight(.bold)
                        )
                        .foregroundColor(.white)
                }.padding(.horizontal, 12)
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity,
                           maxHeight: 60,alignment: .center)
                    .background(
                      EllipticalGradient(
                        stops: [
                          Gradient.Stop(color: Color(red: 0, green: 0.11, blue: 0.24), location: 0.00),
                          Gradient.Stop(color: Color(red: 0.19, green: 0.15, blue: 0.35), location: 1.00),
                        ],
                        center: UnitPoint(x: 0.5, y: 0.21)
                      )
                    )
                    .cornerRadius(10)
            }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(textButton: "Login"){
            print("clicked")
        }
    }
}
