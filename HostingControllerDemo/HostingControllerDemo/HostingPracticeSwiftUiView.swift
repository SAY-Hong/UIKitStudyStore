//
//  HostingPracticeSwiftUiView.swift
//  HostingControllerDemo
//
//  Created by 홍세희 on 2023/11/20.
//

import SwiftUI

struct HostingPracticeSwiftUiView: View {
    var body: some View {
        List {
            ForEach(0..<10) { index in
                Text("List \(index)")
            }
        }
    }
}

#Preview {
    HostingPracticeSwiftUiView()
}
