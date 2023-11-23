//
//  SettingsView.swift
//  Hike
//
//  Created by Eliude Vemba on 23/11/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER

            HStack {
                Spacer()
                
                Image(systemName: "laurel.leading")
                    .font(.system(size: 80, weight: .black))
                
                VStack(spacing: -10) {
                    Text("Hike")
                        .font(.system(size: 66, weight: .black))
                    
                    Text("Editor\'s choiche")
                        .fontWeight(.medium)
                }
                
                Image(systemName: "laurel.trailing")
                    .font(.system(size: 80, weight: .black))
                
                Spacer()
            }
            .padding(.top, 8)
            .foregroundStyle(
                LinearGradient(
                    colors: [
                        .customGreenDark,
                        .customGreenMedium,
                        .customGreenLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            
            VStack(spacing: 8) {
                Text("Where can you find\nperfect tracks?")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday.\nFind the best day hikes in app")
                    .font(.footnote)
                    .italic()
                
                Text("Dust off the boots! It's time for a walk.")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.customGreenMedium)
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity)
            .listRowSeparator(.hidden)
        }
        
        // MARK: - SECTION: ICONS
        
        
        
        // MARK: - SECTION: ABOUT
    }
}

#Preview {
    SettingsView()
}
