import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Инициализация VPNManager при запуске приложения
        let _ = VPNManager.shared
        
        return true
    }
    
    // Другие методы AppDelegate...
}
