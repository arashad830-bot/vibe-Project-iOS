# Vibe Project - Design System (Swift)

A comprehensive design system for iOS built with SwiftUI, including colors, typography, and spacing tokens.

## Structure

```
Theme/
├── DesignTokens.swift      # Master namespace for all tokens
├── Colors.swift             # Color definitions (primitives & semantic)
├── Typography.swift         # Font and text style definitions
├── Spacing.swift            # Spacing and radius definitions
└── README.md                # This file
```

## Usage Guide

### Colors

#### Semantic Colors (Use these in components)
```swift
// Background colors
DesignTokens.color.background.primary
DesignTokens.color.background.secondary
DesignTokens.color.background.surface
DesignTokens.color.background.disabled

// Text colors
DesignTokens.color.text.primary       // #111827
DesignTokens.color.text.secondary     // #4b5563
DesignTokens.color.text.muted         // #9ca3af
DesignTokens.color.text.inverse       // #ffffff

// Status colors
DesignTokens.color.status.success     // #22c55e
DesignTokens.color.status.warning     // #f59e0b
DesignTokens.color.status.error       // #ef4444
DesignTokens.color.status.info        // #3b82f6

// Border colors
DesignTokens.color.border.default
DesignTokens.color.border.subtle
DesignTokens.color.border.focus

// Icon colors
DesignTokens.color.icon.primary
DesignTokens.color.icon.secondary
```

#### Primitive Colors (Reference only, use semantics instead)
```swift
DesignTokens.color.primary.c500       // Indigo 500
DesignTokens.color.neutral.c700       // Gray 700
DesignTokens.color.success.c500       // Green 500
DesignTokens.color.warning.c500       // Amber 500
DesignTokens.color.error.c500         // Red 500
DesignTokens.color.info.c500          // Blue 500
```

### Typography

#### Text Styles (Use these for text)
```swift
// Use with .textStyle() modifier
Text("Page Title")
    .textStyle(DesignTokens.typography.h1)

Text("Section Header")
    .textStyle(DesignTokens.typography.h2)

Text("Body text content goes here")
    .textStyle(DesignTokens.typography.bodyMedium)

Text("Button Label")
    .textStyle(DesignTokens.typography.labelLarge)

Text("Small caption")
    .textStyle(DesignTokens.typography.caption)
```

#### Available Text Styles
- `displayLarge` - Hero headers (40px, semibold)
- `displayMedium` - Large headers (32px, semibold)
- `h1` - Page titles (32px, semibold)
- `h2` - Section headers (24px, semibold)
- `h3` - Subsections (20px, semibold)
- `h4` - Card headings (18px, semibold)
- `bodyLarge` - Long-form content (18px, regular, relaxed)
- `bodyMedium` - Default body (16px, regular)
- `bodySmall` - Compact text (14px, regular)
- `labelLarge` - Button labels (16px, medium)
- `labelMedium` - Form labels (14px, medium)
- `labelSmall` - Badges (12px, medium)
- `caption` - Supporting text (12px, regular)

#### Font Families
```swift
DesignTokens.typography.fontFamily.primary     // Inter
DesignTokens.typography.fontFamily.secondary   // Georgia
DesignTokens.typography.fontFamily.monospace   // JetBrains Mono
```

#### Font Sizes
```swift
DesignTokens.typography.fontSize.xs     // 12pt
DesignTokens.typography.fontSize.sm     // 14pt
DesignTokens.typography.fontSize.md     // 16pt
DesignTokens.typography.fontSize.lg     // 18pt
DesignTokens.typography.fontSize.xl     // 20pt
DesignTokens.typography.fontSize.xl2    // 24pt
DesignTokens.typography.fontSize.xl3    // 32pt
DesignTokens.typography.fontSize.xl4    // 40pt
```

### Spacing

#### Component Spacing (Internal padding)
```swift
VStack(spacing: DesignTokens.spacing.component.md) {
    // Items
}
.padding(DesignTokens.spacing.component.lg)
```

#### Gap Spacing (Between items)
```swift
VStack(spacing: DesignTokens.spacing.gap.md) {
    Text("Item 1")
    Text("Item 2")
    Text("Item 3")
}
```

#### Inset Spacing (Container padding)
```swift
Text("Content")
    .padding(DesignTokens.spacing.inset.lg)
```

#### Layout Spacing (Major sections)
```swift
VStack(spacing: DesignTokens.spacing.layout.md) {
    // Major layout sections
}
```

#### Border Radius
```swift
RoundedRectangle(cornerRadius: DesignTokens.spacing.radius.md)
    .fill(Color.blue)

// Common radius values:
// .none = 0
// .xs = 2
// .sm = 4
// .md = 8
// .lg = 12
// .xl = 16
// .full = 96 (pill shape)
```

#### Border Width
```swift
.border(Color.gray, width: DesignTokens.spacing.borderWidth.default)
```

## Design System Principles

1. **Use Semantic Tokens** - Always use semantic colors/spacing in components. Primitives are for reference only.

2. **Text Styles** - Never configure font properties manually. Always apply a named text style.

3. **Consistency** - When a design token changes, all components using it update automatically.

4. **Accessibility** - Color tokens have built-in contrast ratios. Font sizes and line heights follow accessibility best practices.

5. **Theming** - All tokens can be overridden for light/dark mode or custom themes.

## Example Component

```swift
struct VibeCard: View {
    let title: String
    let description: String
    let status: CardStatus
    
    var body: some View {
        VStack(alignment: .leading, spacing: DesignTokens.spacing.gap.md) {
            Text(title)
                .textStyle(DesignTokens.typography.h3)
                .foregroundColor(DesignTokens.color.text.primary)
            
            Text(description)
                .textStyle(DesignTokens.typography.bodyMedium)
                .foregroundColor(DesignTokens.color.text.secondary)
            
            HStack {
                Image(systemName: statusIcon)
                    .foregroundColor(statusColor)
                
                Text(status.rawValue)
                    .textStyle(DesignTokens.typography.labelSmall)
                    .foregroundColor(statusColor)
            }
        }
        .padding(DesignTokens.spacing.inset.lg)
        .background(DesignTokens.color.background.surface)
        .cornerRadius(DesignTokens.spacing.radius.md)
        .border(
            DesignTokens.color.border.default,
            width: DesignTokens.spacing.borderWidth.default
        )
    }
    
    private var statusColor: Color {
        switch status {
        case .success: return DesignTokens.color.status.success
        case .warning: return DesignTokens.color.status.warning
        case .error: return DesignTokens.color.status.error
        case .info: return DesignTokens.color.status.info
        }
    }
    
    private var statusIcon: String {
        switch status {
        case .success: return "checkmark.circle.fill"
        case .warning: return "exclamationmark.circle.fill"
        case .error: return "xmark.circle.fill"
        case .info: return "info.circle.fill"
        }
    }
}

enum CardStatus: String {
    case success = "Success"
    case warning = "Warning"
    case error = "Error"
    case info = "Info"
}
```

## Integration

1. Copy the `Theme` folder into your Xcode project
2. Import at the top of files: `import SwiftUI`
3. Access tokens via `DesignTokens.*`

## Maintenance

To update tokens:
1. Edit the corresponding file (Colors.swift, Typography.swift, Spacing.swift)
2. All components using those tokens will automatically update

## Documentation

See `TOKENS_GUIDE.md` for comprehensive implementation guide with examples.
