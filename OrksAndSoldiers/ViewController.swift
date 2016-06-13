//
//  ViewController.swift
//  OrksAndSoldiers
//
//  Created by Bem on 6/12/16.
//  Copyright © 2016 Bem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLabel: UILabel!
    
    @IBOutlet weak var playerOneAttack: UIButton!
    
    @IBOutlet weak var playerTwoLabel: UILabel!
    
    @IBOutlet weak var playerTwoAttack: UIButton!
    
    @IBOutlet weak var playerOneImage: UIImageView!
    
    @IBOutlet weak var playerTwoImage: UIImageView!
    
    @IBOutlet weak var fightLabel: UILabel!
    
    @IBOutlet weak var resetLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var playerOne: Ork!
    var playerTwo: Soldier!
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playerOne = Ork(hp: 60, attackPwr: 25)
        playerTwo = Soldier(hp: 100, attackPwr: 15)
        playerOneLabel.text = "\(playerOne.hp) HP"
        playerTwoLabel.text = "\(playerTwo.hp) HP"
        fightLabel.text = "There can only be one"
        
            }
    func disableAttacks() {
        playerOneAttack.hidden = true
        playerTwoAttack.hidden = true
        playerOneLabel.hidden = true
        playerTwoLabel.hidden = true
    }
    func enableAttacks() {
        playerOneAttack.hidden = false
        playerTwoAttack.hidden = false
        playerOneLabel.hidden = false
        playerTwoLabel.hidden = false
    }
    
    @IBAction func onReset(sender: UIButton) {
        playerOneLabel.hidden = false
        playerOneImage.hidden = false
        playerOneAttack.hidden = false
        playerOne = Ork(hp: 60, attackPwr: 25)
        playerOneLabel.text = "\(playerOne.hp) HP"
        playerTwoLabel.hidden = false
        playerTwoImage.hidden = false
        playerTwoAttack.hidden = false
        playerTwo = Soldier(hp: 100, attackPwr: 15)
        playerTwoLabel.text = "\(playerTwo.hp) HP"
        resetButton.hidden = true
        resetLabel.hidden = true
        
    }


    @IBAction func onPlayerOneAttack(sender: UIButton) {
        if  playerTwo.attemptAttack(playerOne.attackPwr) {
            fightLabel.text = "\(playerOne.name) got the attack!"
            playerTwoLabel.text = "\(playerTwo.hp) HP"
            disableAttacks()
            delay(3) {
                self.enableAttacks()
            }
            
        }
        
        if !playerTwo.isAlive {
            fightLabel.text = "Player One Wins!"
            playerTwoImage.hidden = true
            resetButton.hidden = false
            resetLabel.hidden = false
    }
    }
    @IBAction func onPlayerTwoAttack(sender: UIButton) {
        if  playerOne.attemptAttack(playerTwo.attackPwr) {
            fightLabel.text = "\(playerTwo.name) got the attack!"
            playerOneLabel.text = "\(playerOne.hp) HP"
            disableAttacks()
            delay(3) {
                self.enableAttacks()
            }
        }
        
        if !playerOne.isAlive {
            fightLabel.text = "Player Two Wins!"
            playerOneImage.hidden = true
            resetButton.hidden = false
            resetLabel.hidden = false
        }
           
        }
    }





