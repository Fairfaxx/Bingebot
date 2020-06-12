//
//  ViewController.swift
//  BingeBot
//
//  Created by Fede Lemaire on 6/12/20.
//  Copyright © 2020 Fede Lemaire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showLbl: UILabel!
    @IBOutlet weak var randomShowLbl: UILabel!
    @IBOutlet weak var bingebotSpokenLbl: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func updateShowsLabel() {
        showLbl.text = shows.joined(separator: ", ")
    }
    
    @IBAction func addShowBtnPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else {return}
        shows.append(showName)
        updateShowsLabel()
        addShowTextField.text = ""
        
    }
    
    
    
    

}

