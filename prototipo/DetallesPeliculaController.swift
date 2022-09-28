//
//  DetallesPeliculaController.swift
//  prototipo
//
//  Created by Alumno on 9/26/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesPeliculasController : UIViewController {
   
    @IBOutlet weak var lblReparto: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblDirector: UILabel!
    var pelicula: Pelicula?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles de pelicula"
        
        if pelicula != nil {
            self.title = pelicula?.titulo
            lblDirector.text = pelicula?.director
            lblAño.text = pelicula?.año
            lblGenero.text = pelicula?.genero
            lblReparto.text = pelicula?.reparto
        }
    }
}
