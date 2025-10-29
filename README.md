# 📚 Urdu Novel App

A beautifully designed **Urdu Novel Reading App** built with **Flutter**, following **MVVM architecture** and powered by **GetX** for state management and navigation.

This app allows users to read Urdu novels stored in `.txt` files directly from app assets — with smooth navigation between chapters, a modern UI, and a rich reading experience.

---

## 🌟 Features

✅ **Splash Screen** with smooth transition  
✅ **Modern Home Page** displaying all novels dynamically  
✅ **Chapter Listing** for each novel  
✅ **Beautiful Reader Page** with:
   - Urdu Nastaliq font  
   - RTL text direction  
   - “Next Chapter” & “Previous Chapter” buttons  
   - “Exit to Home” navigation  
✅ **MVVM + GetX Architecture** for clean code separation  
✅ **Dynamic Novel Loading** from `.txt` files  
✅ **Easily Add More Novels** — just drop text files into the assets folder  
✅ **Supports Urdu language fully**

---

## 🏗️ Architecture (MVVM + GetX)

lib/
├── main.dart
├── data/
│ ├── models/
│ │ ├── novel_model.dart
│ │ └── chapter_model.dart
│ └── sources/
│ └── local_novel_source.dart
├── modules/
│ ├── splash/
│ │ ├── splash_view.dart
│ │ └── splash_controller.dart
│ ├── home/
│ │ ├── home_view.dart
│ │ └── home_controller.dart
│ ├── chapters/
│ │ ├── chapter_list_view.dart
│ │ └── chapter_list_controller.dart
│ └── reader/
│ ├── reader_view.dart
│ └── reader_controller.dart
├── routes/
│ └── app_routes.dart
└── utils/
└── app_colors.dart

yaml
Copy code

**MVVM Explanation:**
- **Model:** Holds data structures (novels, chapters).  
- **View:** Flutter UI screens (widgets).  
- **ViewModel (Controller):** Logic, navigation, and state handled by GetX controllers.  

---

## 🧠 Technology Stack

| Component | Technology |
|------------|-------------|
| Framework | Flutter |
| State Management | GetX |
| Architecture | MVVM |
| Language | Dart |
| UI Design | Material 3 + Custom Styling |
| Font | Noto Nastaliq Urdu |
| Assets | Local `.txt` novel files |

---

## 📝 How to Add New Novels

Add your `.txt` files in:

assets/novels/

arduino
Copy code

Each file represents **one novel** and should follow this structure:

```text
#title میرا خواب
#author CMADEEL

#chapter باب اول
ایک بچہ اپنے خوابوں میں بار بار ایک ہی منظر دیکھتا ہے...

#chapter باب دوم
وقت گزرتا ہے، خواب حقیقت کے قریب آتے جاتے ہیں...
📌 File names should be lowercase English words separated by underscores:

Copy code
mera_khawab.txt
ishq_ka_darya.txt
chand_ka_raaz.txt
Then update your pubspec.yaml:

yaml
Copy code
flutter:
  assets:
    - assets/novels/
    - assets/logo.png
Run:

bash
Copy code
flutter pub get
💎 UI Overview
Screen	Description
Splash Screen	App intro with logo and loading animation
Home	Lists all available novels dynamically
Chapter List	Shows chapters for the selected novel
Reader	Displays chapter text with Urdu font, next/back buttons

⚙️ How to Run the Project
bash
Copy code
git clone https://github.com/your-username/urdu_novel_app.git
cd urdu_novel_app
flutter pub get
flutter run
🧪 Testing
To test the app flow:

bash
Copy code
flutter test test/novel_app_test.dart
This checks:

Splash screen display

Navigation to home

Novel and chapter loading

Chapter navigation buttons

🚀 Future Enhancements
📖 Bookmark last read chapter

🌓 Dark Mode toggle

🔊 Audio narration of novels

🔍 Search novels or chapters

🌐 Firebase integration for cloud novels

💬 Comment and rating system

👨‍💻 Author
CMADEEL
📍 Pakistan 🇵🇰
💬 Passionate Flutter Developer & UI Designer
🧠 Focused on simplicity, beauty, and clean architecture

📄 License
This project is licensed under the MIT License — you are free to use, modify, and distribute it with proper attribution.

objectivec
Copy code
MIT License © 2025 CMADEEL
