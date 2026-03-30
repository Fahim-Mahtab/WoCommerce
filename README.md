<div align="center">

# 🛍️ WoCommerce

### A Modern E-Commerce Mobile Application Built with Flutter

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey?style=for-the-badge)](https://flutter.dev/multi-platform)

</div>

---

## 📖 About

**WoCommerce** is a fully responsive, cross-platform e-commerce application built with Flutter. It delivers a seamless shopping experience across Android, iOS, and Web platforms. The app features a clean, modern UI with product browsing by category, detailed product pages with size and color selection, a user account management panel, and more.

This project demonstrates best practices in Flutter development including component-based architecture, responsive design with `flutter_screenutil`, and clean separation of concerns between UI, data, and business logic layers.

---

## ✨ Features

- 🏠 **Home Feed** — Horizontally scrollable category chips, promotional discount banners, and a "New Products" grid
- 🗂️ **Category Browser** — Visual grid layout for browsing all product categories (Men, Women, Kids, Headphones, Bags, Jackets)
- 🔍 **Product Detail Page** — Rich product view with image, price, star rating, size selector (S / M / L / XL), color picker, and quantity control
- 🛒 **Add to Cart** — Intuitive cart interaction directly from the product detail screen
- 👤 **Account Page** — User profile display with quick-access tiles for Orders, Shipping Addresses, Payment Methods, Settings, and Help Center
- ⚙️ **More Page** — App settings including Notifications, Language, Region, About Us, Contact, Privacy Policy, and Terms & Conditions
- 📱 **Responsive Design** — Adaptive layouts supporting mobile portrait, tablet, and wide-screen web views
- 🔔 **App Bar Actions** — Search, notifications, and cart shortcuts available at all times

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| [Flutter](https://flutter.dev) | Cross-platform UI framework |
| [Dart](https://dart.dev) | Programming language |
| [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) | Responsive sizing & adaptive layouts |
| [cupertino_icons](https://pub.dev/packages/cupertino_icons) | iOS-style icon set |
| Material Design 3 | UI component library |

---

## 📁 Project Structure

```
lib/
├── main.dart                   # App entry point with ScreenUtil initialization
├── app.dart                    # Root MaterialApp widget
│
├── pages/
│   ├── home_page.dart          # Shell page with bottom navigation
│   ├── landing_page.dart       # Home feed (categories, banners, new products)
│   ├── category_page.dart      # Category grid browser
│   ├── product_detail_page.dart# Full product detail with size/color/quantity
│   ├── account_page.dart       # User profile and account options
│   ├── more_page.dart          # App settings and info links
│   ├── men_section.dart        # Men's product listing
│   ├── women_section.dart      # Women's product listing
│   └── kids_section.dart       # Kids' product listing
│
├── components/
│   ├── my_bottom_nav.dart      # Reusable bottom navigation bar
│   ├── my_card.dart            # Discount/promotion card widget
│   ├── my_circle_avatar.dart   # Category avatar chip widget
│   ├── my_prod_column.dart     # Product card for grid views
│   ├── quantity_custom.dart    # Quantity increment/decrement selector
│   └── add_to_cart.dart        # Add-to-cart button widget
│
└── data/
    ├── categories_data.dart    # Static category data (name + image URL)
    ├── discount_data.dart      # Promotional banner data
    ├── new_prod_data.dart      # New products data
    └── kids_data.dart          # Kids section product data
```

---

## 🚀 Getting Started

### Prerequisites

Ensure the following tools are installed on your machine:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) **≥ 3.8.1**
- [Dart SDK](https://dart.dev/get-dart) **≥ 3.8.1** *(bundled with Flutter)*
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with the Flutter extension
- An Android emulator, iOS simulator, or a physical device

Verify your Flutter environment:

```bash
flutter doctor
```

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Fahim-Mahtab/WoCommerce.git
   cd WoCommerce
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**

   | Platform | Command |
   |---|---|
   | Android | `flutter run` |
   | iOS | `flutter run -d ios` |
   | Web | `flutter run -d chrome` |
   | Windows | `flutter run -d windows` |
   | Linux | `flutter run -d linux` |
   | macOS | `flutter run -d macos` |

4. **Build a release APK (Android)**
   ```bash
   flutter build apk --release
   ```

---

## 🧱 Architecture

WoCommerce follows a simple **layered architecture** suited for a UI-focused Flutter project:

```
┌─────────────────────────────────────┐
│           Presentation Layer        │
│   Pages (screens) + Components      │
│       (reusable widgets)            │
├─────────────────────────────────────┤
│              Data Layer             │
│   Static data classes (data/)       │
└─────────────────────────────────────┘
```

- **Pages** contain screen-level widgets and orchestrate layout.
- **Components** are small, reusable widgets consumed by multiple pages.
- **Data** classes provide static mock data, making it straightforward to swap in a live API or state-management solution.

---

## 📐 Responsive Design

The app uses [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) with a base design size of **360 × 690 dp**, ensuring all text sizes, paddings, and dimensions scale correctly across different screen densities and form factors.

The `ProductDetailPage` additionally uses `LayoutBuilder` to deliver a **two-column layout on wide-screen web views** (width > 700 px), placing the product image beside the details panel.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the project
2. Create your feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

Please make sure to run `flutter analyze` and `flutter test` before submitting a PR.

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<div align="center">

Made with ❤️ using [Flutter](https://flutter.dev)

</div>
