//
//  SequenceQuestion.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//

import SwiftUI

struct SequenceQuestionView: View {
    @State private var words: [String] = ["Word1", "Word2", "Word3", "Word4"]
    @State private var selectedWords: [String] = []

    var body: some View {
        VStack {
            Text("Arrange these words in the correct order:")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            HStack {
                ForEach(words, id: \.self) { word in
                    Button(action: {
                        // Add logic to select word
                        if !selectedWords.contains(word) {
                            selectedWords.append(word)
                        }
                    }) {
                        Text(word)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                }
            }

            HStack {
                ForEach(selectedWords, id: \.self) { word in
                    Text(word)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
            }
        }
    }
}


struct SequenceQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        SequenceQuestionView()
    }
}
