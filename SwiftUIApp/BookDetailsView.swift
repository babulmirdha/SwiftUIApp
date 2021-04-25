//
//  BookDetailsView.swift
//  AlorFeriIosApp
//
//  Created by Babul Mirdha on 24/4/21.
//

import SwiftUI

struct BookDetailsView: View {
    
    var book:Book
    
    var body: some View {
        
        VStack{
            Image(book.coverName).resizable().aspectRatio(contentMode: .fit)
            Text(book.name)
        }
     
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(book:bookDataSource[0])
    }
}
