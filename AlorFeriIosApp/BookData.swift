//
//  Books.swift
//  AlorFeriIosApp
//
//  Created by Babul Mirdha on 24/4/21.
//

import Foundation


struct Book:Identifiable {
    var id = UUID()
    var name:String
    var authors:String
    
    var coverName:String
}


let bookDataSource = [
    Book( name: "Ami himu", authors:"Humayon",coverName:"book_cover_2"),
    Book(name: "মুজিব আমার নাম", authors: "Anisul Hosue", coverName:"book_cover_1"),
    
    Book(name: "ekti sahen bangladesh", authors: "Anisul Hosue", coverName:"book_cover_1")

]
