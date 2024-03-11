//
//  ArchiveView.swift
//  KeepTrack
//
//  Created by Daniele Perrupane on 08/03/24.
//

import SwiftUI

struct ArchiveView: View {
    
    //@Binding var archivedSpese: [Spesa]
    @State private var listaSpese: [Spesa] = [
    
        Spesa(titolo: "Palestra", date: .now, importo: 0, isCompleted: true)
        
    ]
    
    var body: some View {
        
        Text("ARCHIVED VIEW")
        
//        ZStack {
//            if archivedSpese.isEmpty{
//                ContentUnavailableView("Nessuna spesa disponibile", systemImage:  "archivebox")
//            } else {
//                List{
//                    ForEach(archivedSpese) { spesa in
//                        HStack {
//                            Text("\(spesa.titolo)")
//                            Spacer()
//                            
//                        }
//                    }
//                }
//                .listStyle(SidebarListStyle())
//            }
//        }
    }
}

#Preview {
    ArchiveView()
}
