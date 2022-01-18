//
//  CreateView.swift
//  Doit (iOS)
//
//  Created by Jinhee on 2022/01/18.
//

import SwiftUI

struct CreateView: View {
    @State var title = ""
    @State var introduction = ""
    @State var book = false
    @State var headphones = false
    @State var walk = false
    @State var character = false
    @State var red = false
    @State var green = false
    @State var purple = false
    @State var blue = false
    @State var mint = false
    @State var yellow = false
    
    var body: some View {
        VStack {
            Text("만들기")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("제목")
                Spacer()
            }.padding()
            TextField("제목을 입력하세요.", text: $title)
                .padding(.all, 8.0)
                .background(Color(.systemGray5))
                .cornerRadius(10)
            
            HStack {
                Text("챌린지 소개")
                Spacer()
            }.padding()
            TextField("간단하게 소개해주세요.", text: $introduction)
                .padding(.all, 8.0)
                .background(Color(.systemGray5))
                .cornerRadius(10)
            
            HStack {
                Text("아이콘 고르기")
                Spacer()
            }.padding()
            HStack {
                Button(action: {
                    self.book.toggle()
                }) {
                    Image(systemName: "book")
                        .font(.system(size: 60))
                        .foregroundColor(Color.orange)
                }
                Button(action: {
                    self.headphones.toggle()
                }) {
                    Image(systemName: "headphones")
                        .foregroundColor(Color.brown)
                        .font(.system(size: 60))
                }
                Button(action: {
                    self.walk.toggle()
                }) {
                    Image(systemName: "figure.walk")
                        .font(.system(size: 60))
                        .foregroundColor(Color.black)
                }
                Button(action: {
                    self.character.toggle()
                }) {
                    Image(systemName: "character.book.closed")
                        .font(.system(size: 60))
                        .foregroundColor(Color.indigo)
                }
            }
            HStack {
                Text("팀 색 고르기")
                Spacer()
            }.padding()
            HStack {
                Button(action: {
                    self.red.toggle()
                }) {
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.red)
                }
                Button(action: {
                    self.green.toggle()
                }) {
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.green)
                }
                Button(action: {
                    self.purple.toggle()
                }) {
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.purple)
                }
            }
            HStack{
                Button(action: {
                    self.blue.toggle()
                }) {
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.blue)
                }
                Button(action: {
                    self.mint.toggle()
                }) {
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.mint)
                }
                Button(action: {
                    self.yellow.toggle()
                }) {
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.yellow)
                }
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
