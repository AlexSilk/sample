import Foundation

struct LocalStore {

    fileprivate static let acceptEmailNotificationsKey = "acceptEmailNotifications"
    fileprivate static let acceptPushNotificationsKey = "acceptPushNotifications"
    fileprivate static let lastTextViewYPositionKey = "lastTextViewYPosition"
    
    static let userDefaults = UserDefaults.standard
    
    static var acceptEmailNotifications: Bool {
        get {
            return userDefaults.bool(forKey: acceptEmailNotificationsKey)
        }
        set {
            userDefaults.set(newValue, forKey: acceptEmailNotificationsKey)
            userDefaults.synchronize()
        }
    }
    
    static var acceptPushNotifications: Bool {
        get {
            return userDefaults.bool(forKey: acceptPushNotificationsKey)
        } set {
            userDefaults.set(newValue, forKey: acceptPushNotificationsKey)
            userDefaults.synchronize()
        }
    }
    
    static var lastTextViewYPosition: Float {
        get {
            return userDefaults.float(forKey: lastTextViewYPositionKey)
        } set {
            userDefaults.set(newValue, forKey: lastTextViewYPositionKey)
            userDefaults.synchronize()
        }
    }
}
