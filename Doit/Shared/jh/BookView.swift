//
//  BookView.swift
//  Doit (iOS)
//
//  Created by Jinhee on 2022/01/18.
//

import SwiftUI
import FSCalendar

struct BookView: View {
    @State var selectedDate: Date = Date()
    @State var book = false
    
    var body: some View {
        VStack {
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
                Spacer()
            }
            
            DatePicker("minicalender", selection: $selectedDate)
                .padding()
                .datePickerStyle(GraphicalDatePickerStyle())
            Spacer()
            
            Button(action: {
                self.book.toggle()
            }) {
                // 챌린지 했을 경우
                if(self.book) {
                    Image(systemName: "book")
                        .foregroundColor(Color.green)
                        .font(.system(size: 60))
                        .padding()
                }
                else {
                    Image(systemName: "book")
                        .foregroundColor(Color.black)
                        .font(.system(size: 60))
                        .padding()
                }
            }
            Spacer()
            Spacer()
            Spacer()
        }
    }
}


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
