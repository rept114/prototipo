//
//  ViewController.swift
//  prototipo
//
//  Created by Alumno on 9/23/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var peliculas : [Pelicula] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peliculas.append(Pelicula(titulo: "Titanic", director: "James Cameron", genero: "Drama", año: "1997"))
        peliculas.append(Pelicula(titulo: "Chabelo y Pepito contra los monstruos", director: "José Estrada", genero: "Comedia", año: "1973"))
        peliculas.append(Pelicula(titulo: "Vacaciones de terror", director: "Rene Cardona", genero: "Terror", año: "1989"))
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculasController
        celda.lblDirector.text = peliculas[indexPath.row].director
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.lblGenero.text = peliculas[indexPath.row].genero
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPeliculasController
        destino.pelicula = peliculas[0]
    }
}

