//
//  NavigationMaster.swift
//  MacLandmarks
//
//  Created by Enrique on 3/2/20.
//  Copyright © 2020 american airlines. All rights reserved.
//

import SwiftUI

struct NavigationMaster: View {
    @Binding var selectedLandmark: Landmark?
    @State private var filter: FilterType = .all
    
    var body: some View {
        VStack {
            Filter(filter: $filter)
              .controlSize(.small)
              .padding([.top, .leading], 8)
              .padding(.trailing, 4)
            
            LandmarkList(
                selectedLandmark: $selectedLandmark,
                filter: $filter
            )
            .listStyle(SidebarListStyle())
        }
        .frame(minWidth: 225, maxWidth: 300)
    }
}

struct NavigationMaster_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMaster(selectedLandmark: .constant(landmarkData[1]))
            .environmentObject(UserData())
    }
}
