//
//  ViewController.swift
//  CardUIExample
//
//  Created by Sahil Arora on 2020-11-17.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import UIKit
import Cards

class ViewController: UIViewController {

    private var card:CardHighlight = {
        
        let card  = CardHighlight()
        card.icon = UIImage(named: "icon")
        card.backgroundImage = UIImage(named: "main")
        card.title  = "Gaming app"
        card.itemSubtitle = "This is Canada's number one gaming app"
        card.buttonText = "Open"
        card.itemTitle = "Entertainment"
        card.shadowColor = UIColor.lightGray
        card.title = "Goof Around"
        card.shadowBlur = 10.0
        card.itemSubtitleSize = 12.0
        card.titleSize = 15.0
        return card
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.shouldPresent(CardDescriptionController(), from: self, fullscreen: true)
        view.addSubview(card)
       
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        card.frame = CGRect(x: 10.0, y: 50.0, width: (self.view.frame.size.width-20), height: view.frame.size.height/3)
    }

}



class CardDescriptionController:UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
    }
}
