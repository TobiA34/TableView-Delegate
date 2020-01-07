//
//  chantsTableViewCell.swift
//  footballChants
//
//  Created by tobi adegoroye on 01/01/2020.
//  Copyright © 2020 tobi adegoroye. All rights reserved.
//

import UIKit

protocol ChantsTableViewCellDelegate{
    func didPlay(_ football:Football)
    func didStop()
}
 
class ChantsTableViewCell: UITableViewCell {

    @IBOutlet weak var footballImage: UIImageView!
    @IBOutlet weak var footballLbl: UILabel!
 
    private var football: Football?
    private var delegate: ChantsTableViewCellDelegate?
    
    
    func configure(with football: Football, delegate: ChantsTableViewCellDelegate)  {
        self.football = football
        self.delegate = delegate
        footballImage.image = football.image
        footballLbl.text = football.name
    }
    
    override func prepareForReuse() {
           super.prepareForReuse()
           footballImage.image = nil
           footballLbl.text = nil
       }
    
    @IBAction func playDidTouch(_ sender: Any) {
        if let selectedFootball = football {
            delegate?.didPlay(selectedFootball)
        }
      }
    @IBAction func stopDidTouch(_ sender: Any) {
        delegate?.didStop()
    }
}
