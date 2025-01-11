//
//  SoundManager.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import AVFoundation

class SoundManager {
    static let shared = SoundManager()
    private var audioPlayers: [String: AVAudioPlayer] = [:]
    
    private init() {
        setupAudio()
    }
    
    private func setupAudio() {
        try? AVAudioSession.sharedInstance().setCategory(.ambient)
        try? AVAudioSession.sharedInstance().setActive(true)
    }
    
    func playSound(_ name: String, loop: Bool = false) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
            print("Sound file \(name).mp3 not found")
            return
        }
        
        if let player = try? AVAudioPlayer(contentsOf: url) {
            audioPlayers[name] = player
            if loop {
                player.numberOfLoops = -1 // Loop indefinitely
            }
            player.play()
        }
    }
    
    func stopSound(_ name: String) {
        audioPlayers[name]?.stop()
        audioPlayers.removeValue(forKey: name)
    }
}
