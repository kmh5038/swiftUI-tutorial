//
//  CardView.swift
//  Scrumdinger
//
//  Created by 김명현 on 10/31/23.
//

// Card View를 구성하는뷰

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor) // 다크모드에서 흰색으로 나오는 글씨들을 accentColor를 통해 대비색인 검은색으로 잘 보이게 설정
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0] // DailyScrum 구조체의 인덱스에 접근
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor) // sampleData로 접근한 인덱스의 mainColor를 가지고온다.
            .previewLayout(.fixed(width: 400, height: 60)) // 캔버스를 selectalbe로 변경했을때 보이는 레이아웃 조절
    }
}
