//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Abdelrahman Mohamed on 21.09.2020.
//

import SwiftUI

struct AnimalListItemView: View {
    
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("asjfasjlaflkjasfhjlsafllasffhlasfasflhklhjkasfljhsfaljfsajlh jlljfsajlafsjklfasjlk")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            })
        }
    }
}

// MARK: - PREVIEW

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
