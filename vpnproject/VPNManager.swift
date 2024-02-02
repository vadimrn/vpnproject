import Foundation
import NetworkExtension

final class VPNManager: NSObject {
    static let shared = VPNManager() // Синглтон для доступа к менеджеру VPN
    
    private var manager: NEVPNManager {
        return NEVPNManager.shared()
    }
    
    override private init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(VPNStatusDidChange), name: NSNotification.Name.NEVPNStatusDidChange, object: nil)
        loadProfile()
    }
    
    // Загрузка конфигурации VPN из предпочтений
    private func loadProfile() {
        manager.loadFromPreferences { error in
            if let error = error {
                print("Ошибка загрузки настроек VPN: \(error)")
            }
        }
    }
    
    // Отслеживание изменения статуса VPN
    @objc private func VPNStatusDidChange(notification: Notification) {
        print("Статус VPN изменился: \(manager.connection.status)")
    }
    
    // Подключение к VPN
    public func connect(using configuration: NEVPNProtocol, completionHandler: @escaping (Error?) -> Void) {
        do {
            manager.protocolConfiguration = configuration
            try manager.connection.startVPNTunnel()
            completionHandler(nil)
        } catch let error {
            completionHandler(error)
        }
    }
    
    // Отключение от VPN
    public func disconnect() {
        manager.connection.stopVPNTunnel()
    }
    
    // Возвращает текущий статус соединения
    public var status: NEVPNStatus {
        return manager.connection.status
    }
}
