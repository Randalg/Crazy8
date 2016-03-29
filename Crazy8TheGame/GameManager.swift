//
//  GameManager.swift
//  Crazy8TheGame
//
//  Created by Martin Gyupchanov on 11-03-16.
//  Copyright © 2016 Martin Gyupchanov. All rights reserved.
//

import Foundation

class GameManager{
  
  var myDeck = Deck()
 
  init(){
    myDeck = Deck()
  }
  
  func manageGame(){
    
    print("Initial deck");
    
    print(myDeck)
    for time in 1...10 {
      myDeck.shuffleDeck(&myDeck.deck)
      
      print("");
      print("Reshuffled deck: \(time)");
      print(myDeck)
    }
  }
  
  
}