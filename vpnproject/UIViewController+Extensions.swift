import UIKit

extension UIViewController {
    func showLoader() {
        let loader = UIActivityIndicatorView(style: .large)
        loader.center = self.view.center
        loader.startAnimating()
        loader.tag = 999 
        view.addSubview(loader)
    }
    
    func hideLoader() {
        if let loader = self.view.viewWithTag(999) as? UIActivityIndicatorView {
            loader.stopAnimating()
            loader.removeFromSuperview()
        }
    }
}
