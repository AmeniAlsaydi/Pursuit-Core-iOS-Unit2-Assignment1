//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
import UIKit

class TicTacToeBrain {
    var twoDArray = [["_","_","_"],["_","_","_"],["_","_","_"]]
    var player = 1
    
    func populate2DArray(_ gameButton: GameButton) -> String {
        
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .light, scale: .large)
        let xmarkImage = UIImage(systemName: "xmark", withConfiguration: config)
        let circleImage = UIImage(systemName: "circle", withConfiguration: config)
        
        var playerTurn = ""
        
        if player == 1 {
            twoDArray[gameButton.row][gameButton.col] = "X"
            
            gameButton.setBackgroundImage(xmarkImage, for: .normal)
            player = 2
            playerTurn = "player two turn"
        } else {
            twoDArray[gameButton.row][gameButton.col] = "O"
            gameButton.setBackgroundImage(circleImage, for: .normal)
            player = 1
            playerTurn = "player one turn"
        }
        return playerTurn 
    }

    
    func checkWinner()  -> String {
        var winner: String = ""
        
        for col in 0...2 {
               // checking columns
                      // col = 0
                      // [0][0] [1][0] [2][0]
               
               if twoDArray[0][col] == "X" &&
                   twoDArray[1][col] == "X" &&
                   twoDArray[2][col] == "X" {
                   print(" X wins ")
                   winner = "PLAYER ONE WINS 🥳"

               }
               if twoDArray[0][col] == "O" &&
                   twoDArray[1][col] == "O" &&
                   twoDArray[2][col] == "O" {
                   print(" O wins ")
                   winner = "PLAYER TWO WINS 🥳"

               }
         
         }
           for row in 0...2 {
                 // checking rows
                        // row = 0
                        // [0][0] [0][1] [0][2]
                 
                 if twoDArray[row][0] == "X" &&
                     twoDArray[row][1] == "X" &&
                     twoDArray[row][2] == "X" {
                     print(" X wins ")
                   winner = "PLAYER ONE WINS 🥳"

                 }
                 if twoDArray[row][0] == "O" &&
                     twoDArray[row][1] == "O" &&
                     twoDArray[row][2] == "O" {
                     print(" O wins ")
                   winner = "PLAYER TWO WINS 🥳"
                 }
           
           }
           
           return winner
        }
}
