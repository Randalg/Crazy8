//
//  Card.swift
//  Crazy8TheGame
//
//  Created by Martin Gyupchanov on 10-03-16.
//  Copyright © 2016 Martin Gyupchanov. All rights reserved.
//

import Foundation

class Card {
  
  var suite: Suits
  var value: Values
  
  init(initSuit: Suits, initValue: Values){
    self.suite = initSuit
    self.value = initValue
  }
}

extension Card : CustomStringConvertible {
  var description: String {
    return self.value.rawValue + self.suite.rawValue
  }
}