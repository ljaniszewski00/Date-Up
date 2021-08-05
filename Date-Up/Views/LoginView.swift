//
//  LoginView.swift
//  Date-Up
//
//  Created by Łukasz Janiszewski on 02/08/2021.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    private let textFieldColor = Color("TextFieldsColor")
    
    var body: some View {
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            
            VStack {
                TextField("e-mail", text: $email)
                    .padding()
                    .background(textFieldColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, screenHeight * 0.02)
                
                SecureField("password", text: $password)
                    .padding()
                    .background(textFieldColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, screenHeight * 0.02)
                
                Button(action: {
                }, label: {
                    Text("Login")
                        .font(.system(size: screenHeight * 0.026))
                                    .foregroundColor(.white)
                                    .padding()
                        .frame(minWidth: screenWidth * 0.4, maxHeight: screenHeight * 0.08)
                                    .background(Color.green)
                                    .cornerRadius(15.0)
                })
            }
            .padding(.horizontal, screenWidth * 0.05)
            .frame(width: screenWidth)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
