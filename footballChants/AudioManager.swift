//
//  AudioManager.swift
//  footballChants
//
//  Created by tobi adegoroye on 01/01/2020.
//  Copyright © 2020 tobi adegoroye. All rights reserved.
//

import Foundation
import AVFoundation
class AudioManager{
    
    var audioPlayer: AVAudioPlayer?
    

    func playMusic(chants: String){
        if let path = Bundle.main.path(forResource: chants, ofType: "mp3"){
            let url = URL(fileURLWithPath: path)

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                // couldn't load file :(
             print("can't load file")
            }
        }
           
       }
    
       func stopMusic(){
           audioPlayer?.stop()
       }
}
