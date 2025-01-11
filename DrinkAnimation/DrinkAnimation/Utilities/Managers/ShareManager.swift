//
//  ShareManager.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import UIKit

class ShareManager {
    static let shared = ShareManager()
    
    private init() {}
    
    func shareScore(_ score: Int, from viewController: UIViewController) {
        let text = "I just scored \(score) points in Drink Animation! 🎉"
        let activityVC = UIActivityViewController(activityItems: [text], applicationActivities: nil)
        viewController.present(activityVC, animated: true)
    }
}
