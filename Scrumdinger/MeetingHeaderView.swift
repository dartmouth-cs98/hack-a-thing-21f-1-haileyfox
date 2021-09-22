//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Hailey Fox on 9/22/21.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Time remaining"))
        .accessibilityValue(Text("10 minutes"))
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
