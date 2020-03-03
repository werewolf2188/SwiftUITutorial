//
//  UserData.swift
//  Landmarks
//
//  Created by Enrique Ricalde on 2/27/20.
//  Copyright © 2020 american airlines. All rights reserved.
//

import SwiftUI

import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
