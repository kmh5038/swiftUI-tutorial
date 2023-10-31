//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 김명현 on 10/31/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { scrum in // DailyScrum 배열을 불러올건데 그 키값으로 .title을 사용 -> Identifiable 프로토콜을 채용해서 UUID로 식별자 변경
            CardView(scrum: scrum) // 각 리스트를 CardView로 구성
                .listRowBackground(scrum.theme.mainColor) // 각 리스트를 불러온 DailyScrum 배열요소에 지정된 theme의 색을 mainColor로 접근하여 색을 입힌다
            
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
