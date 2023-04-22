//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Blu on 2023/04/22.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var section: Theme

    var body: some View {
        Picker("Theme", selection: $section) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(section: .constant(.periwinkle))
    }
}
