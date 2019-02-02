import Foundation
import UIKit

public class AutoBlurScreen {
    private var newBlur: UIImageView?

    public var blurStyle: UIBlurEffect.Style = .light
    public var isAutoBlur: Bool = true

    public init() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(remoteBlur),
                                               name: UIApplication.didBecomeActiveNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(addBlur),
                                               name: UIApplication.willResignActiveNotification,
                                               object: nil)
    }

    @objc private func addBlur() {
        if isAutoBlur {
            createBlurEffect()
        }
    }

    @objc private func remoteBlur() {
        if isAutoBlur {
            removeBlurEffect()
        }
    }

    public func createBlurEffect() {
        let size = UIScreen.main.bounds
        newBlur = UIImageView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        guard let newBlur = newBlur else { return }
        let blurEffect = UIBlurEffect(style: self.blurStyle)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = UIScreen.main.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        newBlur.addSubview(blurEffectView)
        if let top = topViewController() {
            top.view.addSubview(newBlur)
        }
    }

    public func removeBlurEffect() {
        if let blur = newBlur {
            let blurredEffectViews = blur.subviews.filter{ $0 is UIVisualEffectView }
            blurredEffectViews.forEach { blurView in
                blurView.removeFromSuperview()
            }
            newBlur = nil
        }
    }

    private func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(presented)
        }
        return base
    }
}



