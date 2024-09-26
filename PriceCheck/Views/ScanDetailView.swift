//
//  ScanDetailView.swift
//  PriceCheck
//
//  Created by 顾芮名 on 9/26/24.
//

import SwiftUI

struct ScanDetailView: View {
    var scan: PriceScan
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(scan.item)")
                .bold()
                .font(.title)
                .padding(.bottom, 8)
          
            Text("As of: \(scan.onDate())")
                .font(.subheadline)
                .padding(.bottom, 8)
            
            Text("Price: \(Helper.asCurrency(scan.price))")
                .font(.headline)
                .padding(.bottom, 8)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Scan Details")
    }
}
