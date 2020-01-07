//
//  FootbalChantsObject.swift
//  footballChants
//
//  Created by tobi adegoroye on 01/01/2020.
//  Copyright © 2020 tobi adegoroye. All rights reserved.
//

import Foundation
import UIKit

class FootballBook{
    
    var footballChantsObject = [
        Football(name: "Arsenal", image: UIImage(imageLiteralResourceName: "arsenal"), chant: "arsenalChant"),
        Football(name: "United", image: UIImage(imageLiteralResourceName: "united"), chant: "unitedChant"),
        Football(name: "City", image: UIImage(imageLiteralResourceName: "city"), chant: "cityChant")
    ]
    
    
    func getCount() -> Int {
        return footballChantsObject.count
    }
    
    func getFootballTeam(_at index: Int) -> Football{
        return footballChantsObject[index]
    }
    
}
