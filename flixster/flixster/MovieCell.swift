//
//  MovieCell.swift
//  flixster
//
//  Created by Harrold Ventayen on 3/8/23.
//
import Nuke
import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var descriptionNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    func configure(with movie: Movie) {
        movieNameLabel.text = track.movie
        descriptionNameLabel.text = track.description

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.artworkUrl100, into: movieImageView)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
