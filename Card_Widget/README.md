# Flutter Card Widget Demo

A Flutter `Card` widget demo built around a real-world hotel booking scenario — Rwanda Hotel Booking.

---

## How to Run

1. Make sure Flutter is installed: https://docs.flutter.dev/get-started/install
2. Clone this repo:
   ```
   git clone <your-repo-url>
   cd card_widget_demo
   ```
3. Install dependencies:
   ```
   flutter pub get
   ```
4. Run the app:
   ```
   flutter run
   ```

---

## Widget: Card

The `Card` widget is a Material Design surface used to group related information in a visually distinct, elevated container.

---

## Three Demonstrated Properties

### 1. `elevation`
Controls the depth of the drop-shadow beneath the card.
- **Kigali Serena Hotel** → `elevation: 16` — deep shadow, card feels "floating" (premium/featured)
- **One&Only Nyungwe House** → `elevation: 4` — moderate shadow (standard list item)
- **Virunga Lodge** → `elevation: 0` — no shadow, flat minimal style

Use it when you want to visually rank or differentiate cards by importance.

### 2. `color`
Sets the background color of the card surface.
- Each hotel uses a distinct tint (`#FFF8E1` warm yellow, `#E3F2FD` light blue, `#E8F5E9` light green) so users can distinguish categories at a glance.

Use it to align cards with a brand palette or to color-code content categories.

### 3. `shape`
Defines the card's border geometry using any `ShapeBorder`.
- **Kigali Serena** → `BorderRadius.circular(24)` — large pill-like corners, modern feel
- **Nyungwe House** → `BorderRadius.circular(12)` — standard rounded corners
- **Virunga Lodge** → `BorderRadius.circular(8)` — subtle rounding, closer to a rectangle

Use it to match your app's design language — sharp for corporate, rounded for friendly/consumer apps.

---

## Screenshot

![Rwanda Hotel Booking UI](screenshot.png)
