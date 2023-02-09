//
//  HomeTableViewCell.swift
//  TestGL
//
//  Created by Uriel Martinez  on 08/02/2023.
//

import UIKit
import Kingfisher

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var homeTitleLabel: UILabel!
    @IBOutlet weak var homeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.homeTitleLabel.layer.masksToBounds = true
        self.homeTitleLabel.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData (item: ListModelElement) {
        homeTitleLabel.text = item.title
        descriptionLabel.text = item.description
        let imagePath = (item.image)
        homeImageView.kf.setImage(with: URL(string: imagePath), placeholder: nil, options: nil, progressBlock: nil, completionHandler: { result in
        switch result {
            case .success(let value):
                        print("Image: \(value.image). Got from: \(value.cacheType)")
            case .failure(let error):
                        print("Error: \(error)")
            }
        })
    }
    
}
