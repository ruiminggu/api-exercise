//
//  ScanView.swift
//  PriceCheck
//
//  Created by 顾芮名 on 9/26/24.
//

import SwiftUI

struct ScanView: View {
    var scan: PriceScan
    
    var body: some View {
        NavigationLink(destination: ScanDetailView(scan: scan)) {
            HStack {
                Text(scan.item)
                
                Spacer()
                
                Text(Helper.asCurrency(scan.price))
                    .bold()
            }
            .padding(.vertical, 4)
        }
    }
}
