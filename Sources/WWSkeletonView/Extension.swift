//
//  Extension.swift
//  WWSkeletonView
//
//  Created by William.Weng on 2024/7/11.
//

import UIKit

// MARK: - CAGradientLayer (static function)
extension CAGradientLayer {
    
    /// [產生漸層Layer](https://medium.com/彼得潘的-swift-ios-app-開發問題解答集/利用-cagradientlayer-製作漸層-e86cee69f3a0)
    /// - Parameters:
    ///   - frame: [CGRect](https://www.appcoda.com.tw/cagradientlayer/)
    ///   - colors: [UIColor]
    ///   - startPoint: [漸層方向起始點 => CGPoint(x: 0.0, y: 0.0)](https://medium.com/彼得潘的-swift-ios-app-開發問題解答集/利用-cagradientlayer-製作漸層背景-a10c7cfd7f75)
    ///   - endPoint: 漸層方向結束點 => CGPoint(x: 1.0, y: 1.0)
    /// - Returns: CAGradientLayer
    static func _build(with frame: CGRect, colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint, cornerRadius: CGFloat) -> CAGradientLayer {
        
        let layer = CAGradientLayer()
        
        layer.colors = colors.map { $0.cgColor }
        layer.frame = frame
        layer.startPoint = startPoint
        layer.endPoint = endPoint
        layer.cornerRadius = cornerRadius
        
        return layer
    }
}

// MARK: - CAAnimation (static function)
extension CAAnimation {
    
    /// [Layer動畫產生器 (CABasicAnimation)](https://jjeremy-xue.medium.com/swift-說說-cabasicanimation-9be31ee3eae0)
    /// - Parameters:
    ///   - keyPath: [要產生的動畫key值](https://blog.csdn.net/iosevanhuang/article/details/14488239)
    ///   - delegate: [CAAnimationDelegate?](https://juejin.cn/post/6936070813648945165)
    ///   - fromValue: 開始的值
    ///   - toValue: 結束的值
    ///   - duration: 動畫時間
    ///   - repeatCount: 播放次數
    ///   - fillMode: [CAMediaTimingFillMode](https://juejin.cn/post/6991371790245183496)
    ///   - isRemovedOnCompletion: Bool
    /// - Returns: Constant.CAAnimationInformation
    static func _basicAnimation(keyPath: String, delegate: CAAnimationDelegate? = nil, fromValue: Any?, toValue: Any?, duration: CFTimeInterval = 5.0, repeatCount: Float = 1.0, fillMode: CAMediaTimingFillMode = .forwards, isRemovedOnCompletion: Bool = false) -> CABasicAnimation {
        
        let animation = CABasicAnimation(keyPath: keyPath)
        
        animation.fromValue = fromValue
        animation.toValue = toValue
        animation.duration = duration
        animation.repeatCount = repeatCount
        animation.fillMode = fillMode
        animation.isRemovedOnCompletion = isRemovedOnCompletion
        animation.delegate = delegate
        
        return animation
    }
}
