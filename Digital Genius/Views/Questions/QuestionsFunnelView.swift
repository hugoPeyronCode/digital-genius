//  QuestionsFunnelView.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 17/03/2023.
//

import SwiftUI

struct QuestionsFunnelView: View {
        @State private var progress: Float = 0
        @State private var currentQuestionIndex: Int = 0
        @State private var questionType: Int = 1
        @Environment(\.presentationMode) var presentationMode


    var body: some View {
        GeometryReader { geometry in
            VStack {
                ProgressBar(progress: $progress)
                       .frame(height: 10)
                       .padding(.horizontal)
                Text("Question \(currentQuestionIndex + 1)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer() // Add a Spacer to the left of the Group
                        
                        Group {
                            switch questionType {
                            case 1:
                                AssociativeQuestionView()
                            case 2:
                                ClassicQuestionView()
                            case 3:
                                SequenceQuestionView()
                            default:
                                Text("Unknown question type")
                            }
                        }
                        .frame(height: geometry.size.height * 0.5) // Set a fixed height for question views
                        
                        Spacer() // Add a Spacer to the right of the Group
                    }
                    Spacer()
                } // Set a fixed height for question views

                Spacer()
                
                VStack {
                    if currentQuestionIndex < 14 {
                        Button(action: {
                            // Add logic for the next question
                            currentQuestionIndex += 1
                            withAnimation(.easeInOut) { // Use withAnimation here
                                   progress = Float(currentQuestionIndex) / 14
                               }
                            // Update questionType to switch between question views
                            questionType = (questionType % 3) + 1
                            // Update the progress bar
                            progress = Float(currentQuestionIndex) / 14
                        }) {
                            Text("Next")
                                .bold()
                                .frame(width: 200, height: 50)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    } else {
                        Button(action: {
                            // Navigate back to the lessons view
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Finish")
                                .bold()
                                .frame(width: 200, height: 50)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
                
            }
            .padding()
        }
    }
}


struct QuestionsFunnelView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsFunnelView()
    }
}
