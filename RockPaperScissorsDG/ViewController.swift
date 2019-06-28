//
//  ViewController.swift
//  RockPaperScissorsDG
//
//  Created by Gosch, Daniel on 6/26/19.
//  Copyright © 2019 Daniel Gosch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yourPickImage: UIImageView!
    @IBOutlet weak var compPickImage: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var gameCounter: UILabel!
    @IBOutlet weak var winCounter: UILabel!
    @IBOutlet weak var winPctLabel: UILabel!
    
    var gameCount = Double(0)
    var winCount = Double(0)
    var winPct = Double(0)
    
    // rock paper scissors
    //   0    1      2
    var userChoice = 0
    var compChoice = 0
    
    var x = 0
    var y = 0
    
    var winnerText = ""
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //ROCK CLICKED
    @IBAction func rockButtonPressed(_ sender: UIButton)
    {
        //set user choice to rock, advance game counter, display game counter
        userChoice = 0
        gameCount += 1
        gameCounter.text = (String(format: "%.0f", gameCount))
        
        //computer makes random choice, set up choice array with same name as pictures in assets
        compChoice = Int.random(in: 0...2)
        var pictureChoices = ["rock", "paper", "scissors"]
        
        //winner logic
            var x = userChoice
            var y = compChoice
        
            if x == y
            {
                print("tie")
                winnerText = "it's a tie"
            }
            else if (((x-y)+6) % 3) == 1
            {
                print("user wins")
                winnerText = "you!"
                winCount += 1
            }
            else
            {
                print("comp wins")
                winnerText = "the computer. Womp womp..."
            }
        
        //display pictures of user and comp picks, pick comp picture from array using name that matches name in assets
        yourPickImage.image = UIImage(named: "rock")
        compPickImage.image = UIImage(named: pictureChoices[compChoice])
        
        //display winner
        winnerLabel.text = "The winner is: \(winnerText)"
        
        //win counter and win%
        winCounter.text = (String(format: "%.0f", winCount))
        winPct = Double(winCount / gameCount * 100)
        winPctLabel.text = (String(format: "%.0f", winPct))
        
    }
    
    //PAPER CLICKED
    @IBAction func paperButtonPressed(_ sender: UIButton)
    {
        gameCount += 1
        userChoice = 0
        
        gameCounter.text = (String(format: "%.0f", gameCount))
        
        
        
        userChoice = 1
        compChoice = Int.random(in: 0...2)
        var pictureChoices = ["rock", "paper", "scissors"]
        
        var x = userChoice
        var y = compChoice
        
        if x == y
        {
            print("tie")
            winnerText = "it's a tie"
        }
        else if (((x-y)+6) % 3) == 1
        {
            print("user wins")
            winnerText = "you!"
            winCount += 1
            
        }
        else
        {
            print("comp wins")
            winnerText = "the computer. Womp womp..."
        }
        yourPickImage.image = UIImage(named: "paper")
        compPickImage.image = UIImage(named: pictureChoices[compChoice])
        winnerLabel.text = "The winner is: \(winnerText)"
        
        
        winCounter.text = (String(format: "%.0f", winCount))
        winPct = Double(winCount / gameCount * 100)
        winPctLabel.text = (String(format: "%.0f", winPct))
    }
    
    //SCISSORS CLICKED
    @IBAction func scissorsButtonPressed(_ sender: UIButton)
    {
        gameCount += 1
        userChoice = 0
        
        gameCounter.text = (String(format: "%.0f", gameCount))
        
        
        
        userChoice = 2
        compChoice = Int.random(in: 0...2)
        var pictureChoices = ["rock", "paper", "scissors"]
        var x = userChoice
        var y = compChoice
        
        if x == y
        {
            print("tie")
            winnerText = "it's a tie"
        }
        else if (((x-y)+6) % 3) == 1
        {
            print("user wins")
            winnerText = "you!"
            winCount += 1
        }
        else
        {
            print("comp wins")
            winnerText = "the computer. Womp womp..."
        }
        yourPickImage.image = UIImage(named: "scissors")
        compPickImage.image = UIImage(named: pictureChoices[compChoice])
        winnerLabel.text = "The winner is: \(winnerText)"
        
        
        winCounter.text = (String(format: "%.0f", winCount))
        winPct = Double(winCount / gameCount * 100)
        winPctLabel.text = (String(format: "%.0f", winPct))
    }
    
}

