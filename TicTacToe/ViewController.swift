//
//  ViewController.swift
//  TicTacToe
//
//  Created by Lâm Bảo on 08/04/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtPlayerName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtPlayerName.resignFirstResponder()
    }
    
    
    @IBAction func btnStart(_ sender: UIButton) {
        guard !txtPlayerName.text!.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "GameFragment") as! GameViewController
        controller.playerName = txtPlayerName.text
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
    }

    // truyen du lieu sang man khac
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let controller = segue.destination as? GameViewController {
//            controller.playerName = txtPlayerName.text
//        }
//    }
    
    // validate trc khi chuyen man
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if identifier == "navigateToGameVC" {
//            if txtPlayerName.text!.trimmingCharacters(in: .whitespaces).isEmpty {
//                return false
//            }
//        }
//
//        // false => k chuyen
//        // true => ok
//        return true
//    }
}

