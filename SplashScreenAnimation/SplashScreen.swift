//  /*
//
//  Project: SplashScreenAnimation
//  File: SplashScreen.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.12.2023
//
//  */

import SwiftUI

struct SplashScreen: View {
    @State private var isLoading: Bool = true
    
    var body: some View {
        
        ZStack {
            if isLoading {
                Color.black
                    .ignoresSafeArea()
                Image("swiftui")
                    .resizable()
                    .scaledToFit()
                    .font(.system(size: 120, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                            withAnimation {
                                self.isLoading = false
                                
                            }
                        }
                    }
            } else {
                Text("Hi there, I'm Eli")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("S"))
            }
        }
    }
}

#Preview {
    SplashScreen()
}
