//  LessonView.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 17/03/2023.
//

import SwiftUI

struct LessonView: View {
    var body: some View {
        List {
            ForEach(0..<10) { index in
                NavigationLink(destination: QuestionsFunnelView()) {
                    LessonChapterCard(lessonIndex: index + 1, lessonTitle: "Lesson \(index + 1)", completion: Double(index) / 10.0)
                }
            }
        }
        .navigationTitle("Lessons")
    }
}

struct LessonChapterCard: View {
    var lessonIndex: Int
    var lessonTitle: String
    var completion: Double

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(lessonIndex)")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text(lessonTitle)
                    .font(.title3)
            }

            Spacer()

            VStack(alignment: .trailing) {
                Text("Completion:")
                    .font(.caption)
                    .fontWeight(.bold)

                ProgressView(value: completion)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.green))
            }
        }
        .padding()
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView()
    }
}

