//
//  ClassicQuestionView.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//

import SwiftUI

struct ClassicQuestionView: View {
    var question: String = "This is a classic question with 3 choices"
    var choices: [String] = ["Choice 1", "Choice 2", "Choice 3"]

    var body: some View {
        VStack {
            Text(question)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            ForEach(choices, id: \.self) { choice in
                Text(choice)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.bottom)
            }
        }
    }
}


struct ClassicQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicQuestionView()
    }
}
