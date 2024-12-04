//
//  AuthView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-22.
//

import SwiftUI

struct AuthView: View {
    @StateObject var viewModel: AuthView.ViewModel = .init()
    
    var body: some View {
        VStack(spacing: 20){
            TextField("Username", text: $viewModel.username)
            TextField("Password", text: $viewModel.password)
            TextField("Email", text: $viewModel.email)
            Button("Sign Up", action: {})
            TextField("Confirmation", text: $viewModel.confirmationCode)
            Button("Confirmation", action: { })
            Button("Sign In", action: {})
        }
        padding(.horizontal, 20)
    }
}
extension AuthView{
    class ViewModel: ObservableObject{
        var username: String = ""
        var password: String = ""
        var email: String = ""
        var confirmationCode: String = ""
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
