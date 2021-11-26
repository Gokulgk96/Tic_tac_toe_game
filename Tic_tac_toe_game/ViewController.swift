//
//  ViewController.swift
//  Tic_tac_toe_game
//
//  Created by Gokul Gopalakrishnan on 26/11/21.
//

import UIKit


let cross = "X"
let zero = "O"

class ViewController: UIViewController {
 
    
    var inital = zero
    var count = 0
    
    var button_array = [UIButton]()

    @IBOutlet weak var A1_button: UIButton!
    @IBOutlet weak var A2_button: UIButton!
    @IBOutlet weak var A3_button: UIButton!
    
    
    @IBOutlet weak var B1_button: UIButton!
    @IBOutlet weak var B2_button: UIButton!
    @IBOutlet weak var B3_button: UIButton!
    
    
    @IBOutlet weak var C1_button: UIButton!
    @IBOutlet weak var C2_button: UIButton!
    @IBOutlet weak var C3_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button_array.append(A1_button)
        button_array.append(A2_button)
        button_array.append(A3_button)
        button_array.append(B1_button)
        button_array.append(B2_button)
        button_array.append(B3_button)
        button_array.append(C1_button)
        button_array.append(C2_button)
        button_array.append(C3_button)
    }

    @IBAction func Button_main_action(_ sender: UIButton) {
        
       
        
        if(sender.title(for: .normal) == nil )
        {
            if(inital == "O")
            {
                sender.setTitle("X", for: .normal)
                inital = cross

            }
            else if ( inital == "X")
            {
                sender.setTitle("O", for: .normal)
                inital = zero
               
            }
            
           
        }
        
        
        for button in button_array
        {
           
            if(button.title(for: .normal) != nil)
            {
               count += 1
            }
            
            if(count == 9)
            {
                
                let uialert = UIAlertController(title: "TIC TAC TOE", message: "Full", preferredStyle: UIAlertController.Style.alert)
                      uialert.addAction(UIAlertAction(title: "Reset", style: UIAlertAction.Style.default, handler: { action in
                        for button in self.button_array
                        {
                            button.setTitle(nil, for: .normal)
                        }
                    }))
                   self.present(uialert, animated: true, completion: nil)
                

               
            }
        }
        
    count = 0
   }
    
}

