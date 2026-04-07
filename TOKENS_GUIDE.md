# Design System AI - Token Implementation Guide

## Overview

Complete design token extraction from your Figma design system with values for React, Kotlin, and Swift platforms.

**Source File:** https://www.figma.com/design/FZxoe9yHmcR5PgIYRV50vk/Design-system-AI

## Token Categories

### 1. Colors

#### Primitive Colors
- **Primary:** Blue scale (50-900) - #eef2ff to #312e81
- **Neutral:** Grayscale (0-900) - #ffffff to #111827
- **Success:** Green scale - #f0fdf4 to #145231
- **Warning:** Orange scale - #fffbf0 to #78350f
- **Error:** Red scale - #fef2f2 to #450a0a
- **Info:** Blue scale - #f0f4ff to #1e3a8a

#### Semantic Colors
- **Background:** primary, secondary, surface, disabled
- **Text:** primary, secondary, muted, inverse
- **Border:** default, subtle, focus
- **Icon:** primary, secondary
- **Status:** success, warning, error, info

### 2. Typography

#### Font Families
- **Primary:** Inter, -apple-system, BlinkMacSystemFont, sans-serif
- **Secondary:** Georgia, "Times New Roman", serif
- **Monospace:** "JetBrains Mono", "Fira Code", "Courier New", monospace

#### Font Weights
- Light: 300
- Regular: 400
- Medium: 500
- Semibold: 600
- Bold: 700

#### Font Sizes (in pixels)
- xs: 12px
- sm: 14px
- md: 16px
- lg: 18px
- xl: 20px
- 2xl: 24px
- 3xl: 32px
- 4xl: 40px

#### Line Heights
- tight: 1.2
- normal: 1.5
- relaxed: 1.625
- loose: 2

#### Letter Spacing
- tight: -0.025em
- normal: 0em
- wide: 0.05em

#### Text Styles (Predefined)
- Caption: 12px / 400 / normal
- Display Large: 40px / 600 / tight
- Display Medium: 32px / 600 / tight
- H1: 32px / 600 / tight
- H2: 24px / 600 / tight
- H3: 20px / 600 / normal
- H4: 18px / 600 / normal
- Body Large: 18px / 400 / relaxed
- Body Medium: 16px / 400 / normal
- Body Small: 14px / 400 / normal
- Label Large: 16px / 500 / normal
- Label Medium: 14px / 500 / normal
- Label Small: 12px / 500 / normal

### 3. Spacing

#### Primitive Spacing (in pixels)
0, 1, 2, 4, 6, 8, 10, 12, 16, 20, 24, 28, 32, 36, 40, 48, 56, 64, 80, 96

#### Semantic Spacing
- **Component Padding:** xs (4px), sm (12px), md (12px), lg (16px), xl (24px)
- **Gap:** xs (4px), sm (12px), md (16px), lg (24px), xl (40px)
- **Inset Padding:** xs-2xl ranging from 12px to 48px
- **Layout Spacing:** xs (40px) to 2xl (96px)
- **Border Radius:** none (0px), xs (2px), sm (4px), md (8px), lg (12px), xl (16px), full (96px)
- **Border Width:** none (0px), default (1px), thick (2px), heavy (4px)

---

## Platform-Specific Implementation

### React / Web

#### Setup

```bash
npm install
# Place tokens-react.json in your src/tokens directory
```

#### Colors

```typescript
// src/tokens/colors.ts
import colorsData from './tokens-react.json';

export const colors = colorsData.colors;

// Usage
import { colors } from '@/tokens/colors';

const component = (
  <div style={{
    backgroundColor: colors.semantic.background.primary,
    color: colors.semantic.text.primary
  }}>
    Content
  </div>
);
```

#### Typography

