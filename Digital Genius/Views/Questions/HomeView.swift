//
//  HomeView.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//
import SwiftUI

struct HomeView: View {
    @State private var progress: Float = 0

    var body: some View {
        NavigationView {
            VStack {
                
                VStack{
                    
                    Text("Welcome to Digital Marketing Genius!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                VStack {
                    Spacer()
                    Text("Your Learning Progress")
                        .font(.title)
                        .fontWeight(.bold)
                    .padding(.bottom)

                ProgressBar(progress: $progress)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.green))
                }

                NavigationLink(destination: LessonView()) {
                    Text("Start Learning")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
