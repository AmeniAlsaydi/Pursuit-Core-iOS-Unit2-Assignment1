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
    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var player2Score: UILabel!
    @IBOutlet weak var boardImage: UIImageView!
    
    var turn: String = ""
    var winning: String = ""
    
    
    
    var game = TicTacToeBrain() 
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        boardImage.layer.cornerRadius = 25;
        
        player1Score.text = "Player One Score: \(game.playerScoreX)"
        player2Score.text = "Player Two Score: \(game.playerScoreO)"
  }
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {

        turn = game.populateMattrix(gameButton)
        winning = game.checkWinner()
        
        if game.buttonMattrix.joined().contains("_") {
            if winning == "" { 
                         playerTurn.text = turn
                   } else {
                     gameButtons.forEach{$0.isEnabled = false}
                        playerTurn.text = winning
                   }
            
        } else {
            playerTurn.text = "NO WINNER"
        }
        gameButton.isEnabled = false
        
        player1Score.text = "Player One Score: \(game.playerScoreX)"
        player2Score.text = "Player Two Score: \(game.playerScoreO)"
        }
    
    @IBAction func playAgain(_ sender: UIButton) {

        game.reset()
        turn = ""
        winning = ""
        playerTurn.text = "TIC TAC TOE"
        for button in gameButtons {
            button.setBackgroundImage( nil, for: .normal)
            button.isEnabled = true
        }

    }
    

}



