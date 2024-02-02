import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Вызывается, когда сцена переходит из неактивного состояния в активное
        // Можете использовать это для обновления интерфейса или проверки статуса VPN
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Вызывается, когда сцена переходит из активного состояния в неактивное
        // Можно использовать для паузы активных задач или для сокращения использования ресурсов
    }

    // Другие методы SceneDelegate...
}

