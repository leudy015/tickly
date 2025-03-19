//
//  WrapperTouchTrackingView.swift
//  tickliy
//
//  Created by Leudy Martes on 19/3/25.
//

import SwiftUI
import TicklySessionRecorder

public struct TouchTrackingViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> TouchTrackingView {
        return TouchTrackingView()
    }

    func updateUIView(_ uiView: TouchTrackingView, context: Context) {
        // Aquí puedes actualizar la vista si el estado cambia
    }
}
