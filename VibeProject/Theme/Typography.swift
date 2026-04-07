import SwiftUI

// MARK: - Typography System
/// A comprehensive typography system with base tokens and pre-composed text styles.
/// Always apply a named text style to components—never configure font properties manually.

public struct Typography {
    // MARK: - Font Families
    
    public struct FontFamily {
        /// Primary font family (Inter)
        public static let primary = "Inter"
        
        /// Secondary font family (Georgia)
        public static let secondary = "Georgia"
        
        /// Monospace font family (JetBrains Mono)
        public static let monospace = "JetBrains Mono"
    }
    
    // MARK: - Font Weights
    
    public struct FontWeight {
        public static let light: Font.Weight = .light
        public static let regular: Font.Weight = .regular
        public static let medium: Font.Weight = .semibold
        public static let semibold: Font.Weight = .semibold
        public static let bold: Font.Weight = .bold
    }
    
    // MARK: - Font Sizes
    
    public struct FontSize {
        public static let xs: CGFloat = 12
        public static let sm: CGFloat = 14
        public static let md: CGFloat = 16
        public static let lg: CGFloat = 18
        public static let xl: CGFloat = 20
        public static let xl2: CGFloat = 24
        public static let xl3: CGFloat = 32
        public static let xl4: CGFloat = 40
    }
    
    // MARK: - Line Heights
    
    public struct LineHeight {
        public static let tight: CGFloat = 1.2
        public static let normal: CGFloat = 1.5
        public static let relaxed: CGFloat = 1.625
        public static let loose: CGFloat = 2.0
    }
    
    // MARK: - Letter Spacing
    
    public struct LetterSpacing {
        public static let tight: CGFloat = -0.4
        public static let normal: CGFloat = 0
        public static let wide: CGFloat = 0.8
    }
    
    // MARK: - Text Styles
    /// Pre-composed combinations of typography tokens
    
    public struct TextStyle {
        public let fontFamily: String
        public let fontSize: CGFloat
        public let fontWeight: Font.Weight
        public let lineHeight: CGFloat
        public let letterSpacing: CGFloat
        
        /// Convert to SwiftUI Font
        public var font: Font {
            return .system(size: fontSize, weight: fontWeight, design: .default)
        }
        
        /// Actual line height in points
        public var lineHeightInPoints: CGFloat {
            return fontSize * lineHeight
        }
    }
    
    // MARK: - Predefined Text Styles
    
    /// Caption text style
    /// Used for small supporting text, hints, and metadata
    public static let caption = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xs,
        fontWeight: FontWeight.regular,
        lineHeight: 1.5,
        letterSpacing: 0
    )
    
    /// Display Large
    /// Hero areas, marketing headers
    public static let displayLarge = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xl4,
        fontWeight: FontWeight.semibold,
        lineHeight: 1.2,
        letterSpacing: 0
    )
    
    /// Display Medium
    /// Section heroes
    public static let displayMedium = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xl3,
        fontWeight: FontWeight.semibold,
        lineHeight: 1.2,
        letterSpacing: 0
    )
    
    /// Heading 1
    /// Primary page headings
    public static let h1 = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xl3,
        fontWeight: FontWeight.semibold,
        lineHeight: 1.2,
        letterSpacing: 0
    )
    
    /// Heading 2
    /// Section headers
    public static let h2 = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xl2,
        fontWeight: FontWeight.semibold,
        lineHeight: 1.2,
        letterSpacing: 0
    )
    
    /// Heading 3
    /// Subsection headers
    public static let h3 = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xl,
        fontWeight: FontWeight.semibold,
        lineHeight: 1.5,
        letterSpacing: 0
    )
    
    /// Heading 4
    /// Card and panel headings
    public static let h4 = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.lg,
        fontWeight: FontWeight.semibold,
        lineHeight: 1.5,
        letterSpacing: 0
    )
    
    /// Body Large
    /// Long-form content
    public static let bodyLarge = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.lg,
        fontWeight: FontWeight.regular,
        lineHeight: LineHeight.relaxed,
        letterSpacing: 0
    )
    
    /// Body Medium
    /// Default body text
    public static let bodyMedium = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.md,
        fontWeight: FontWeight.regular,
        lineHeight: LineHeight.normal,
        letterSpacing: 0
    )
    
    /// Body Small
    /// Compact body text
    public static let bodySmall = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.sm,
        fontWeight: FontWeight.regular,
        lineHeight: LineHeight.normal,
        letterSpacing: 0
    )
    
    /// Label Large
    /// Buttons and field labels
    public static let labelLarge = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.md,
        fontWeight: FontWeight.medium,
        lineHeight: LineHeight.normal,
        letterSpacing: LetterSpacing.wide
    )
    
    /// Label Medium
    /// Form labels and tags
    public static let labelMedium = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.sm,
        fontWeight: FontWeight.medium,
        lineHeight: LineHeight.normal,
        letterSpacing: LetterSpacing.wide
    )
    
    /// Label Small
    /// Small labels and badges
    public static let labelSmall = TextStyle(
        fontFamily: FontFamily.primary,
        fontSize: FontSize.xs,
        fontWeight: FontWeight.medium,
        lineHeight: LineHeight.normal,
        letterSpacing: LetterSpacing.wide
    )
}

// MARK: - View Extensions
extension View {
    /// Apply a text style to a Text view
    func textStyle(_ style: Typography.TextStyle) -> some View {
        self
            .font(style.font)
            .tracking(style.letterSpacing)
            .lineSpacing(max(0, style.lineHeightInPoints - style.fontSize))
    }
}
