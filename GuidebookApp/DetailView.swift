//
//  DetailedView.swift
//  GuidebookApp
//
//  Created by Jonathan Guerrero on 5/12/25.
//

import SwiftUI

struct DetailView: View {
    var attraction: Attraction
    var body: some View {
        VStack (spacing:20){
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
            ScrollView (showsIndicators: false){
                VStack (alignment: .leading, spacing: 20){
                    Text(attraction.name)
                        .font(.title)
                        .bold()
                    Text(attraction.longDescription)
                        .multilineTextAlignment(.leading)
                    // Create URL instance based on URL Scheme
                    if let url = URL(string: "maps://?q=\(attraction.name.replacingOccurrences(of: " ", with: "+"))&sll=\(attraction.latLong.replacingOccurrences(of: " ", with: ""))&z=10&t=s") {
                        
                        // Test if URL can be opened
                        if UIApplication.shared.canOpenURL(url) {
                            // Open the URL
                            Button {
                                UIApplication.shared.open(url)
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue)
                                        .frame(height: 40)
                                    Text("Get Directions")
                                        .foregroundColor(.white)
                                }
                            }
                            
                        }
                        
                    }
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
        }.ignoresSafeArea()
        
    }
    
}

#Preview {
    DetailView(attraction: Attraction(name: "Ghibli Museum",
                                      summary: "The Ghibli Museum is a museum showcasing the work of the Japanese animation studio Studio Ghibli.",
                                      longDescription: """
   The Ghibli Museum (三鷹の森ジブリ美術館, Mitaka no Mori Jiburi Bijutsukan, Mitaka Forest Ghibli Museum) is a museum showcasing the work of the Japanese animation studio Studio Ghibli. It is located in Inokashira Park in Mitaka, a western city of Tokyo, Japan. The museum combines features of a children's museum, technology museum, and a fine arts museum, and is dedicated to the art and technique of animation. Features include a replica of the Catbus from My Neighbor Totoro (1988), a café, bookstore, rooftop garden, and a theater for exclusive short films by Studio Ghibli.

   On the bottom floor is an exhibit room showing the history and science of animation, including a three-dimensional zoetrope named "Bouncing Totoro", with models of characters from My Neighbor Totoro (1988). On the first floor is a mock-up of an animation studio. Called "Where a Film is Born," the five-room exhibit is meant to showcase the creative process of an animation filmmaker such as illustration techniques. Packed with books and toys, the room also displays drawings and illustrations that cover the walls. Another exhibit demonstrates the process of creating an animated film, with sketches, storyboarding, keyframing, cleanup, coloring and background painting.
   """,
                                      imageName: "ghibli", latLong: "35.696794229887736, 139.57038850594148"))
}
