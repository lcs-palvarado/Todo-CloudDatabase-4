//
//  ItemView.swift
//  TodoList
//
//  Created by Russell Gordon on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
  //receive a reference to the view model from the parent view.
    @Bindable var viewModel: TodoListViewModel
    
    var body: some View {
        Label(
            title: {
                TextField("", text: $currentItem.title, axis: .vertical)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                
            }
        )
    }
}

#Preview {
    
    @State var previewsViewModel = TodoListViewModel()
    
    return List {
        ItemView(currentItem: .constant(firstItem), viewModel: previewsViewModel)
        ItemView(currentItem: .constant(secondItem), viewModel: previewsViewModel)
    }
}
