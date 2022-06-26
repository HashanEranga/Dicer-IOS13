//
//  ViewController.swift
//  Dicer
//
//  Created by Hashan Eranga on 2022-06-25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var diceImgTwo: UIImageView!
    @IBOutlet weak var diceImgOne: UIImageView!
    @IBOutlet weak var resultLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImgOne.image = UIImage(named: "1")
        diceImgTwo.image = UIImage(named: "1")
        resultLbl.text = "Press Play to start!"
        
        
    }

    @IBAction func btnPress(_ sender: Any) {
        // Create random number for dice img
        let randNumbOne : Int = Int.random(in: 1...6)
        let randNumbTwo : Int = Int.random(in: 1...6)

        // convert to string
        let randNumbOneStr : String = randNumbOne.codingKey.stringValue
        let randNumbTwoStr : String = randNumbTwo.codingKey.stringValue
        
//        short form for creating two random values as string
//        let randNumbOneStr : String = Int.random(in: 1...6).codingKey.stringValue
//        let randNumbTwoStr : String = Int.random(in: 1...6).codingKey.stringValue
        
        diceImgOne.image = UIImage(named: randNumbOneStr)
        diceImgTwo.image = UIImage(named: randNumbTwoStr)
        
        if (randNumbOne>randNumbTwo){
            resultLbl.text = "Player 1 wins"
        }
        else if(randNumbTwo>randNumbOne){
            resultLbl.text = "Player 2 wins"
        }
        else{
            resultLbl.text = "Draw"
        }
    }
    
    @IBAction func quitBtn(_ sender: Any) {
        exit(0)
    }
}

