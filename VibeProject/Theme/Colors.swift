import SwiftUI

// MARK: - Color System
/// A comprehensive color system with both primitive and semantic colors.
/// Use semantic colors in components; primitives exist only as reference values.

public struct Colors {
    // MARK: - Primitive Colors
    
    /// Primary color palette (Indigo)
    public struct Primary {
        public static let c50 = Color(hex: "#eef2ff")
        public static let c100 = Color(hex: "#e0e7ff")
        public static let c200 = Color(hex: "#c7d2fe")
        public static let c300 = Color(hex: "#a5b4fc")
        public static let c400 = Color(hex: "#818cf8")
        public static let c500 = Color(hex: "#6366f1")
        public static let c600 = Color(hex: "#4f46e5")
        public static let c700 = Color(hex: "#4338ca")
        public static let c800 = Color(hex: "#3730a3")
        public static let c900 = Color(hex: "#312e81")
    }
    
    /// Neutral color palette (Grayscale)
    public struct Neutral {
        public static let c0 = Color(hex: "#ffffff")
        public static let c50 = Color(hex: "#f9fafb")
        public static let c100 = Color(hex: "#f3f4f6")
        public static let c200 = Color(hex: "#e5e7eb")
        public static let c300 = Color(hex: "#d1d5db")
        public static let c400 = Color(hex: "#9ca3af")
        public static let c500 = Color(hex: "#6b7280")
        public static let c600 = Color(hex: "#4b5563")
        public static let c700 = Color(hex: "#374151")
        public static let c800 = Color(hex: "#1f2937")
        public static let c900 = Color(hex: "#111827")
    }
    
    /// Success color palette (Green)
    public struct Success {
        public static let c50 = Color(hex: "#f0fdf4")
        public static let c100 = Color(hex: "#dcfce7")
        public static let c200 = Color(hex: "#bbf7d0")
        public static let c300 = Color(hex: "#86efac")
        public static let c400 = Color(hex: "#4ade80")
        public static let c500 = Color(hex: "#22c55e")
        public static let c600 = Color(hex: "#16a34a")
        public static let c700 = Color(hex: "#15803d")
        public static let c800 = Color(hex: "#166534")
        public static let c900 = Color(hex: "#145231")
    }
    
    /// Warning color palette (Amber)
    public struct Warning {
        public static let c50 = Color(hex: "#fffbf0")
        public static let c100 = Color(hex: "#fef3c7")
        public static let c200 = Color(hex: "#fde68a")
        public static let c300 = Color(hex: "#fcd34d")
        public static let c400 = Color(hex: "#fbbf24")
        public static let c500 = Color(hex: "#f59e0b")
        public static let c600 = Color(hex: "#d97706")
        public static let c700 = Color(hex: "#b45309")
        public static let c800 = Color(hex: "#92400e")
        public static let c900 = Color(hex: "#78350f")
    }
    
    /// Error color palette (Red)
    public struct Error {
        public static let c50 = Color(hex: "#fef2f2")
        public static let c100 = Color(hex: "#fee2e2")
        public static let c200 = Color(hex: "#fecaca")
        public static let c300 = Color(hex: "#fca5a5")
        public static let c400 = Color(hex: "#f87171")
        public static let c500 = Color(hex: "#ef4444")
        public static let c600 = Color(hex: "#dc2626")
        public static let c700 = Color(hex: "#b91c1c")
        public static let c800 = Color(hex: "#7f1d1d")
        public static let c900 = Color(hex: "#450a0a")
    }
    
    /// Info color palette (Blue)
    public struct Info {
        public static let c50 = Color(hex: "#f0f4ff")
        public static let c100 = Color(hex: "#dbe9ff")
        public static let c200 = Color(hex: "#bfdbfe")
        public static let c300 = Color(hex: "#93c5fd")
        public static let c400 = Color(hex: "#60a5fa")
        public static let c500 = Color(hex: "#3b82f6")
        public static let c600 = Color(hex: "#2563eb")
        public static let c700 = Color(hex: "#1d4ed8")
        public static let c800 = Color(hex: "#1e40af")
        public static let c900 = Color(hex: "#1e3a8a")
    }
    
    // MARK: - Semantic Colors
    
    /// Background colors
    public struct Background {
        public static let primary = Color(hex: "#6366f1")
        public static let secondary = Color(hex: "#f9fafb")
        public static let surface = Color(hex: "#f3f4f6")
        public static let disabled = Color(hex: "#e5e7eb")
    }
    
    /// Text colors
    public struct Text {
        public static let primary = Color(hex: "#111827")
        public static let secondary = Color(hex: "#4b5563")
        public static let muted = Color(hex: "#9ca3af")
        public static let inverse = Color(hex: "#ffffff")
    }
    
    /// Border colors
    public struct Border {
        public static let `default` = Color(hex: "#e5e7eb")
        public static let subtle = Color(hex: "#f3f4f6")
        public static let focus = Color(hex: "#6366f1")
    }
    
    /// Icon colors
    public struct Icon {
        public static let primary = Color(hex: "#6366f1")
        public static let secondary = Color(hex: "#6b7280")
    }
    
    /// Status colors
    public struct Status {
        public static let success = Color(hex: "#22c55e")
        public static let warning = Color(hex: "#f59e0b")
        public static let error = Color(hex: "#ef4444")
        public static let info = Color(hex: "#3b82f6")
    }
}

// MARK: - Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let rgb = Int(hex, radix: 16) ?? 0
        
        let red = Double((rgb >> 16) & 0xff) / 255
        let green = Double((rgb >> 8) & 0xff) / 255
        let blue = Double(rgb & 0xff) / 255
        
        self.init(red: red, green: green, blue: blue)
    }
}
