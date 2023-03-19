//
//  ProgressBar.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Float

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.3))
                    .frame(height: 10)

                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geometry.size.width * CGFloat(progress), height: 10)
            }
            .cornerRadius(5)
        }.padding()
    }
}

struct ProgressBar_Previews: PreviewProvider {
    @State static var progress: Float = 0.5
    static var previews: some View {
        ProgressBar(progress: $progress)
    }
}
