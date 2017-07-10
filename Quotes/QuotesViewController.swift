//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Alex Danner on 7/10/17.
//  Copyright © 2017 Danner Software Solutions. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    
    var quotes: Quotes = Quotes()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        quoteLabel.text = quotes.quoteArray[quotes.arrayIndex]
        authorImage.image = UIImage(named: quotes.imageNameArray[quotes.arrayIndex])
        authorName.text = quotes.authorNameArray[quotes.arrayIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func inspireMeDidTap(_ sender: Any) {
        
        quoteLabel.text = self.quotes.getNextQuote(index: quotes.arrayIndex)
        authorImage.image = UIImage(named: quotes.getNextImageName(index: quotes.arrayIndex))
        authorName.text = quotes.getNextAuthorName(index: quotes.arrayIndex)
//        print(self.quotes.getNextQuote(index: quoteIndex))
    }

}
