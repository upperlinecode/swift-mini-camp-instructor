//
//  ViewController.swift
//  TriviaAppDayThreeStarter
//
//  Created by flatironstudent on 2/11/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Fact: UILabel!
    let triviaModel = TriviaModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Fact.text = triviaModel.randomFact()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func newFact() {
        Fact.text = triviaModel.randomFact()
    }

}