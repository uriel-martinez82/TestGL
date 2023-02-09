//
//  DetailViewController.swift
//  TestGL
//
//  Created by Uriel Martinez  on 09/02/2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    
    var item: ListModelElement?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .black
        self.setData(item: item!)
        // Do any additional setup after loading the view.
    }
    
    func setData(item: ListModelElement) {
        detailTitleLabel.text = item.title
        descriptionLabel.text = item.description
        let imagePath = (item.image)
        detailImageView.kf.setImage(with: URL(string: imagePath), placeholder: nil, options: nil, progressBlock: nil, completionHandler: { result in
        switch result {
            case .success(let value):
                        print("Image: \(value.image). Got from: \(value.cacheType)")
            case .failure(let error):
                        print("Error: \(error)")
            }
        })
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
