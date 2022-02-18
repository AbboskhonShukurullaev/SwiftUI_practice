//
//  ContentView.swift
//  Fruits
//
//  Created by Abbos Shukurullaev on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
