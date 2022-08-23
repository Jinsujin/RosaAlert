import UIKit

open class RosaAlert: UIView {
    private var titleText: String?
    private var completion: (() -> Void)?
    
    public convenience init(title: String, completion: (() -> Void)?) {
        self.init(frame: CGRect.zero)
        
        self.titleText = title
        self.completion = completion
    }
    
    public func show(in target: UIViewController) {
        let alert = UIAlertController(title: self.titleText, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak self] _ in
            self?.completion?()
        }))
        target.present(alert, animated: true, completion: nil)
    }
}
