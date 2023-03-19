//
//  AssociativeQuestionView.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//

import SwiftUI

struct AssociativeQuestionView: View {
    var leftOptions: [String] = ["Left 1", "Left 2", "Left 3", "Left 4", "Left 5"]
    var rightOptions: [String] = ["Right 1", "Right 2", "Right 3", "Right 4", "Right 5"]

    var body: some View {
        HStack(spacing: 80) {
            VStack {
                ForEach(leftOptions, id: \.self) { option in
                    Text(option)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.bottom)
                }
            }
            VStack {
                ForEach(rightOptions, id: \.self) { option in
                    Text(option)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.bottom)
                }
            }
        }
    }
}


struct AssociativeQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        AssociativeQuestionView()
    }
}
