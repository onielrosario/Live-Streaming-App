//
//  ViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      setupUI()
    }
    
    @IBAction func goToPlayer(_ sender: UIButton) {
   let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let player = storyBoard.instantiateViewController(withIdentifier: "DetailVC")
        present(player, animated: true, completion: nil)
    }
    
    
    private func setupUI() {
        AppUtility.lockOrientation(orientation: .portrait)
    }
    
}
