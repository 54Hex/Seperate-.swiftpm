//
//  Introduction.swift
//  Separate!
//
//  Created by WX on 25/5/22.
//

import Foundation
import SwiftUI

//--------------Acknowledgements--------------//

// Assets used image: 
//


//--------------Introduction--------------//
struct Introduction: View {
    var body: some View {
        HStack(spacing: 0) {
            ScrollView {
                Group {
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Introduction")
                                .font(.system(size: 35, weight: .semibold, design: .rounded))
                        }
                    
                    Spacer()
                    
                    VStack {
                        Text("""
        In this Playground App, it will go through different types of separation techniques used in Chemistry.
        
        Different types of Seperation techniques are applied in our daily lives such as dissolving, evaportation, filtration and many more!
        
        The goal of this Playground app is to make learning fun and easy to absorb and understand (: 
        """)
                        .font(.system(size: 30, design: .rounded))
                        .padding()
                    }
                    
                    }
                    VStack {
                        // Insert diff types of seperation techniques
                        Image("")
                            .resizable()
                            .frame(width: 400, height: 500, alignment: .center)
                            .cornerRadius(30)
                        
                            Text("Different Types of Seperation Techniques")
                                .foregroundColor(Color("lgrey1"))
                                .font(.system(size: 20, weight: .regular, design: .rounded))
   
                    }
                   Spacer()
                    
                  
                   
                        
                    
                    
                }
                .padding()
            }
        }
    }
}