```typescript
// src/tokens/typography.ts
import typographyData from './tokens-react.json';

export const typography = typographyData.typography;

// Usage
const heading = (
  <h1 style={{
    fontFamily: typography.fontFamilies.primary,
    fontSize: typography.textStyles.h1.fontSize,
    fontWeight: typography.textStyles.h1.fontWeight,
    lineHeight: typography.textStyles.h1.lineHeight
  }}>
    Title
  </h1>
);
```

#### Spacing

```typescript
// src/tokens/spacing.ts
import spacingData from './tokens-react.json';

export const spacing = spacingData.spacing;

// Usage
const box = (
  <div style={{
    padding: spacing.semantic.inset.md,
    gap: spacing.semantic.gap.lg
  }}>
    Content
  </div>
);
```

#### Tailwind CSS Integration

```javascript
// tailwind.config.js
import tokens from './src/tokens/tokens-react.json';

module.exports = {
  theme: {
    extend: {
      colors: {
        primary: tokens.colors.primitives.primary,
        neutral: tokens.colors.primitives.neutral,
        success: tokens.colors.primitives.success,
        warning: tokens.colors.primitives.warning,
        error: tokens.colors.primitives.error,
        info: tokens.colors.primitives.info,
      },
      fontSize: {
        xs: [tokens.typography.fontSizes.xs, { lineHeight: '1.5rem' }],
        sm: [tokens.typography.fontSizes.sm, { lineHeight: '1.5rem' }],
        base: [tokens.typography.fontSizes.md, { lineHeight: '1.5rem' }],
        lg: [tokens.typography.fontSizes.lg, { lineHeight: '1.625rem' }],
        xl: [tokens.typography.fontSizes.xl, { lineHeight: '1.625rem' }],
        '2xl': [tokens.typography.fontSizes['2xl'], { lineHeight: '1.2rem' }],
        '3xl': [tokens.typography.fontSizes['3xl'], { lineHeight: '1.2rem' }],
        '4xl': [tokens.typography.fontSizes['4xl'], { lineHeight: '1.2rem' }],
      },
      spacing: tokens.spacing.primitives,
      borderRadius: tokens.spacing.semantic.radius,
    },
  },
};
```

---

### Kotlin / Jetpack Compose

#### Setup

```bash
# Place tokens-kotlin.json in your app/src/main/res/raw directory
```

#### Colors

```kotlin
// app/src/main/java/com/example/tokens/ColorTokens.kt
package com.example.tokens

import androidx.compose.ui.graphics.Color

object ColorTokens {
    // Primitives
    object Primary {
        val color50 = Color(0xFFEEF2FF)
        val color100 = Color(0xFFE0E7FF)
        val color200 = Color(0xFFC7D2FE)
        val color300 = Color(0xFFA5B4FC)
        val color400 = Color(0xFF818CF8)
        val color500 = Color(0xFF6366F1)
        val color600 = Color(0xFF4F46E5)
        val color700 = Color(0xFF4338CA)
        val color800 = Color(0xFF3730A3)
        val color900 = Color(0xFF312E81)
    }

    object Neutral {
        val color0 = Color(0xFFFFFFFF)
        val color50 = Color(0xFFF9FAFB)
        val color100 = Color(0xFFF3F4F6)
        val color200 = Color(0xFFE5E7EB)
        val color300 = Color(0xFFD1D5DB)
        val color400 = Color(0xFF9CA3AF)
        val color500 = Color(0xFF6B7280)
        val color600 = Color(0xFF4B5563)
        val color700 = Color(0xFF374151)
        val color800 = Color(0xFF1F2937)
        val color900 = Color(0xFF111827)
    }

    // Status Colors
    val success = Color(0xFF22C55E)
    val warning = Color(0xFFF59E0B)
    val error = Color(0xFFEF4444)
    val info = Color(0xFF3B82F6)

    // Semantic
    object Semantic {
        object Background {
            val primary = Primary.color500
            val secondary = Neutral.color50
            val surface = Neutral.color100
            val disabled = Neutral.color200
        }

        object Text {
            val primary = Neutral.color900
            val secondary = Neutral.color600
            val muted = Neutral.color400
            val inverse = Neutral.color0
        }

        object Border {
            val default = Neutral.color200
            val subtle = Neutral.color100
            val focus = Primary.color500
        }

        object Icon {
            val primary = Primary.color500
            val secondary = Neutral.color500
        }

        object Status {
            val success = ColorTokens.success
            val warning = ColorTokens.warning
            val error = ColorTokens.error
            val info = ColorTokens.info
        }
    }
}

// Usage
Box(
    modifier = Modifier
        .background(ColorTokens.Semantic.Background.primary)
        .padding(16.dp)
)
```

