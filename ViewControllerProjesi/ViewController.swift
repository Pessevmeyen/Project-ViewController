//
//  ViewController.swift
//  ViewControllerProjesi
//
//  Created by Furkan Eruçar on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var passcode = ""
    
    override func viewDidLoad() {
        // Uygulama ilk açıldığında karşımıza çıkacak ekran ve kodlar. Herhangi bir işlemden sonra tekrar bu viewDidLoad çağrılmaz
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("view did load")
        view.backgroundColor = .systemPink

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // kullanıcıdan giriş yapıp tekrar giriş alacağımız sayfaya geldiğimizde giriş alanını temizlemek için buraya yazdık.
        print("view  will appear")
        textField.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    
    @IBAction func kontrolEtClicked(_ sender: Any) {
        
        passcode = textField.text!
        
        if passcode == "atil" {
            
            performSegue(withIdentifier: "toIkinciVc", sender: nil)
            
        } else {
            birinciLabel.text = "Şifreniz Yanlış"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // Diğer viewControllerı tanımlamak için kullanıyoruz
        
        if segue.identifier == "toIkinciVc" {
            
            let destinationVc = segue.destination as! ClassIsimleriBuyukHarfleBaslar // Diğer viewcontrol'a bağlanmak için casting yapmamız lazım (as)
            destinationVc.verilenSifre = passcode
        }
    }
}

