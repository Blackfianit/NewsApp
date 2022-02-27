//
//  NewsDetailsViewController.swift
//  NewsApp
//
//  Created by Дмитрий Ивашинин on 27.02.2022.
//

import UIKit

class NewsDetailsViewController: UIViewController {

    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var newsTitleLabel: UILabel!
    
    var newsItem: NewsItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageView.image = UIImage(named: newsItem.image)
        newsTitleLabel.text = newsItem.title

    }
    

}
