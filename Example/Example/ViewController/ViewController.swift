//
//  ViewController.swift
//  Example
//
//  Created by William.Weng on 2024/1/1.
//

import UIKit
import WWSkeletonView

// MARK: - ViewController
final class ViewController: UIViewController {

    @IBOutlet weak var mainSkeletonView: WWSkeletonView!
    @IBOutlet var labelSkeletonViews: [WWSkeletonView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func start(_ sender: UIBarButtonItem) {
        mainSkeletonView.start(duration: 2.0)
        labelSkeletonViews.forEach { $0.start() }
    }
}
