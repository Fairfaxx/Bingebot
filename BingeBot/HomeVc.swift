//
//  ViewController.swift
//  BingeBot
//
//  Created by Fede Lemaire on 6/12/20.
//  Copyright © 2020 Fede Lemaire. All rights reserved.
//

import UIKit

class HomeVc: UIViewController {

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
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }

    
    func updateShowsLabel() {
        showLbl.text = shows.joined(separator: ", ")
    }
    
    @IBAction func bingeBtnPressed(_ sender: Any) {
        randomShowLbl.text = shows.randomElement()
        randomShowLbl.isHidden = false
        bingebotSpokenLbl.isHidden = false
    }
    
    
    
    
    
    @IBAction func addShowBtnPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else {return}
        if addShowTextField.text != "" {
        shows.append(showName)
        updateShowsLabel()
        addShowTextField.text = ""
        showsStackView.isHidden = false
        if shows.count >= 2{
            randomShowStackView.isHidden = false
            bingebotSpokenLbl.isHidden = true
            randomShowLbl.isHidden = true
            
        }
        
       }
    }
    
    
    @IBAction func clearQueryPressed(_ sender: Any) {
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
        shows.removeAll()
    }
    
}