#### Typography

```kotlin
// app/src/main/java/com/example/tokens/TypographyTokens.kt
package com.example.tokens

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

val InterFont = FontFamily(
    Font(R.font.inter_regular, FontWeight.W400),
    Font(R.font.inter_medium, FontWeight.W500),
    Font(R.font.inter_semibold, FontWeight.W600),
    Font(R.font.inter_bold, FontWeight.W700),
)

object TypographyTokens {
    val caption = TextStyle(
        fontFamily = InterFont,
        fontSize = 12.sp,
        fontWeight = FontWeight.W400,
        lineHeight = 18.sp,
    )

    val h1 = TextStyle(
        fontFamily = InterFont,
        fontSize = 32.sp,
        fontWeight = FontWeight.W600,
        lineHeight = 38.4.sp,
    )

    val h2 = TextStyle(
        fontFamily = InterFont,
        fontSize = 24.sp,
        fontWeight = FontWeight.W600,
        lineHeight = 28.8.sp,
    )

    val h3 = TextStyle(
        fontFamily = InterFont,
        fontSize = 20.sp,
        fontWeight = FontWeight.W600,
        lineHeight = 30.sp,
    )

    val h4 = TextStyle(
        fontFamily = InterFont,
        fontSize = 18.sp,
        fontWeight = FontWeight.W600,
        lineHeight = 27.sp,
    )

    val bodyLarge = TextStyle(
        fontFamily = InterFont,
        fontSize = 18.sp,
        fontWeight = FontWeight.W400,
        lineHeight = 29.25.sp,
    )

    val bodyMedium = TextStyle(
        fontFamily = InterFont,
        fontSize = 16.sp,
        fontWeight = FontWeight.W400,
        lineHeight = 24.sp,
    )

    val bodySmall = TextStyle(
        fontFamily = InterFont,
        fontSize = 14.sp,
        fontWeight = FontWeight.W400,
        lineHeight = 21.sp,
    )

    val labelLarge = TextStyle(
        fontFamily = InterFont,
        fontSize = 16.sp,
        fontWeight = FontWeight.W500,
        lineHeight = 24.sp,
    )

    val labelMedium = TextStyle(
        fontFamily = InterFont,
        fontSize = 14.sp,
        fontWeight = FontWeight.W500,
        lineHeight = 21.sp,
    )

    val labelSmall = TextStyle(
        fontFamily = InterFont,
        fontSize = 12.sp,
        fontWeight = FontWeight.W500,
        lineHeight = 18.sp,
    )
}

val DesignSystemTypography = Typography(
    headlineLarge = TypographyTokens.h1,
    headlineMedium = TypographyTokens.h2,
    headlineSmall = TypographyTokens.h3,
    titleLarge = TypographyTokens.h4,
    bodyLarge = TypographyTokens.bodyLarge,
    bodyMedium = TypographyTokens.bodyMedium,
    bodySmall = TypographyTokens.bodySmall,
    labelLarge = TypographyTokens.labelLarge,
    labelMedium = TypographyTokens.labelMedium,
    labelSmall = TypographyTokens.labelSmall,
)

// Usage
Text(
    text = "Heading",
    style = TypographyTokens.h1
)
```

#### Spacing

