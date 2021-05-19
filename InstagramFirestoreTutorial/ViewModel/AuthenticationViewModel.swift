//
//  AuthenticationViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/8/21.
//

import UIKit

protocol FormViewModel {
    func updateForm()
}

protocol AuthenticationViewModel {
    var formIsValid: Bool { get }
    var buttonBackgroundColor: UIColor { get }
    var buttonTitleColor: UIColor { get }
}

struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ?  #colorLiteral(red: 0.4316559561, green: 0.2707215124, blue: 0.7584995384, alpha: 1) : #colorLiteral(red: 0.7592887465, green: 0.4095237159, blue: 1, alpha: 1).withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor {
        formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
}

struct RegistrationViewModel: AuthenticationViewModel {

    var email: String?
    var password: String?
    var fullName: String?
    var username: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false && fullName?.isEmpty == false && username?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ?  #colorLiteral(red: 0.4316559561, green: 0.2707215124, blue: 0.7584995384, alpha: 1) : #colorLiteral(red: 0.7592887465, green: 0.4095237159, blue: 1, alpha: 1).withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor {
        formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
}

struct ResetPasswordViewModel: AuthenticationViewModel {
    
    var email: String?
    
    var formIsValid: Bool { return email?.isEmpty == false }
    
    var buttonBackgroundColor: UIColor { formIsValid ?  #colorLiteral(red: 0.4316559561, green: 0.2707215124, blue: 0.7584995384, alpha: 1) : #colorLiteral(red: 0.7592887465, green: 0.4095237159, blue: 1, alpha: 1).withAlphaComponent(0.5) }
    
    var buttonTitleColor: UIColor {  return formIsValid ? .white : UIColor(white: 1, alpha: 0.67) }
    
}
