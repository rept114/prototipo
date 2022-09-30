//
//  ViewController.swift
//  prototipo
//
//  Created by Alumno on 9/23/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeronajesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var personajes : [Personaje] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        personajes.append(Personaje(Personaje: "Erik"))
        personajes.append(Personaje(Personaje: "Rodrigo"))
        personajes.append(Personaje(Personaje: "Pereo"))
        personajes.append(Personaje(Personaje: "Torres"))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personajes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPersonaje") as! CeldaPersonajesController
            celda.lblPersonaje.text = personajes[indexPath.row].Personaje
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}