```kotlin
// app/src/main/java/com/example/tokens/SpacingTokens.kt
package com.example.tokens

import androidx.compose.ui.unit.dp

object SpacingTokens {
    // Primitives
    val space0 = 0.dp
    val spacePx = 1.dp
    val space0_5 = 2.dp
    val space1 = 4.dp
    val space1_5 = 6.dp
    val space2 = 8.dp
    val space2_5 = 10.dp
    val space3 = 12.dp
    val space4 = 16.dp
    val space5 = 20.dp
    val space6 = 24.dp
    val space7 = 28.dp
    val space8 = 32.dp
    val space9 = 36.dp
    val space10 = 40.dp
    val space12 = 48.dp
    val space14 = 56.dp
    val space16 = 64.dp
    val space20 = 80.dp
    val space24 = 96.dp

    // Semantic - Component
    object ComponentPadding {
        val xs = 4.dp
        val sm = 12.dp
        val md = 12.dp
        val lg = 16.dp
        val xl = 24.dp
    }

    // Semantic - Gap
    object Gap {
        val xs = 4.dp
        val sm = 12.dp
        val md = 16.dp
        val lg = 24.dp
        val xl = 40.dp
    }

    // Semantic - Inset
    object InsetPadding {
        val xs = 12.dp
        val sm = 12.dp
        val md = 16.dp
        val lg = 24.dp
        val xl = 40.dp
        val xl2 = 48.dp
    }

    // Semantic - Layout
    object LayoutSpacing {
        val xs = 40.dp
        val sm = 48.dp
        val md = 48.dp
        val lg = 64.dp
        val xl = 80.dp
        val xl2 = 96.dp
    }

    // Semantic - Border Radius
    object BorderRadius {
        val none = 0.dp
        val xs = 2.dp
        val sm = 4.dp
        val md = 8.dp
        val lg = 12.dp
        val xl = 16.dp
        val full = 96.dp
    }
}

// Usage
Box(
    modifier = Modifier
        .padding(SpacingTokens.InsetPadding.md)
        .clip(RoundedCornerShape(SpacingTokens.BorderRadius.md))
)
```

---

### Swift / SwiftUI

#### Setup

```bash
# Place tokens-swift.json in your Xcode project
```

#### Colors

