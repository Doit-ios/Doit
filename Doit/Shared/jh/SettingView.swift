//
//  SettingView.swift
//  Doit (iOS)
//
//  Created by Jinhee on 2022/01/18.
//

import SwiftUI

struct SettingView: View {
    @State var tag:Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("설정")
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                    NavigationLink(destination: NotificationView(), tag: 1, selection: self.$tag) {}
                    Button(action: {
                        self.tag = 1
                    }) {
                        Image(systemName: "bell")
                            .font(.system(size: 50))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                }
                Divider()
                    .background(Color.black)
                Spacer()
                Circle()
                    .fill()
                    .frame(width: 250, height: 250)
                    .foregroundColor(Color.gray)
                    .padding()
                Spacer()
                Divider()
                    .background(Color.black)
                Text("내 정보")
                    .font(.system(size: 30))
                    .padding()
                Divider()
                    .background(Color.black)
                Text("메모장 확인")
                    .font(.system(size: 30))
                    .padding()
                Spacer()
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
