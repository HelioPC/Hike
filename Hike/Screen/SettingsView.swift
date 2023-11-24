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
            
            // MARK: - SECTION: ICONS
            
            
            
            // MARK: - SECTION: ABOUT
            
            Section {
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent: "Hike",
                    rowTintColor: .blue
                )
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent: "iOS, iPadOS",
                    rowTintColor: .red
                )
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange
                )
                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTintColor: .purple
                )
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Eliude Vemba",
                    rowTintColor: .mint
                )
                CustomListRowView(
                    rowLabel: "Designer",
                    rowIcon: "paintpalette",
                    rowContent: "Robert Petras",
                    rowTintColor: .pink
                )
                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTintColor: .indigo, rowLinkLabel: "Credo Academy",
                    rowLinkDestination: "https://credo.academy"
                )
            } header: {
                Text("ABOUT THE APP")
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright © All right reserved")
                    Spacer()
                }
                .padding(.vertical, 8)
            }
        }
    }
}

#Preview {
    SettingsView()
}
