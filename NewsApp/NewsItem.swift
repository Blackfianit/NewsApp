//
//  NewsItem.swift
//  NewsApp
//
//  Created by Дмитрий Ивашинин on 27.02.2022.
//

struct NewsItem {
    let title: String
    let author: String
    let description: String
    let image: String
    
    
    static func getNewsItem() -> [NewsItem] {
        [
            NewsItem(
                title: "One", author: "", description: "", image: ""
            ),
            NewsItem(
                title: "One", author: "", description: "", image: ""
            )
        ]
    }
}
