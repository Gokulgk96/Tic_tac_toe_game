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
 
    @IBOutlet weak var Turn_label: UILabel!
    
    var inital = zero
 
    
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
        
        Turn_label.text = "X Turn"
    }

    @IBAction func Button_main_action(_ sender: UIButton) {
        
        if(sender.title(for: .normal) == nil )
        {
            if(inital == "O")
            {
                sender.setTitle("X", for: .normal)
                inital = cross
                Turn_label.text = "O Turn"

            }
            else if ( inital == "X")
            {
                sender.setTitle("O", for: .normal)
                inital = zero
                Turn_label.text = "X Turn"
               
            }
        }
        
        if(victory(cross))
        {
            
            
            let alert = UIAlertController(title: "Alert", message: "Match won by CROSS team", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Reset", style: UIAlertAction.Style.default, handler:
                { action in
                        
                     for button in self.button_array
                            {
                                button.setTitle(nil, for: .normal)
                            }
        
                                                
                   }))
            self.present(alert, animated: true, completion: nil)
        }
        
        if(victory(zero))
        {
           
            
            let alert = UIAlertController(title: "Alert", message: "Match won by ZERO team", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Reset", style: UIAlertAction.Style.default, handler:
                { action in
                        
                     for button in self.button_array
                            {
                                button.setTitle(nil, for: .normal)
                            }
                                
                 
                   }))
            self.present(alert, animated: true, completion: nil)
        }
    
        
        
        if(draw())
        {
            let alert = UIAlertController(title: "Alert", message: "Match has been Draw", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Reset", style: UIAlertAction.Style.default, handler:
                { action in
                        
                     for button in self.button_array
                            {
                                button.setTitle(nil, for: .normal)
                            }
                    
                                                
                   }))
            self.present(alert, animated: true, completion: nil)
        }
             
   }
    
    
 func draw() -> Bool
    {
        for button in button_array
        {
            if(button.title(for: .normal) == nil)
            {
                return false
            }
        }
        return true
    }

    
    func victory(_ s: String) -> Bool
    {
        if(A1_button.title(for: .normal) == s && A2_button.title(for: .normal) == s && A3_button.title(for: .normal) == s )
        {
            return true
        }
        if(B1_button.title(for: .normal) == s && B2_button.title(for: .normal) == s && B3_button.title(for: .normal) == s )
        {
            return true
        }
        if(C1_button.title(for: .normal) == s && C2_button.title(for: .normal) == s && C3_button.title(for: .normal) == s )
        {
            return true
        }
        
        
        if(A1_button.title(for: .normal) == s && B1_button.title(for: .normal) == s && C1_button.title(for: .normal) == s )
        {
            return true
        }
        if(A2_button.title(for: .normal) == s && B2_button.title(for: .normal) == s && C2_button.title(for: .normal) == s )
        {
            return true
        }
        if(A3_button.title(for: .normal) == s && B3_button.title(for: .normal) == s && C3_button.title(for: .normal) == s )
        {
            return true
        }
        
        
        
        if(A1_button.title(for: .normal) == s && B2_button.title(for: .normal) == s && C3_button.title(for: .normal) == s )
        {
            return true
        }
        if(A3_button.title(for: .normal) == s && B2_button.title(for: .normal) == s && C1_button.title(for: .normal) == s )
        {
            return true
        }
    
        
        return false
    }
    
    
}

