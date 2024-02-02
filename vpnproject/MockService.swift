import Foundation

class MockService {
    static func fetchServers(completion: @escaping ([String]) -> Void) {
        // Имитация асинхронного вызова API
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(["Server 1", "Server 2", "Server 3"])
        }
    }
    
    static func fetchSubscriptionStatus(completion: @escaping (Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion(true) // Имитация наличия подписки
        }
    }
}
