//
//  google.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/7/22.
//

import Foundation
import FirebaseCore
import FirebaseAuth
import GoogleSignIn

class LoginService {

    func getConfigureWithGoogle() -> GIDConfiguration? {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return nil }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        return config
    }

    func toSaveOnFireBase(credential: AuthCredential) {
        Auth.auth().signIn(with: credential)
    }
}
