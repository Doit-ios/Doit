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
                Image(systemName: "book")
                    .font(.system(size: 60))
                    .foregroundColor(Color.orange)
                Image(systemName: "headphones")
                    .foregroundColor(Color.brown)
                    .font(.system(size: 60))
                Image(systemName: "figure.walk")
                    .font(.system(size: 60))
                Image(systemName: "character.book.closed")
                    .font(.system(size: 60))
                    .foregroundColor(Color.indigo)
            }
            HStack {
                Text("팀 색 고르기")
                Spacer()
            }.padding()
            HStack {
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.red)
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.green)
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.purple)
            }
            HStack{
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.blue)
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.pink)
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
