//
//  NewsListViewController.swift
//  NewsApp
//
//  Created by Дмитрий Ивашинин on 27.02.2022.
//

import UIKit

class NewsListViewController: UITableViewController {
    
    private let newsList = NewsItem.getNewsItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let news = newsList[indexPath.row]
        
        content.text = news.title
        
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? NewsDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let newsItem = newsList[indexPath.row]
        detailsVC.newsItem = newsItem
    }


}
