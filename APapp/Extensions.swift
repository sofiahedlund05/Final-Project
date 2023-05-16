//
//  SwiftUIView.swift
//  APapp
//
//  Created by Sofia Hedlund23 on 5/4/23.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color(red: 0.592, green: 0.714, blue: 0.881)
    var body: some View {
            Text(text)
                .padding()
                .padding(.horizontal)
                .background(background)
                .cornerRadius(100)
                .shadow(radius: 10)
                .foregroundColor(.black)
                .shadow(radius: 1)
        }
    }

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Liked Songs List")
    }
}
