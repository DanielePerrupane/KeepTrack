//
//  ContentView.swift
//  KeepTrack
//
//  Created by Daniele Perrupane on 08/03/24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @State
    var selectedCategory: Int = 0
    
    @State
    var bilancio: Decimal = 0.00
    @State
    var spesa: Decimal = 0.00
    
    let currencyCod = "EUR"
    @State 
    var titolo: String = ""
    @State 
    var importoSpesa: Decimal = 0
    @State 
    var dataInserimento: Date = .now
    
    var dettagliSpesa: String {
        "\(importoSpesa.formatted(.currency(code: currencyCod)))"
    }
    
    var body: some View {
        Form {
            overViewSection
            insertSection
            detailsSection
            
        }
    }
    
    var insertSection: some View {
        Section {
            TextField("Titolo", text: $titolo)
            TextField("Amount", value: $importoSpesa, format: .currency(code: currencyCod))
            Picker(selection: $selectedCategory) {
                Text("None").tag(0)
                Text("Personale").tag(1)
                Text("Ordinaria").tag(2)
                Text("Eccezionale").tag(3)
            } label: {
                Text("Category")
            }

            DatePicker("Data di inserimento", selection: $dataInserimento , displayedComponents: .date)
            Button("Inserisci") {
                bilancio = bilancio + importoSpesa
                importoSpesa = 0
                dataInserimento = .now
                titolo = ""
            }
            .disabled(importoSpesa <= 0 || titolo.isEmpty)
            
        } header: {
            Text("insertSection")
        }
    }
    
    var detailsSection: some View {
        Section{
            Text("\(titolo)")
            Text(dettagliSpesa)
            Text("\(dataInserimento.formatted(date: .abbreviated, time: .shortened))")
        } header: {
            Text("detailsSection")
        }
    }
    
    var overViewSection: some View {
        Section {
            Text(bilancio, format: .currency(code: currencyCod))
        } header: {
            Text("overViewSection")
        }
    }
}



#Preview {
    ContentView()
}
