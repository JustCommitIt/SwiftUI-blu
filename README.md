# SwiftUI-tutorials-blu

> Apple의 공식 SwiftUI 튜토리얼을 따라하며 학습하는 레포입니다.

<br>

|<img src="https://avatars.githubusercontent.com/u/71758542?v=4" width=300>|
|:---|
|💙 학습자: [Blu](https://github.com/calledBlu)|
|🔗 학습 자료: [튜토리얼 링크1](https://developer.apple.com/tutorials/app-dev-training), [튜토리얼 링크2](https://developer.apple.com/tutorials/swiftui)|
|🗓️ 학습 기간: `23.04.13` ~ |

<br>

# Record blu's study

[Keyword](#-keyword)

[Study](#-study)

[Trouble Shooting](#-trouble-shooting)

[Check List](#-check-list)

[Reference Link](#-reference-link)

[A-ha!](#-a-ha-)

## 🔑 Keyword
`SwiftUI` , `Stack`, `Text`, `SF Symbols`, `alignment`, `Supplement accessibility data`, `Label`

## 📚 Study
### SwiftUI
- **SwiftUI overview**    
SwiftUI is a **declarative framework** for building apps for any Apple platform. SwiftUI provides a common API that you can use to define an app’s user interface and platform-specific behavior.    
Create apps more quickly and with fewer errors with these key SwiftUI features:    
    - **Declarative synta**—Define which views appear onscreen - using simple Swift structures.    
    - **A compositional API**—Quickly create and iterate your user interface using built-in views and modifiers. Compose more complex views by combining simpler views.    
    - **A powerful layout system**—Easily arrange views onscreen relative to their parent views and to each other. When existing views and controls don’t suit your needs, you can draw your own.    
    - **Views that reflect app data**—Define a view’s data dependencies, and SwiftUI automatically updates the view when data changes, avoiding errors from invalid view states.    
    - **Automatic accessibility support**—SwiftUI adds basic accessibility that you’ll learn to enhance with minimal effort.    
- **나만의 언어로 정리하는 Swift는**
    - multiplatform app의 레이아웃과 액션을 구성하는 데 사용
    - declarative framework(선언형 프레임워크)
    - UIKit 는 **Event driven** 이라면 SwiftUI는 **Data driven**
    - View를 Customize 하기 위해 **수정자**로 알려진 메서드를 호출, 수정자는 새 View를 반환함, 수정자는 단일 보기에서 여러 개 사용할 수 있으며, 수정자를 연결하기 위해서는 수직으로 쌓으면 됨
- SwiftUI view file의 구조
    - View 프로토콜을 준수하며 View를 반환하는 body 속성의 단일 요구사항
        - View의 콘텐츠, 레이아웃, 동작을 설명
    - 캔버스에 표시할 해당 Viewdml preview를 정의

### Text
- `.font()` modifier(수정자)로 텍스트 크기를 조절할 수 있음

### SF Symbols
- System이 SF Symbols의 이미지는 font처럼 취급하여 사용자의 디바이스 설정에 따라 동적으로 확장됨

### Alignment
- 정렬의 기본 동작은 **center**이지만 재정의하여 정렬 가능
- 일부 system은 left, right를 사용하지만 SwiftUI는 **leading, trailing 정렬을 사용하여 앱의 현지화를 용이하게 함**
- 직접 지정해주는 방법도 있지만 VStack 선택 후 Attributes inspector에서 Alignment 옵션을 사용하여 정렬을 설정할 수도 있음

### Supplement accessibility data (접근성 보완)
- SwiftUI에는 접근성 기능이 내장되어 있음
- 약간의 추가 작업으로 접근성 지원을 받을 수 있음
- 예) Text view의 문자열 콘텐츠에 자동으로 접근 가능, 하지만 사용자의 접근성 환경을 개선하기 위해 추론된 데이터를 보완해야 할 수 있음
- `.accessibilityAddTraits()`를 사용하면 특성을 추가해서 읽어주는 것, 예시대로 `.isHeader`를 넣으면 사용한 요소와 함께 "heading"이라고 읽어주어 view 의 information architecture를 전달하는 데 도움이 됨

### Label
- 제목이 있는 아이콘으로 구성된 표준 레이블
- 가장 일반적인 것은 아이콘 + 레이블 조합
- `.labelStyle()` 수정자를 통해 타이틀만 보이게, 아이콘만 보이게, 둘 다 보이게 설정할 수 있음
- 기본 스타일을 수정하여 커스터마이징된 레이블 스타일을 만들 수도 있음
- 완전히 새로운 스타일을 만들고 싶은 경우 LabelStyle 프로토콜을 채택 후 LabelStyleConfiguration을 구현하면 됨
- 레이블 그룹에 공통 레이블 스타일을 적용하려면 포함된 뷰 계층 구조에 스타일을 적용하면 됨
    - TrailingIconLabelStyle.swift 파일 참고!
- icon 부분에 SF Symbol과 같은 이미지 대신 programmatically하게 view를 사용하여 레이블을 만드는 것도 가능함    
예) `Circle()` 

## 🏀 Trouble Shooting

## ✅ Check List
- [ ] iOS App Dev Tutorials (SwiftUI)
    - [x] SwiftUI essentials
    - [ ] Views
    - [ ] Navigation and modal presentation
    - [ ] Passing Data
    - [ ] State management

- [ ] 선언형 프레임워크란?
- [ ] UIKit과 SwiftUI의 차이점
- [ ] 미리보기에 static으로 프로퍼티를 선언해주는 이유?(Getting started with Scrumdinger)
- [ ] where절 사용에 대한 공부(Using stacks to arrange views)

## 🔗 Reference Link
- 튜토리얼 시 숙지가 필요한 Swift 공식문서
    - [The Basics](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/)
    - [Closures](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/)

## 💡 A-ha!
- Creating a card view 파트의 Check Your Understanding
    > Which framework should you import to define the structure?
    ```swift
    struct Person {
       var name: String
       var age: Int
       var favoriteColor: Color
    }
    ```
    Foundation을 선택했는데 Color는 SwiftUI에 속해있는 것이다...! UIKit는 UIColor였음!
