//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 김명현 on 10/31/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 레이블 스타일을 작성하는대로 바꿔준다
        HStack { // 제목, 아이콘 순서로 레이블 스타일을 변경한다
            configuration.title
            configuration.icon
        }
        }

}

extension LabelStyle where Self == TrailingIconLabelStyle { // 확장이 TrailingIconLabelStyle 이라는 타입에만 적용 // Self 는 TrailingIconLabelStyle
    static var trailingIcon: Self { Self() }
}
