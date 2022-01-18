//
//  NotificationView.swift
//  Doit (iOS)
//
//  Created by Jinhee on 2022/01/18.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            HStack {
                Text("알림")
                    .font(.largeTitle)
                    .padding()
                Spacer()
            }
            Divider()
                .background(Color.black)
            Spacer()
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
