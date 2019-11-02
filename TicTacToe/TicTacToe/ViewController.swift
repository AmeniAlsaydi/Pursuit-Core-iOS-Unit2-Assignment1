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
    @IBOutlet weak var playerTurn: UILabel!
    var twoDArray = [["_","_","_"],["_","_","_"],["_","_","_"]]
    var player = 1
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    //actions should be under the override!!!!
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {

        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .light, scale: .large)
        let xmarkImage = UIImage(systemName: "xmark", withConfiguration: config)
        let circleImage = UIImage(systemName: "circle", withConfiguration: config)
        
        if twoDArray[gameButton.row][gameButton.col] == "_" {
        //  allow the button to be pressed else dont.
        
        if player == 1 {
            twoDArray[gameButton.row][gameButton.col] = "X"
            
            gameButton.setBackgroundImage(xmarkImage, for: .normal)
            player = 2
            playerTurn.text = "player two turn"
        } else {
            twoDArray[gameButton.row][gameButton.col] = "O"
            gameButton.setBackgroundImage(circleImage, for: .normal)
            player = 1
            playerTurn.text = "player one turn"
        }
        
        } else {
            gameButton.isEnabled = false 
        }
        //print(" Row: \(gameButton.row) and Col: \(gameButton.col) were selected")
        print(twoDArray)
    }
   // func checkWinner
    // if there are 3 in a row
       
   
}


// NOTES:
// everytime the players select a button we have to update our board/ model
// SF Symbol

// X and O are background images

// attributes inspectpor
// size inspector

// ishidden property (to check if the spot is still empty)

// use a tic tac toe grid for the veiw 

/*
Multi (2) dimensional array to keep track  of the board

0,0  0,1  0,2
1,0   1,1  1,2
2,0  2,1  2,2


Identity inspector tells us about the class of the button
We change the class of our buttons to GameButton, now our buttons have row and col


//GameButton inherits from button which inherits from control which inherits from view.
*/ 
