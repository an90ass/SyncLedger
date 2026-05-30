# SyncLedger

SyncLedger is a Flutter-based mobile application designed to help small businesses manage billing, products, shop settings, and Bluetooth thermal printing in a streamlined ledger workflow.

## Features

- Billing and invoice creation
- Product management and catalog browsing
- Shop configuration and settings management
- Bluetooth thermal printer discovery, pairing, and test printing with saved device profiles
- QR code generation and scanner support
- Local persistence using Hive database
- Modular architecture with BLoC and GoRouter navigation

## Technologies Used

- Flutter
- Dart
- flutter_bloc
- go_router
- hive + hive_flutter
- print_bluetooth_thermal
- mobile_scanner
- permission_handler
- json_serializable
- get_it
- uuid

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/an90ass/syncledger.git
   cd syncledger
   ```

2. Install Flutter dependencies:

   ```bash
   flutter pub get
   ```

3. Prepare code generation (if needed):

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Open the project in your IDE (Visual Studio Code, Android Studio, etc.).

## Running the Project

### Android

```bash
flutter run
```

### iOS

```bash
flutter run
```

### Web / Desktop

Currently this project targets mobile platforms. Use the Flutter tooling to target the desired platform if supported.

## Project Structure

```text
lib/
  main.dart            # App entry point
  config/              # Configuration helpers and constants
  core/                # Shared utilities, services, and data layers
  features/
    billing/           # Billing feature implementation
    product/           # Product catalog and inventory features
    settings/          # Printer and app settings
    shop/              # Shop profile and shop-specific logic
android/               # Android platform integration
ios/                   # iOS platform integration
web/                   # Web support assets
linux/ macos/ windows/ # Desktop support files
test/                  # Widget and unit tests
```

## Usage

- Launch the app on a supported device.
- Navigate through billing, product, shop, and settings screens.
- Use device permissions to enable Bluetooth and camera access.
- In settings, scan for bonded printers, connect to a supported thermal printer, and save the selected printer profile.
- Send a test receipt or label print from the app to verify printer connectivity.
- Use QR scanner or QR code features as supported by the app UI.

## Configuration

- Local settings are stored using Hive database in `lib/core/data/hive_database.dart`.
- Platform permissions are managed using `permission_handler`.
- Bluetooth printing is handled via `print_bluetooth_thermal`.
- Printer metadata (MAC address and friendly name) is persisted in Hive to restore the selected device across app launches.
- The printer helper encapsulates scanning, connection, disconnection, and thermal print formatting logic.

> Note: Ensure Android and iOS platform manifests include required permissions for Bluetooth, camera, and storage if the app requests them.

## Printer Integration

SyncLedger includes built-in support for Bluetooth thermal receipt printers. The app can:

- Discover bonded Bluetooth thermal printers available on the device.
- Connect to a selected printer using its MAC address.
- Save printer configuration details for repeat usage.
- Disconnect cleanly from the printer when no longer needed.
- Run a test print to validate connectivity and print layout before generating real receipts.

This approach ensures a reliable printing experience for point-of-sale and ledger workflows.

## Screenshots



## API / Backend

This project is primarily a local Flutter app with Hive persistence.

If you integrate a backend API later, add the backend details here and document any REST or GraphQL endpoints.

## Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m "feat: add your feature"
4. Push to your branch: `git push origin feature/your-feature`
5. Open a pull request and describe your changes.

Please follow established code style and use meaningful commit messages.

## License

This project is licensed under the MIT License. See `LICENSE` for details.

