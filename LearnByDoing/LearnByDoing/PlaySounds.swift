//
//  PlaySounds.swift
//  LearnByDoing
//
//  Created by Abbos Shukurullaev on 30/04/22.
//

import Foundation
import AVFoundation
import SwiftUI

// MARK: - Audio player
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
