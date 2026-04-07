import SwiftUI

// MARK: - Design Tokens
/// Master design token namespace for the Vibe Project design system.
/// Contains all color, typography, and spacing tokens organized by category.

public struct DesignTokens {
    // MARK: - Color Access
    /// Access colors via: DesignTokens.color.primary.c500
    public static let color = Colors()
    
    // MARK: - Typography Access
    /// Access typography via: DesignTokens.typography.h1, DesignTokens.typography.bodyMedium
    public static let typography = TypographyNamespace()
    
    // MARK: - Spacing Access
    /// Access spacing via: DesignTokens.spacing.component.md, DesignTokens.spacing.gap.lg
    public static let spacing = Spacing()
}

// MARK: - Typography Namespace
public struct TypographyNamespace {
    public var fontFamily: Typography.FontFamily.Type { Typography.FontFamily.self }
    public var fontSize: Typography.FontSize.Type { Typography.FontSize.self }
    public var fontWeight: Typography.FontWeight.Type { Typography.FontWeight.self }
    public var lineHeight: Typography.LineHeight.Type { Typography.LineHeight.self }
    public var letterSpacing: Typography.LetterSpacing.Type { Typography.LetterSpacing.self }
    
    // Text styles
    public var caption: Typography.TextStyle { Typography.caption }
    public var displayLarge: Typography.TextStyle { Typography.displayLarge }
    public var displayMedium: Typography.TextStyle { Typography.displayMedium }
    public var h1: Typography.TextStyle { Typography.h1 }
    public var h2: Typography.TextStyle { Typography.h2 }
    public var h3: Typography.TextStyle { Typography.h3 }
    public var h4: Typography.TextStyle { Typography.h4 }
    public var bodyLarge: Typography.TextStyle { Typography.bodyLarge }
    public var bodyMedium: Typography.TextStyle { Typography.bodyMedium }
    public var bodySmall: Typography.TextStyle { Typography.bodySmall }
    public var labelLarge: Typography.TextStyle { Typography.labelLarge }
    public var labelMedium: Typography.TextStyle { Typography.labelMedium }
    public var labelSmall: Typography.TextStyle { Typography.labelSmall }
}

// MARK: - Usage Examples
/*
 
 // Colors
 Text("Hello")
     .foregroundColor(DesignTokens.color.text.primary)
 
 Rectangle()
     .fill(DesignTokens.color.background.surface)
 
 // Typography
 Text("Heading")
     .textStyle(DesignTokens.typography.h1)
 
 Text("Body text")
     .textStyle(DesignTokens.typography.bodyMedium)
     .foregroundColor(DesignTokens.color.text.secondary)
 
 // Spacing
 VStack(spacing: DesignTokens.spacing.gap.md) {
     Text("Item 1")
     Text("Item 2")
 }
 .padding(DesignTokens.spacing.inset.lg)
 
 // Radius
 RoundedRectangle(cornerRadius: DesignTokens.spacing.radius.md)
     .fill(DesignTokens.color.background.primary)
 
 */
