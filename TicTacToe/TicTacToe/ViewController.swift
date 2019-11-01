//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// all outlets should be above the override!!!!
    // an outlet collection: an array of buttons
    @IBOutlet var gameButtons: [GameButton]!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    //actions should be under the override!!!!
    
    

    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        print(" Row: \(gameButton.row) and Col: \(gameButton.col) were selected")
    }
    
}

// everytime the players select a button we have to update our board/ model
// SF Symbol

// X and O are background images

// attributes inspectpor
// size inspector

// ishidden property (to check if the spot is still empty)

// use a tic tac toe grid for the veiw 
