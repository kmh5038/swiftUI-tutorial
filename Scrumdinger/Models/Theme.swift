//
//  Theme.swift
//  Scrumdinger
//
//  Created by 김명현 on 10/31/23.
//

// DailyScrum 구조체의 프로퍼티인 theme의 타입을 만드는 파일

import SwiftUI



enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    
    var accentColor: Color { // 연산 프로퍼티
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color { // 연산 프로퍼티
        Color(rawValue)
    }
    
    var name: String { // 연산 프로퍼티
        rawValue.capitalized
    }
}
