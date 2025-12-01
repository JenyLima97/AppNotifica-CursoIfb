//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Jeny on 02/12/25.
//

//Cria a tela por baixo

import Foundation
import UIKit

class LoginViewController: UIViewController{
    var viewMain = LoginView()
    override func loadView() {
        self.view = viewMain
    }
    
    //Server para dar um titulo a tela e carregar  uma navigationBar
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
