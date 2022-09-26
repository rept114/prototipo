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
   
    var pelicula: Pelicula?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles de pelicula"
        
        if pelicula != nil {
            self.title = pelicula?.titulo
        }
    }
}
