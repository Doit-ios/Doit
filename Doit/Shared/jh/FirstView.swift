//
//  FirstView.swift
//  Doit (iOS)
//
//  Created by Jinhee on 2022/01/18.
//

import SwiftUI

struct FirstView: View {
    @State var tag:Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                Text("참여하기")
                    .font(.largeTitle)
                HStack {
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.red)
                    NavigationLink(destination: BookView(), tag: 1, selection: self.$tag) {}
                    Button(action: {
                        self.tag = 1
                    }) {
                        Text("책 읽기")
                            .frame(width: 250, height: 65)
                            .background(Color(.systemGray4))
                            .font(.system(size: 30))
                            .foregroundColor(Color.black)
                    }
                }
                HStack {
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.green)
                    NavigationLink(destination: CreateView(), tag: 2, selection: self.$tag) {}
                    Button(action: {
                        self.tag = 2
                    }) {
                        Text("물 마시기")
                            .frame(width: 250, height: 65)
                            .background(Color(.systemGray4))
                            .font(.system(size: 30))
                            .foregroundColor(Color.black)
                    }
                }
                
                HStack {
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.purple)
                    NavigationLink(destination: CreateView(), tag: 3, selection: self.$tag) {}
                    Button(action: {
                        self.tag = 3
                    }) {
                        Text("새로 시작하기")
                            .frame(width: 250, height: 65)
                            .background(Color(.systemGray4))
                            .font(.system(size: 30))
                            .foregroundColor(Color.black)
                    }
                }
                Spacer()
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
