//
//  WrapperTouchTrackingView.swift
//  tickliy
//
//  Created by Leudy Martes on 19/3/25.
//

import SwiftUI
import TicklySessionRecorder

public struct TouchTrackingViewRepresentable: UIViewRepresentable {   // Asegúrate de que sea 'public'
    public func makeUIView(context: Context) -> TouchTrackingView {
        return TouchTrackingView()
    }

    public func updateUIView(_ uiView: TouchTrackingView, context: Context) {}
}
