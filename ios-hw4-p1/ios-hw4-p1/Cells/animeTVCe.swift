//
//  animeTVCe.swift
//  ios-hw4-p1
//
//  Created by hussain haidar almousawi on 10/11/20.
//

import UIKit

class animeTVCe: UITableViewCell {

    @IBOutlet weak var animeImageView: UIImageView!
    @IBOutlet weak var animeName: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    func configureCell(anime: Anime)
    {
        self.animeImageView.image = UIImage(named: anime.image)
        self.animeName.text = anime.name
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
