# WoCommerce 🛍️

A modern, multi-platform **e-commerce mobile application** built with Flutter. WoCommerce delivers a clean, responsive shopping experience across Android, iOS, and Web — featuring product browsing by category, detailed product views, promotional offers, and user account management.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Screenshots](#screenshots)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the App](#running-the-app)
- [Architecture](#architecture)
- [Components](#components)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

WoCommerce is a fully functional Flutter e-commerce UI application targeting **Android**, **iOS**, **Web**, **Linux**, **macOS**, and **Windows**. The app focuses on delivering a polished user experience with smooth navigation, responsive layouts powered by `flutter_screenutil`, and a clean Material Design aesthetic.

The application demonstrates key mobile development patterns including component-based UI architecture, responsive design for multiple screen sizes, and a structured navigation system.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🏠 **Home Dashboard** | Landing page with category carousel, promotional discount banners, and a new arrivals grid |
| 📂 **Category Browsing** | Browse products across 6 categories: Men, Women, Kids, Headphones, Bags, and Jackets |
| 🔍 **Product Detail View** | Full-screen product details with image, price, star rating, size selector, color picker, and quantity control |
| 🏷️ **Discount Promotions** | Promotional cards showcasing sales up to 50% off |
| 👤 **Account Management** | User profile page with order history, shipping addresses, payment methods, settings, and help center |
| ⚙️ **More Settings** | Additional app settings including notifications, language, region, about, contact, privacy policy, and terms |
| 📱 **Responsive Design** | Adaptive layouts for mobile, tablet, and web using `flutter_screenutil` |
| 🌐 **Multi-Platform** | Runs on Android, iOS, Web, Linux, macOS, and Windows from a single codebase |

---

## 📸 Screenshots

> _Add screenshots of your running app here._

| Home | Categories | Product Detail | Account |
|------|-----------|----------------|---------|
| _(screenshot)_ | _(screenshot)_ | _(screenshot)_ | _(screenshot)_ |

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| [Flutter](https://flutter.dev/) | Cross-platform UI framework |
| [Dart](https://dart.dev/) | Programming language (SDK ^3.8.1) |
| [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) | Responsive UI scaling across different screen sizes |
| [cupertino_icons](https://pub.dev/packages/cupertino_icons) | iOS-style icon set |
| [flutter_lints](https://pub.dev/packages/flutter_lints) | Static analysis and code quality enforcement |

---

## 📁 Project Structure

```
woo_commerce/
├── lib/
│   ├── main.dart                  # App entry point
│   ├── app.dart                   # Root MaterialApp configuration
│   ├── pages/                     # Full-screen page widgets
│   │   ├── home_page.dart         # Main scaffold with bottom navigation
│   │   ├── landing_page.dart      # Home tab: categories, discounts, new products
│   │   ├── category_page.dart     # Grid of all product categories
│   │   ├── product_detail_page.dart # Product detail with size, color, quantity
│   │   ├── account_page.dart      # User profile and account options
│   │   ├── more_page.dart         # Settings and additional info
│   │   ├── men_section.dart       # Men's category products
│   │   ├── women_section.dart     # Women's category products
│   │   └── kids_section.dart      # Kids' category with promo banner
│   ├── components/                # Reusable UI components
│   │   ├── my_bottom_nav.dart     # Custom bottom navigation bar
│   │   ├── my_circle_avatar.dart  # Category avatar with label
│   │   ├── my_card.dart           # Promotional discount card
│   │   ├── my_prod_column.dart    # Product listing card
│   │   ├── quantity_custom.dart   # Quantity +/- selector
│   │   └── add_to_cart.dart       # Add to cart button (in progress)
│   └── data/                      # Static/mock data models
│       ├── categories_data.dart   # Category items data
│       ├── new_prod_data.dart     # New arrivals product data
│       ├── discount_data.dart     # Promotional discount data
│       └── kids_data.dart         # Kids' products data
├── images/                        # Local image assets
├── android/                       # Android platform code
├── ios/                           # iOS platform code
├── web/                           # Web platform code
├── linux/                         # Linux platform code
├── macos/                         # macOS platform code
├── windows/                       # Windows platform code
├── test/                          # Unit and widget tests
├── pubspec.yaml                   # Project configuration and dependencies
└── analysis_options.yaml          # Dart linting rules
```

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.8.1 or higher)
- [Dart SDK](https://dart.dev/get-dart) (comes bundled with Flutter)
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with the Flutter extension
- An Android emulator, iOS simulator, or a physical device

Verify your setup:
```bash
flutter doctor
```

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Fahim-Mahtab/WoCommerce.git
   cd WoCommerce
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

### Running the App

**Android / iOS:**
```bash
flutter run
```

**Web:**
```bash
flutter run -d chrome
```

**Desktop (Linux / macOS / Windows):**
```bash
flutter run -d linux     # Linux
flutter run -d macos     # macOS
flutter run -d windows   # Windows
```

**Run all tests:**
```bash
flutter test
```

**Build a release APK (Android):**
```bash
flutter build apk --release
```

---

## 🏗️ Architecture

WoCommerce follows a **component-based UI architecture** with a clear separation of concerns:

```
┌─────────────────────────────────────────┐
│              Presentation Layer          │
│    Pages (screens) + Reusable Components│
├─────────────────────────────────────────┤
│                Data Layer               │
│       Static Data Models (Dart Lists)   │
└─────────────────────────────────────────┘
```

- **Pages** handle navigation and overall screen layout.
- **Components** are stateless or stateful widgets designed for reuse across pages.
- **Data** is represented as static Dart classes containing mock product and category data, making it straightforward to replace with a live API in the future.

---

## 🧩 Components

| Component | Description |
|---|---|
| `MyBottomNav` | Custom bottom navigation bar with 4 tabs: Home, Category, Account, More |
| `MyCircleAvatar` | Circular category button with a label, navigates to the selected category |
| `MyCard` | Promotional card displaying a discount banner image and percentage |
| `MyProdColumn` | Product card displaying image, title, price, and star rating |
| `QuantitySelector` | Increment/decrement control for selecting product quantities (1–99) |

---

## 🗺️ Roadmap

- [ ] Backend API integration (REST / GraphQL)
- [ ] State management with [Riverpod](https://riverpod.dev/) or [Bloc](https://bloclibrary.dev/)
- [ ] Functional shopping cart and checkout flow
- [ ] User authentication (sign up / sign in)
- [ ] Persistent storage with SQLite or Hive
- [ ] Payment gateway integration
- [ ] Push notifications
- [ ] Product search and filtering
- [ ] Dark mode support
- [ ] Unit and integration test coverage

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the repository
2. Create a new feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

<div align="center">
  <p>Built with ❤️ using Flutter</p>
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Flutter-3.8.1-02569B?style=flat&logo=flutter&logoColor=white" alt="Flutter" />
  </a>
  <a href="https://dart.dev">
    <img src="https://img.shields.io/badge/Dart-3.8.1-0175C2?style=flat&logo=dart&logoColor=white" alt="Dart" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License" />
  </a>
</div>
