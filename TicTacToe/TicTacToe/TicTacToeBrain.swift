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
    var player = "X" // change
    var playerScoreX = 0
    var playerScoreO = 0
    
    func populateMattrix(_ gameButton: GameButton) -> String {
        
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .light, scale: .large)
        let xmarkImage = UIImage(systemName: "xmark", withConfiguration: config)
        let circleImage = UIImage(systemName: "circle", withConfiguration: config)
        var returnLabel: String = ""
                    
            if player == "X" {
                buttonMattrix[gameButton.row][gameButton.col] = "X"
                gameButton.setBackgroundImage(xmarkImage, for: .normal)
                player = "O"
                returnLabel = "player two turn"
            } else {
                buttonMattrix[gameButton.row][gameButton.col] = "O"
                gameButton.setBackgroundImage(circleImage, for: .normal)
                player = "X"
                
                returnLabel = "player one turn"
            }
            
    
        return returnLabel
    }
    
    
    func checkWinner()  -> String {
        var winner: String = ""
        
        for i in 0...2 {
            
            if buttonMattrix[0][i] == "X" && buttonMattrix[1][i] == "X" && buttonMattrix[2][i] == "X" ||
                buttonMattrix[i][0] == "X" && buttonMattrix[i][1] == "X" && buttonMattrix[i][2] == "X" {
                winner = "PLAYER ONE WINS 🥳"
                playerScoreX += 1
                
            }
            
            if buttonMattrix[0][i] == "O" && buttonMattrix[1][i] == "O" && buttonMattrix[2][i] == "O" ||
                buttonMattrix[i][0] == "O" && buttonMattrix[i][1] == "O" && buttonMattrix[i][2] == "O" {
                winner = "PLAYER TWO WINS 🥳"
                playerScoreO += 1
                
            }
        }
        
        
        
        if buttonMattrix[0][0] == "X" && buttonMattrix[1][1] == "X" && buttonMattrix[2][2] == "X" {
            winner = "PLAYER ONE WINS 🥳"
            playerScoreX += 1
            
        } else if buttonMattrix[0][0] == "O" && buttonMattrix[1][1] == "O" && buttonMattrix[2][2] == "O" {
            winner = "PLAYER TWO WINS 🥳"
            playerScoreO += 1
            
        }
            
        if buttonMattrix[2][0] == "O" && buttonMattrix[1][1] == "O" && buttonMattrix[0][2] == "O" {
            winner = "PLAYER TWO WINS 🥳"
            playerScoreO += 1
            
            
        } else if buttonMattrix[2][0] == "X" && buttonMattrix[1][1] == "X" && buttonMattrix[0][2] == "X" {
            winner = "PLAYER ONE WINS 🥳"
            playerScoreX += 1
            
        }
        
        return winner
    }
    
    func reset() {
        buttonMattrix = [["_","_","_"],["_","_","_"],["_","_","_"]]
        player = "X"
    }
}