```swift
// Sources/DesignTokens/ColorTokens.swift
import SwiftUI

public enum ColorTokens {
    // MARK: - Primitive Colors

    public enum Primary {
        public static let color50 = Color(red: 0.933, green: 0.949, blue: 1.0)
        public static let color100 = Color(red: 0.878, green: 0.906, blue: 1.0)
        public static let color200 = Color(red: 0.780, green: 0.824, blue: 0.996)
        public static let color300 = Color(red: 0.647, green: 0.706, blue: 0.988)
        public static let color400 = Color(red: 0.506, green: 0.549, blue: 0.973)
        public static let color500 = Color(red: 0.388, green: 0.400, blue: 0.945)
        public static let color600 = Color(red: 0.310, green: 0.275, blue: 0.898)
        public static let color700 = Color(red: 0.263, green: 0.220, blue: 0.792)
        public static let color800 = Color(red: 0.216, green: 0.188, blue: 0.639)
        public static let color900 = Color(red: 0.192, green: 0.180, blue: 0.506)
    }

    public enum Neutral {
        public static let color0 = Color(red: 1.0, green: 1.0, blue: 1.0)
        public static let color50 = Color(red: 0.976, green: 0.980, blue: 0.984)
        public static let color100 = Color(red: 0.953, green: 0.957, blue: 0.965)
        public static let color200 = Color(red: 0.898, green: 0.906, blue: 0.922)
        public static let color300 = Color(red: 0.820, green: 0.835, blue: 0.859)
        public static let color400 = Color(red: 0.612, green: 0.639, blue: 0.686)
        public static let color500 = Color(red: 0.420, green: 0.447, blue: 0.502)
        public static let color600 = Color(red: 0.294, green: 0.333, blue: 0.388)
        public static let color700 = Color(red: 0.216, green: 0.255, blue: 0.318)
        public static let color800 = Color(red: 0.122, green: 0.161, blue: 0.216)
        public static let color900 = Color(red: 0.067, green: 0.094, blue: 0.153)
    }

    // Status Colors
    public static let success = Color(red: 0.133, green: 0.773, blue: 0.369)
    public static let warning = Color(red: 0.961, green: 0.620, blue: 0.043)
    public static let error = Color(red: 0.957, green: 0.247, blue: 0.369)
    public static let info = Color(red: 0.231, green: 0.510, blue: 0.965)

    // MARK: - Semantic Colors

    public enum Semantic {
        public enum Background {
            public static let primary = Primary.color500
            public static let secondary = Neutral.color50
            public static let surface = Neutral.color100
            public static let disabled = Neutral.color200
        }

        public enum Text {
            public static let primary = Neutral.color900
            public static let secondary = Neutral.color600
            public static let muted = Neutral.color400
            public static let inverse = Neutral.color0
        }

        public enum Border {
            public static let `default` = Neutral.color200
            public static let subtle = Neutral.color100
            public static let focus = Primary.color500
        }

        public enum Icon {
            public static let primary = Primary.color500
            public static let secondary = Neutral.color500
        }

        public enum Status {
            public static let success = ColorTokens.success
            public static let warning = ColorTokens.warning
            public static let error = ColorTokens.error
            public static let info = ColorTokens.info
        }
    }
}

// Usage
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Styled Text")
                .foregroundColor(ColorTokens.Semantic.Text.primary)
        }
        .background(ColorTokens.Semantic.Background.primary)
    }
}
```

#### Typography

```swift
// Sources/DesignTokens/TypographyTokens.swift
import SwiftUI

public enum TypographyTokens {
    // MARK: - Font Families

    public static let primaryFontFamily = "Inter"
    public static let secondaryFontFamily = "Georgia"
    public static let monospaceFontFamily = "JetBrains Mono"

    // MARK: - Text Styles

    public static let caption = Font.system(
        size: 12,
        weight: .regular,
        design: .default
    )

    public static let h1 = Font.system(
        size: 32,
        weight: .semibold,
        design: .default
    )

    public static let h2 = Font.system(
        size: 24,
        weight: .semibold,
        design: .default
    )

    public static let h3 = Font.system(
        size: 20,
        weight: .semibold,
        design: .default
    )

    public static let h4 = Font.system(
        size: 18,
        weight: .semibold,
        design: .default
    )

    public static let bodyLarge = Font.system(
        size: 18,
        weight: .regular,
        design: .default
    )

    public static let bodyMedium = Font.system(
        size: 16,
        weight: .regular,
        design: .default
    )

    public static let bodySmall = Font.system(
        size: 14,
        weight: .regular,
        design: .default
    )

    public static let labelLarge = Font.system(
        size: 16,
        weight: .medium,
        design: .default
    )

    public static let labelMedium = Font.system(
        size: 14,
        weight: .medium,
        design: .default
    )

    public static let labelSmall = Font.system(
        size: 12,
        weight: .medium,
        design: .default
    )

    // MARK: - Custom Modifier for Full Text Style

    public struct TextStyleModifier: ViewModifier {
        let font: Font
        let lineHeight: CGFloat
        let letterSpacing: CGFloat

        public func body(content: Content) -> some View {
            content
                .font(font)
                .lineSpacing(lineHeight - font.systemFont(ofSize: 16).lineHeight)
                .tracking(letterSpacing)
        }
    }
}

// Usage
Text("Heading")
    .font(TypographyTokens.h1)

Text("Body text with custom line height")
    .modifier(TypographyTokens.TextStyleModifier(
        font: TypographyTokens.bodyMedium,
        lineHeight: 24,
        letterSpacing: 0
    ))
```

