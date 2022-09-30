//
//  Pelicula.swift
//  prototipo
//
//  Created by Alumno on 9/23/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation

class Pelicula {
    var titulo : String
    var año: String
    var director : String
    var genero : String
    init(titulo: String, director: String, genero: String, año: String) {
        self.titulo = titulo
        self.año = año
        self.director = director
        self.genero = genero
    }
}
