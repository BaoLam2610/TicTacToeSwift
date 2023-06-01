//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Lâm Bảo on 08/04/2023.
//

import UIKit

class GameViewController: UIViewController {

    @IBAction func btnClose(_ sender: UIButton) {
    }
    @IBOutlet weak var txtPlayerPoint: UILabel!
    @IBOutlet weak var txtCpuPoint: UILabel!
    @IBOutlet weak var box1: UIImageView!
    
    @IBOutlet weak var box2: UIImageView!
    
    @IBOutlet weak var box3: UIImageView!
    
    
    @IBOutlet weak var box4: UIImageView!
    
    @IBOutlet weak var box5: UIImageView!
    
    @IBOutlet weak var box6: UIImageView!
    @IBOutlet weak var box7: UIImageView!
    
    @IBOutlet weak var box8: UIImageView!
    
    @IBOutlet weak var box9: UIImageView!
    
    var playerName: String!
    var playerPoint = 0
    var cpuPoint = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadPointView()
        
    }

    private func loadPointView() {
        txtPlayerPoint.text = playerName + ": " + String(playerPoint)
        txtCpuPoint.text = "Computer: " + String(cpuPoint)
    }

}
