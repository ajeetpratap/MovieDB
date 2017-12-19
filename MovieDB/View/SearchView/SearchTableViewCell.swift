//
//  SearchTableViewCell.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit
import SDWebImage

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLable: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var overViewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
    }
    override func prepareForReuse() {        
        posterImageView.sd_cancelCurrentAnimationImagesLoad()
        posterImageView.image = nil
    }
    
    func setupCell(data : Movie) {
        movieTitleLable.text = data.title
        releaseDateLabel.text = data.release_date
        overViewLabel.text = data.overview
        let url = URL(string:BASE_IMAGE_URL + (data.poster_path ?? ""))
        posterImageView.sd_setShowActivityIndicatorView(true)
        posterImageView.sd_setImage(with: url, completed: nil)
    }
    
}
