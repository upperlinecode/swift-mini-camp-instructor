//
//  ViewController.swift
//  AboutPage
//
//  Created by flatironstudent on 1/22/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var FavoriteMovies: UITextView!
    @IBOutlet weak var Biography: UITextView!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    let about = About()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView.contentSize.height = 1000
        addData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addData() {
        Name.text = "Name: \(about.name)"
        Age.text = "Age: \(about.age)"
        FavoriteMovies.text = "Favorite Movies:\n1. \(about.favoriteMovies[about.favoriteMovies.startIndex])\n2. \(about.favoriteMovies[about.favoriteMovies.startIndex.advancedBy(1)])\n3. \(about.favoriteMovies[about.favoriteMovies.startIndex.advancedBy(2)])"
        FavoriteMovies.sizeToFit()        FavoriteMovies.sizeToFit()
        Biography.text = "Biography: \(about.bio)"
    }


}