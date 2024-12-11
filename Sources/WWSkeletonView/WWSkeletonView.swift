//
//  WWSkeletonView.swift
//  WWSkeletonView
//
//  Created by William.Weng on 2024/7/11.
//

import UIKit
import WWBarberPoleView

// MARK: - WWSkeletonView
open class WWSkeletonView: WWBarberPoleView {}

// MARK: - 公開函式
public extension WWSkeletonView {
    
    /// [動畫開始](https://youtu.be/Qq3Evspeea8)
    /// - Parameters:
    ///   - duration: [CFTimeInterval](https://codepen.io/tag/skeleton)
    ///   - width: 寬度
    ///   - middleColor: 中間的漸層色
    func run(duration: CFTimeInterval = 1.0, middleColor: UIColor = .lightText, width: CGFloat = 128, spacing: CGFloat = 128) {
        
        let startPoint = CGPoint(x: 0.0, y: 0.5)
        let endPoint = CGPoint(x: 1.0, y: 0.5)
        let colors: [UIColor] = [middleColor.withAlphaComponent(0.1), middleColor.withAlphaComponent(0.5), middleColor.withAlphaComponent(0.1)]
        
        start(colorType: .gradient(startPoint, endPoint), rotationAngle: 0, duration: duration, width: width, spacing: spacing, colors: colors)
    }
    
    /// 動畫暫停
    func pause() {
        super.stop()
    }
}

