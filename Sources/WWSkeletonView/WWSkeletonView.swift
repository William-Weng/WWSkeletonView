//
//  WWSkeletonView.swift
//  WWSkeletonView
//
//  Created by William.Weng on 2024/7/11.
//

import UIKit

// MARK: - WWSkeletonView
@IBDesignable
open class WWSkeletonView: UIView {
    
    @IBInspectable var mainColor: UIColor = .gray
    
    private var gradientLayer: CAGradientLayer?
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        initSetting()
    }
}

// MARK: - 公開函式
public extension WWSkeletonView {
    
    /// [參數設定](https://codepen.io/tag/skeleton)
    /// - Parameters:
    ///   - mainColor: 主色系
    func settings(mainColor: UIColor) {
        self.mainColor = mainColor
    }
    
    /// [動畫開始](https://youtu.be/Qq3Evspeea8)
    /// - Parameter duration: CFTimeInterval
    func start(duration: CFTimeInterval = 1.0) {
        
        let animation = basicAnimation(duration: duration, bounds: bounds)
        let gradientLayer = gradientLayer(mainColor: mainColor)
        
        gradientLayer.add(animation, forKey: "shimmer")
        
        stop()
        self.gradientLayer = gradientLayer
        
        layer.addSublayer(gradientLayer)
    }
    
    /// [動畫停止](https://github.com/Juanpe/SkeletonView)
    func stop() {
        gradientLayer?.removeAllAnimations()
        gradientLayer?.removeFromSuperlayer()
    }
}

// MARK: - 小工具
private extension WWSkeletonView {
    
    /// [初始化設定](https://bootcamp.uxdesign.cc/skeleton-vs-loading-screens-enhancing-user-experience-during-content-loading-and-data-fetching-3a07b1bdbc9c)
    func initSetting() {
        backgroundColor = mainColor.withAlphaComponent(0.5)
        layer.masksToBounds = true
    }
    
    /// 產生動畫
    /// - Parameters:
    ///   - duration: CFTimeInterval
    ///   - bounds: CGRect
    /// - Returns: CABasicAnimation
    func basicAnimation(duration: CFTimeInterval, bounds: CGRect) -> CABasicAnimation {
        
        let animation = CAAnimation._basicAnimation(keyPath: "transform.translation.x", fromValue: -bounds.width, toValue: bounds.width, duration: duration, repeatCount: .infinity)
        return animation
    }
    
    /// 漸層色產生器
    /// - Parameters:
    ///   - mainColor: UIColor
    /// - Returns: CAGradientLayer
    func gradientLayer(mainColor: UIColor) -> CAGradientLayer {
        
        let colors: [UIColor] = [
            mainColor.withAlphaComponent(0.5),
            mainColor.withAlphaComponent(0.3),
            mainColor.withAlphaComponent(0.1),
            mainColor.withAlphaComponent(0.3),
            mainColor.withAlphaComponent(0.5)
        ]
        
        let startPoint = CGPoint(x: 0, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 0.5)
        let layer = CAGradientLayer._build(with: bounds, colors: colors, startPoint: startPoint, endPoint: endPoint, cornerRadius: 0)
        
        return layer
    }
}
