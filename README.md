Urdu Novel App

A beautifully designed Urdu Novel Reading App built with Flutter, following MVVM architecture and using GetX for state management and navigation.

⚠️ This project is currently under construction and being actively developed by CMADEEL.

Features

Splash screen with logo and smooth transition

Modern home page displaying all novels dynamically

Chapter listing for each novel

Beautiful reader page with:

Urdu Nastaliq font

RTL text direction

Next and Previous chapter buttons

Exit to Home navigation

MVVM + GetX architecture for clean code

Dynamic novel loading from .txt files

Easily add more novels by placing text files in the assets folder

Full Urdu language support

Architecture (MVVM + GetX)
```
lib/
 ├── main.dart
 ├── data/
 │    ├── models/
 │    │     ├── novel_model.dart
 │    │     └── chapter_model.dart
 │    └── sources/
 │          └── local_novel_source.dart
 ├── modules/
 │    ├── splash/
 │    │     ├── splash_view.dart
 │    │     └── splash_controller.dart
 │    ├── home/
 │    │     ├── home_view.dart
 │    │     └── home_controller.dart
 │    ├── chapters/
 │    │     ├── chapter_list_view.dart
 │    │     └── chapter_list_controller.dart
 │    └── reader/
 │          ├── reader_view.dart
 │          └── reader_controller.dart
 ├── routes/
 │    └── app_routes.dart
 └── utils/
      └── app_colors.dart
```
MVVM Explanation:

Model: Data structures (novels, chapters).

View: Flutter UI screens (widgets).

ViewModel (Controller): Logic, navigation, and state handled by GetX controllers.

Technology Stack
Component	Technology
Framework	Flutter
State Management	GetX
Architecture	MVVM
Language	Dart
UI Design	Material 3 + Custom Styling
Font	Noto Nastaliq Urdu
Assets	Local .txt novel files
How to Add New Novels

Add your .txt files in:

assets/novels/


Each file represents one novel and should follow this format:

#title میرا خواب
#author CMADEEL

#chapter باب اول
ایک بچہ اپنے خوابوں میں بار بار ایک ہی منظر دیکھتا ہے...

#chapter باب دوم
وقت گزرتا ہے، خواب حقیقت کے قریب آتے جاتے ہیں...


File Naming Rules:

Use lowercase English letters and underscores only.

Example file names:

mera_khawab.txt

ishq_ka_darya.txt

chand_ka_raaz.txt

Update pubspec.yaml:
```
flutter:
  assets:
    - assets/logo.png
    - assets/novels/
```
UI Overview
Screen	Description
Splash Screen	App intro with logo and progress indicator
Home	Lists all available novels dynamically
Chapter List	Shows chapters for the selected novel
Reader	Displays Urdu text with next/back buttons and exit option
How to Run the Project
```
git clone https://github.com/CM-Kali/cm_novel.git
cd urdu_novel_app
flutter pub get
flutter run
```
Future Enhancements

Bookmark last read chapter

Dark mode toggle

Font size customization

Audio narration

Search novels or chapters

Firebase integration for cloud-based novels

Comment and rating system

Author

CMADEEL
Pakistan 🇵🇰
Flutter Developer & UI Designer
Focused on simplicity, performance, and clean architecture.

License

This project is licensed under the MIT License.
```
MIT License © 2025 CMADEEL
```
