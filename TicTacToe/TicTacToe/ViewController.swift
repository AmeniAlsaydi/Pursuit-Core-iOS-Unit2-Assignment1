//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameButtons: [GameButton]!
    @IBOutlet weak var playerTurn: UILabel!
    var twoDArray = [["_","_","_"],["_","_","_"],["_","_","_"]]
    var turn: String = ""
    var winning: String = ""
    
    
    var game = TicTacToeBrain() 
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {

        turn = game.populateMattrix(gameButton)
        winning = game.checkWinner()
        
        if game.buttonMattrix.joined().contains("_") {
            if winning == "" { // no one has won
                         playerTurn.text = turn
                   } else {
                     gameButtons.forEach{$0.isEnabled = false}
                        playerTurn.text = winning
                   }
            
        } else {
            playerTurn.text = "NO WINNER"
        }
        gameButton.isEnabled = false
        print(game.buttonMattrix)
        }
    
    // new game: reset the twoDarray to "_"
    
    @IBAction func playAgain(_ sender: UIButton) {

        game.reset()
        turn = ""
        winning = ""
        // need to check the top label back to "tic tac toe"
        playerTurn.text = "TIC TAC TOE"
        // need to clear board
        for button in gameButtons {
            button.setBackgroundImage( nil, for: .normal)
            button.isEnabled = true
        }
        print(game.buttonMattrix)
// i cant play again
    }
    

}

//TODO:
// curve the image edges.



