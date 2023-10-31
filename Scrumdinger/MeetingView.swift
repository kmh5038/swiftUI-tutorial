/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15) // 프로그래스뷰(진행률 바로 표시)
            HStack{ // 수평정렬
                VStack(alignment: .leading) { // 수직정렬
                    Text("Seconds Elapsed") // Text(단순한 글쓰기)
                        .font(.caption) // Text의 폰트 바꾸기
                    Label("300", systemImage: "hourglass.tophalf.fill")
                    // Label(아이콘과 Text)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Secons Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24) // 원 테두리 두께 조절
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {} ) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
