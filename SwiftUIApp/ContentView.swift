//
//  ContentView.swift
//  AlorFeriIosApp
//
//  Created by Babul Mirdha on 24/4/21.
//

import SwiftUI

struct ContentView: View {
    
    var bookList:[Book] = []
    
    var body: some View {
        
        
        NavigationView {
            List{
                
                ForEach(bookList){ item in
                    TableViewCell(book: item)
                }
                
                HStack {
                    Spacer()
                    Text("Total: \(bookList.count)")
                    Spacer()
                }
                
            }.navigationTitle("Book List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(bookList: bookDataSource)
    }
}

struct TableViewCell: View {
     
    var book: Book
    
    var body: some View {
        NavigationLink(destination: BookDetailsView(book: book)){
            Image(book.coverName)
                .cornerRadius(5)
            
            
            VStack(alignment: .leading) {
                Text(book.name).font(.headline).foregroundColor(.red)
                Text(book.authors)
                    .font(.subheadline)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