#### Spacing

```swift
// Sources/DesignTokens/SpacingTokens.swift
import SwiftUI

public enum SpacingTokens {
    // MARK: - Primitive Spacing

    public static let space0: CGFloat = 0
    public static let spacePx: CGFloat = 1
    public static let space0_5: CGFloat = 2
    public static let space1: CGFloat = 4
    public static let space1_5: CGFloat = 6
    public static let space2: CGFloat = 8
    public static let space2_5: CGFloat = 10
    public static let space3: CGFloat = 12
    public static let space4: CGFloat = 16
    public static let space5: CGFloat = 20
    public static let space6: CGFloat = 24
    public static let space7: CGFloat = 28
    public static let space8: CGFloat = 32
    public static let space9: CGFloat = 36
    public static let space10: CGFloat = 40
    public static let space12: CGFloat = 48
    public static let space14: CGFloat = 56
    public static let space16: CGFloat = 64
    public static let space20: CGFloat = 80
    public static let space24: CGFloat = 96

    // MARK: - Semantic Spacing

    public enum Component {
        public static let xs: CGFloat = 4
        public static let sm: CGFloat = 12
        public static let md: CGFloat = 12
        public static let lg: CGFloat = 16
        public static let xl: CGFloat = 24
    }

    public enum Gap {
        public static let xs: CGFloat = 4
        public static let sm: CGFloat = 12
        public static let md: CGFloat = 16
        public static let lg: CGFloat = 24
        public static let xl: CGFloat = 40
    }

    public enum Inset {
        public static let xs: CGFloat = 12
        public static let sm: CGFloat = 12
        public static let md: CGFloat = 16
        public static let lg: CGFloat = 24
        public static let xl: CGFloat = 40
        public static let xl2: CGFloat = 48
    }

    public enum Layout {
        public static let xs: CGFloat = 40
        public static let sm: CGFloat = 48
        public static let md: CGFloat = 48
        public static let lg: CGFloat = 64
        public static let xl: CGFloat = 80
        public static let xl2: CGFloat = 96
    }

    public enum BorderRadius {
        public static let none: CGFloat = 0
        public static let xs: CGFloat = 2
        public static let sm: CGFloat = 4
        public static let md: CGFloat = 8
        public static let lg: CGFloat = 12
        public static let xl: CGFloat = 16
        public static let full: CGFloat = 96
    }
}

// Usage
VStack(spacing: SpacingTokens.Gap.md) {
    Text("Item 1")
    Text("Item 2")
}
.padding(SpacingTokens.Inset.md)
.cornerRadius(SpacingTokens.BorderRadius.md)
```

---

## Files Generated

1. **design-tokens.json** - Complete token reference with all categories
2. **tokens-react.json** - React/web-optimized tokens (values in px/em)
3. **tokens-kotlin.json** - Kotlin/Compose optimized tokens (numeric values)
4. **tokens-swift.json** - Swift/SwiftUI optimized tokens (numeric values)
5. **TOKEN_IMPLEMENTATION_GUIDE.md** - This guide

## Color Conversion Reference

All colors are provided in:
- **Hex format** for React/Web (e.g., #6366f1)
- **Figma RGB 0-1 range** in raw extraction (convert: value * 255)
- **Hex to RGB**: #6366f1 → rgb(99, 102, 241)

## Next Steps

1. Copy the appropriate JSON file to your project
2. Follow the platform-specific implementation examples above
3. Import and use the tokens in your components
4. Keep tokens in sync with Figma by re-exporting when design system updates

## Support for Multiple Platforms

The token structure supports:
- **React:** Web components with hex colors and px values
- **Kotlin:** Jetpack Compose with Color objects and dp values
- **Swift:** SwiftUI with Color and CGFloat values

Each platform JSON is optimized for that ecosystem's conventions and type systems.
