//
//  GameButton.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

// adding more attributes to a button
// we want to be able to inspect the row and column of a button

// we must change the button class from the default UIbutton to GameButton and then we can reference GameButton.row and GameButton.column to identify the  button selected by player. 

class GameButton: UIButton { // inherits from UIButton
  @IBInspectable var row: Int = 0
  @IBInspectable var col: Int = 0
    
    //outlet a connection to a property
    //action a connection to a method/function
}
