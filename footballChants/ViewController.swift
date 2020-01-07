//
//  ViewController.swift
//  footballChants
//
//  Created by tobi adegoroye on 01/01/2020.
//  Copyright © 2020 tobi adegoroye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    let footballChantsObject = FootballBook()
    let chantsTableViewCell = ChantsTableViewCell()
    let audioManager = AudioManager()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 44
    }
}


extension ViewController: UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        footballChantsObject.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chants = footballChantsObject.getFootballTeam(_at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ChantsTableViewCell
        cell?.configure(with: chants, delegate: self)
         return cell!
    }
}

extension ViewController: ChantsTableViewCellDelegate {
    func didStop() {
        audioManager.stopMusic()
    }
    
    func didPlay(_ football: Football) {
        audioManager.playMusic(chants: football.chant)
        print("This is the: \(football.chant)")

    }
    
 

    
}
