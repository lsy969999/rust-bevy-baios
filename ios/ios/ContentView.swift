//
//  ContentView.swift
//  ios
//
//  Created by SY L on 1/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{
            tt();
        }
    }
    
    
    func tt(){
        test_print();
        let result  = rust_greeting("hifff");
        let swift_result = String(cString: result!);
        print("swift_result: \(swift_result)");
    }
}

#Preview {
    ContentView()
}
