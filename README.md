# xplore_codemagic_circleci_and_appium

A new project for exploring codemagic,circleci and appium using Flutter

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

//
openssl base64 -in ~/Downloads/a.json -out ~/Downloads/outfile.txt

# Create directory if it doesn't exist
mkdir -p $FCI_BUILD_DIR/config
# Write out the environment variable as a json file
echo $APP_CONFIG | base64 --decode > $FCI_BUILD_DIR/config/app_config.json

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
