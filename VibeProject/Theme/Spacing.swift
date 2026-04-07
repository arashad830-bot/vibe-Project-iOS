import Foundation

// MARK: - Spacing System
/// A comprehensive spacing system with primitive and semantic tokens.
/// Use semantic spacing in components; primitives exist only as reference values.

public struct Spacing {
    // MARK: - Primitive Spacing
    
    public struct Primitives {
        public static let p0: CGFloat = 0
        public static let px: CGFloat = 1
        public static let p0_5: CGFloat = 2
        public static let p1: CGFloat = 4
        public static let p1_5: CGFloat = 6
        public static let p2: CGFloat = 8
        public static let p2_5: CGFloat = 10
        public static let p3: CGFloat = 12
        public static let p4: CGFloat = 16
        public static let p5: CGFloat = 20
        public static let p6: CGFloat = 24
        public static let p7: CGFloat = 28
        public static let p8: CGFloat = 32
        public static let p9: CGFloat = 36
        public static let p10: CGFloat = 40
        public static let p12: CGFloat = 48
        public static let p14: CGFloat = 56
        public static let p16: CGFloat = 64
        public static let p20: CGFloat = 80
        public static let p24: CGFloat = 96
    }
    
    // MARK: - Semantic Component Spacing
    
    public struct Component {
        /// Extra small component spacing
        public static let xs: CGFloat = 4
        
        /// Small component spacing
        public static let sm: CGFloat = 12
        
        /// Medium component spacing
        public static let md: CGFloat = 12
        
        /// Large component spacing
        public static let lg: CGFloat = 16
        
        /// Extra large component spacing
        public static let xl: CGFloat = 24
    }
    
    // MARK: - Semantic Gap Spacing
    /// Spacing between items (flex gap, stack spacing)
    
    public struct Gap {
        /// Extra small gap
        public static let xs: CGFloat = 4
        
        /// Small gap
        public static let sm: CGFloat = 12
        
        /// Medium gap
        public static let md: CGFloat = 16
        
        /// Large gap
        public static let lg: CGFloat = 24
        
        /// Extra large gap
        public static let xl: CGFloat = 40
    }
    
    // MARK: - Semantic Inset Spacing
    /// Internal padding within containers
    
    public struct Inset {
        /// Extra small inset
        public static let xs: CGFloat = 12
        
        /// Small inset
        public static let sm: CGFloat = 12
        
        /// Medium inset
        public static let md: CGFloat = 16
        
        /// Large inset
        public static let lg: CGFloat = 24
        
        /// Extra large inset
        public static let xl: CGFloat = 40
        
        /// Double extra large inset
        public static let xl2: CGFloat = 48
    }
    
    // MARK: - Semantic Layout Spacing
    /// Spacing for major layout sections
    
    public struct Layout {
        /// Extra small layout spacing
        public static let xs: CGFloat = 40
        
        /// Small layout spacing
        public static let sm: CGFloat = 48
        
        /// Medium layout spacing
        public static let md: CGFloat = 48
        
        /// Large layout spacing
        public static let lg: CGFloat = 64
        
        /// Extra large layout spacing
        public static let xl: CGFloat = 80
        
        /// Double extra large layout spacing
        public static let xl2: CGFloat = 96
    }
    
    // MARK: - Border Radius
    
    public struct Radius {
        /// No border radius
        public static let none: CGFloat = 0
        
        /// Extra small radius
        public static let xs: CGFloat = 2
        
        /// Small radius
        public static let sm: CGFloat = 4
        
        /// Medium radius
        public static let md: CGFloat = 8
        
        /// Large radius
        public static let lg: CGFloat = 12
        
        /// Extra large radius
        public static let xl: CGFloat = 16
        
        /// Full radius (pill/circle)
        public static let full: CGFloat = 96
    }
    
    // MARK: - Border Width
    
    public struct BorderWidth {
        /// No border
        public static let none: CGFloat = 0
        
        /// Default border width
        public static let `default`: CGFloat = 1
        
        /// Thick border width
        public static let thick: CGFloat = 2
        
        /// Heavy border width
        public static let heavy: CGFloat = 4
    }
}
