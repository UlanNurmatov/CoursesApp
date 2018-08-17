//
//  NewsDetails.swift
//  CoursesApp
//
//  Created by Ulan Nurmatov on 8/17/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class NewsDetails: UIViewController {
    
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var addedLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var newsText: UITextView!

    var id: Int?
    var news: NewsItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getNewsItem(newsId: id!, completion: getNews, error: showError)
    }

    func getNews(news: NewsItem) {
        self.news = news
    }
    
    func setNews(news: NewsItem) {
        newsTitle.text = news.title
        dateLabel.text = news.added
        newsText.text = news.description
        
        let url = URL(string: news.news_image!)
        newsImage.kf.setImage(with: url)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
