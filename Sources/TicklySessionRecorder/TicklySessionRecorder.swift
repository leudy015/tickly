// The Swift Programming Language
// https://docs.swift.org/swift-book
// SessionRecorder Package

import UIKit
import Foundation

public struct TouchEvent: Codable {
    public let timestamp: TimeInterval
    public let location: CGPoint
}

public class EventRecorder {
    public static let shared = EventRecorder()
    private var events: [TouchEvent] = []
    
    private init() {}
    
    public func recordTouch(location: CGPoint) {
        let event = TouchEvent(timestamp: Date().timeIntervalSince1970, location: location)
        events.append(event)
    }
    
    public func saveEventsToFile() {
        let fileURL = getDocumentsDirectory().appendingPathComponent("events.json")
        do {
            let data = try JSONEncoder().encode(events)
            try data.write(to: fileURL)
            print("Events saved: \(fileURL)")
        } catch {
            print("Error saving events: \(error)")
        }
    }
    
    public func getEvents() -> [TouchEvent] {
        return events
    }
    
    private func getDocumentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
}

public class TouchTrackingView: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first {
            EventRecorder.shared.recordTouch(location: touch.location(in: self))
        }
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        if let touch = touches.first {
            EventRecorder.shared.recordTouch(location: touch.location(in: self))
        }
    }
}
