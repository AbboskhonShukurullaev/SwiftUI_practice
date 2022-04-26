//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Abbos Shukurullaev on 24/04/22.
//

import SwiftUI

struct DetailView: View {
    // MARK: - Property
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            //HEADER
            HeaderView(title: "")
            
            //CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            //FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented) {
                        Settings()
                    }
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented) {
                        CreditsName()
                    }
            } //: HSTACK
            .foregroundColor(.secondary)
            
        } //: VSTACK
    }
}

// MARK: - Preview
struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello, World")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
