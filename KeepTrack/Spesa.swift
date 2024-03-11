//
//  Spesa.swift
//  KeepTrack
//
//  Created by Daniele Perrupane on 08/03/24.
//

import Foundation

final class Spesa: Identifiable, ObservableObject {
    
    var id: UUID = UUID()
    var titolo: String
    var date: Date
    var importo: Int
    @Published var isCompleted: Bool
    @Published var isArchived: Bool = false
    
    init(titolo: String = "",
         date: Date = .now,
         importo: Int = 0,
         isCompleted: Bool = false) {
        self.titolo = titolo
        self.date = date
        self.importo = importo
        self.isCompleted = isCompleted
    }
    
    
}

//extension Spesa {
//    
//    static var dummy: Spesa {
//        .init(titolo: "Item 1",
//              date: .now)
//    }
//}
