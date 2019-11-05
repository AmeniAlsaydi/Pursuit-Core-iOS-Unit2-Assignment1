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
    
    var player = 1
    
    var game = TicTacToeBrain() 
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {

        
        playerTurn.text = game.populate2DArray(gameButton)
        gameButton.isEnabled = false
        
        print(game.twoDArray)
        // checkWinner()
        playerTurn.text = game.checkWinner()
        if game.checkWinner() != "" {
            gameButtons.forEach{$0.isEnabled = false}
        }
    
    }
    
    // new game: reset the twoDarray to "_"

}




