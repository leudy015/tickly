//
//  WrapperTouchTrackingView.swift
//  tickliy
//
//  Created by Leudy Martes on 19/3/25.
//

import SwiftUI
import TicklySessionRecorder

// Cambia el nivel de protección a 'public'
public struct TouchTrackingViewRepresentable: UIViewRepresentable {

    // Cambia el inicializador a 'public'
    public init() {}

    public func makeUIView(context: Context) -> TouchTrackingView {
        return TouchTrackingView()
    }

    public func updateUIView(_ uiView: TouchTrackingView, context: Context) {}
}
