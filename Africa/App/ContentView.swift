//
//  ContentView.swift
//  Africa
//
//  Created by Abdelrahman Mohamed on 20.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    let animal: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animal) { animal in
                    
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
