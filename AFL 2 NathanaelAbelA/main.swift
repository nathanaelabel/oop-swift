//
//  main.swift
//  AFL 2 NathanaelAbelA
//
//  Created by MacBook on 05/04/22.
//

import Foundation

let rec = Receipt()
var check:Bool = true

while check == true {
  
  print("")
  print("=========================== ")
  print("    Point of Sales (PoS)    ")
  print("=========================== ")
  print("Options:")
  print("[1] Buy Food")
  print("[2] Shopping Cart")
  print("[X] Exit\n")
  print("Your Choice? ")
  if let option = readLine() {
      
      switch option {
        
        case "1":
          var back:Bool = true
        
          print("\nHi, we have 5 Food & Beverage options for you!")
          print("----------------------------------------------  ")
          print("[F03] Gado-Gado")
          print("[F02] Chicken Satay")
          print("[F01] Nasi Padang")
          print("[B02] Mineral Water")
          print("[B01] Ice Tea")
          print("[Q] Quit to Main Menu")
          
          while back == true {
            
            print("\nYour F&B Choice? ")
            let choices = readLine() ?? ""
            let choice = choices.uppercased()
            
            if choice == "F03" {
                rec.nameGS = "Gado-Gado"
                print("How many Gado-Gado you want to buy?")
                let menu = Int(readLine() ?? "") ?? 0
                rec.countGS = menu
                
                rec.addItem(Item: rec.nameGS, Amount: rec.countGS)
                rec.showItem()
            }
            else if choice == "F02" {
                rec.nameGS = "Chicken Satay"
                print("How many Chicken Satay you want to buy?")
                let menu = Int(readLine() ?? "") ?? 0
                rec.countGS = menu
                
                rec.addItem(Item: rec.nameGS, Amount: rec.countGS)
                rec.showItem()
            }
            else if choice == "F01" {
                rec.nameGS = "Nasi Padang"
                print("How many Nasi Padang you want to buy?")
                let menu = Int(readLine() ?? "") ?? 0
                rec.countGS = menu
                
                rec.addItem(Item: rec.nameGS, Amount: rec.countGS)
                rec.showItem()
            }
            else if choice == "B02" {
                rec.nameGS = "Mineral Water"
                print("How many Mineral Water you want to buy?")
                let menu = Int(readLine() ?? "") ?? 0
                rec.countGS = menu
                
                rec.addItem(Item: rec.nameGS, Amount: rec.countGS)
                rec.showItem()
            }
            else if choice == "B01" {
                rec.nameGS = "Ice Tea"
                print("How many Ice Tea you want to buy?")
                let menu = Int(readLine() ?? "") ?? 0
                rec.countGS = menu
                
                rec.addItem(Item: rec.nameGS, Amount: rec.countGS)
                rec.showItem()
            }
            else if choice == "q" || choice == "Q" {
              back = false
            }
            else {
              print("\nChoice not found. Please try again.")
            }
            
          } // while back end
  
        case "2":
            rec.showItem()
        
        case "x", "X":
          check = false
          print("\nThankyou for using our service!\n")
          
        default:
          print("\nYour option is not available. Please try again.")
        
      } // switch option end
    
  } else {
    print("\nOption is not available. Please try again.")
  }
  
} // while check end
