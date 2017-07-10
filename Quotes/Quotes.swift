//
//  Quotes.swift
//  Quotes
//
//  Created by Alex Danner on 7/10/17.
//  Copyright © 2017 Danner Software Solutions. All rights reserved.
//

import Foundation

class Quotes
{
    var quoteArray: [String] = [
        "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
        "No matter how small you start, start something that matters.",
        "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
    
    var authorNameArray: [String] = [
        "Steve Jobs",
        "Brendon Burchard",
        "Theodore Roosevelt"]
    
    var imageNameArray: [String] = [
        "thumb_steve",
        "thumb_brendon",
        "thumb_theodore"
    ]
    
    var arrayIndex: Int = 0
    
    func getNextQuote(index: Int) -> String {
        
        if arrayIndex == (quoteArray.count - 1) {
            arrayIndex = 0
        } else {
            arrayIndex += 1
        }
        return quoteArray[arrayIndex]
    }
    
    func getNextAuthorName(index: Int) -> String {
        
        return authorNameArray[arrayIndex]
    }
    
    func getNextImageName(index: Int) -> String {
        
        return imageNameArray[arrayIndex]
    }
}
















