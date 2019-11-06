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
    var buttonMattrix = [["_","_","_"],["_","_","_"],["_","_","_"]]
    var player = 1
    // var playerTurn = ""
    
    func populateMattrix(_ gameButton: GameButton) -> String {
        
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .light, scale: .large)
        let xmarkImage = UIImage(systemName: "xmark", withConfiguration: config)
        let circleImage = UIImage(systemName: "circle", withConfiguration: config)
        var returnLabel: String = ""
        
        // if the matrix is full and has no "_"
            
            if player == 1 {
                buttonMattrix[gameButton.row][gameButton.col] = "X"
                gameButton.setBackgroundImage(xmarkImage, for: .normal)
                player = 2
                returnLabel = "player two turn"
            } else {
                buttonMattrix[gameButton.row][gameButton.col] = "O"
                gameButton.setBackgroundImage(circleImage, for: .normal)
                player = 1
                returnLabel = "player one turn"
            }
            
    
        return returnLabel
    }
    
    
    func checkWinner()  -> String {
        var winner: String = ""
        
        for col in 0...2 {
            // checking columns
            // col = 0
            // [0][0] [1][0] [2][0]
            
            if buttonMattrix[0][col] == "X" &&
                buttonMattrix[1][col] == "X" &&
                buttonMattrix[2][col] == "X" {
                print(" X wins ")
                winner = "PLAYER ONE WINS 🥳"
                
            }
            if buttonMattrix[0][col] == "O" &&
                buttonMattrix[1][col] == "O" &&
                buttonMattrix[2][col] == "O" {
                print(" O wins ")
                winner = "PLAYER TWO WINS 🥳"
                
            }
            
        }
        for row in 0...2 {
            // checking rows
            // row = 0
            // [0][0] [0][1] [0][2]
            
            if buttonMattrix[row][0] == "X" &&
                buttonMattrix[row][1] == "X" &&
                buttonMattrix[row][2] == "X" {
                print(" X wins ")
                winner = "PLAYER ONE WINS 🥳"
                
            }
            if buttonMattrix[row][0] == "O" &&
                buttonMattrix[row][1] == "O" &&
                buttonMattrix[row][2] == "O" {
                print(" O wins ")
                winner = "PLAYER TWO WINS 🥳"
            }
            
        }
        
        if buttonMattrix[0][0] == "X" &&
            buttonMattrix[1][1] == "X" &&
            buttonMattrix[2][2] == "X" {
            print(" X wins ")
            winner = "PLAYER ONE WINS 🥳"
            
        } else if buttonMattrix[0][0] == "O" &&
            buttonMattrix[1][1] == "O" &&
            buttonMattrix[2][2] == "O" {
            print(" O wins ")
            winner = "PLAYER TWO WINS 🥳"
            
        }

            
        if buttonMattrix[2][0] == "O" &&
            buttonMattrix[1][1] == "O" &&
            buttonMattrix[0][2] == "O" {
            print(" O wins ")
            winner = "PLAYER TWO WINS 🥳"
            
        } else if buttonMattrix[2][0] == "X" &&
            buttonMattrix[1][1] == "X" &&
            buttonMattrix[0][2] == "X" {
            print(" O wins ")
            winner = "PLAYER ONE WINS 🥳"
        }
        
        return winner
    }
    func reset() {
        buttonMattrix = [["_","_","_"],["_","_","_"],["_","_","_"]]
        player = 1
    }
}


