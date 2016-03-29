//
//  Deck.swift
//  Crazy8TheGame
//
//  Created by Martin Gyupchanov on 10-03-16.
//  Copyright © 2016 Martin Gyupchanov. All rights reserved.
//

import Foundation

class Deck {
  
  var deck = [Card]()
  
  init(){
    for suit in Suits.allValues{
      for value in Values.allValues{
        let card = Card(initSuit: suit, initValue: value)
        deck.append(card)
      }
    }
  }
  
  /* Shuffles the passed deck of cards.
    Starts form the first card - pick a random number from 0 to deck size - 1
    Exchanges the current card with the picked one
    
    Pre-conditions - Takes an array of cards (any numbers from 2 to 52)
  
    Post-condition - All the cards in the deck are shuffled - so the deck is different from the passed one
  */
  func shuffleDeck(inout array : [Card]){
    var exchangeCell : Int
    var temp : Card
    
    for cell in 0..<array.count {
      
      exchangeCell = getRandomNumber(minValue: 0, maxValue: array.count - 1)
      
      temp = array[exchangeCell]
      array[exchangeCell] = array[cell]
      array[cell] = temp
    }
  }
  
  // Returns a random number in the given range (including maxValue)
  func getRandomNumber (minValue minValue : Int, maxValue : Int) -> Int {
    let range = maxValue - minValue + 1
    let random : Int = Int(arc4random_uniform(UInt32(range)))
    return random + minValue
  }
}

extension Deck : CustomStringConvertible {
  var description: String {
    return deck.description
  }
}