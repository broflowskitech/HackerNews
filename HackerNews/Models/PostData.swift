//
//  PostData.swift
//  HackerNews
//
//  Created by Jan Bárta on 16/07/2020.
//  Copyright © 2020 Jan Bárta. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
