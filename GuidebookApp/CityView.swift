//
//  ContentView.swift
//  GuidebookApp
//
//  Created by Jonathan Guerrero on 5/12/25.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            Text(city.name)
                        }
                    }
                    
                }
                .padding()
        }
            .onAppear() {
                cities = dataService.getData()
            }
        }
    }
}

#Preview {
    CityView()
}
