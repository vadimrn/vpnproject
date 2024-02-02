import UIKit
import AuthenticationServices

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSignInWithAppleButton()
    }
    
    private func setupSignInWithAppleButton() {
        let signInButton = ASAuthorizationAppleIDButton()
        signInButton.center = view.center
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(handleSignInWithAppleButtonPress), for: .touchUpInside)
    }
    
    @objc private func handleSignInWithAppleButtonPress() {
        // Здесь должна быть логика для начала аутентификации через Apple ID
    }
}
