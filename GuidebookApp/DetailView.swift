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
        ScrollView {
            Image(attraction.imageName)
                .resizable()
            Text(attraction.name)
            Text(attraction.longDescription)
        }
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
