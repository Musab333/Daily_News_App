# Name application ✅
   Daily News Application

**App Description**

    "Daily News" is a modern news application that provides you with the latest updates from reliable sources, categorized into three main sections: Business News, Sports News, and Science News. The app features a simple and user-friendly interface, with a home screen that allows quick access to the news that matters to you.

**Key Features of the App:**

1. **Splash Screen:**
    - Upon launching the app, a splash screen is displayed with the app's logo and name, providing a smooth and engaging user experience.

2. **Home Screen:**
    - The home screen is divided into three main sections:
     - **Business News:** Includes the latest updates and developments in the world of economics and business.
     - **Sports News:** Offers the most important sports news from various local and international sports.
     - **Science News:** Provides the latest advancements and research in the fields of science and technology.
     - News articles are displayed in a scrollable list with clear headlines and thumbnails.

3. **Integration with News API:**
   - The app is integrated with a free news API service, ensuring that news content is regularly and consistently updated.
   - When you tap on any news item, you are directly redirected to the official website of the news article to read the full details.

# Technology app
    - Flutter
    - Dart 
    - Api News 

# Architecture Pattern
    MVC Architecture 

# State Management
    BLoC/Cubit Statemanagement

# Screens
- [1] Onboarding Screen
- [2] HomeLayout
- [3] Business Screen
- [4] Sports Screen
- [5] Science Screen


# Create Screen Done
- [1] Onboarding Screen
- [2] HomeLayout
- [3] Business Screen
- [4] Sports Screen
- [5] Science Screen


# Snapshots


# packages & Dependencies
  cupertino_icons: ^1.0.2
  bloc: ^8.1.2
  flutter_bloc: ^8.1.3
  dio: ^5.4.0
  shared_preferences: ^2.2.2
  smooth_page_indicator: ^1.1.0
  conditional_builder_null_safety: ^0.0.6
  fluttertoast: ^8.2.4
  carousel_slider: ^4.2.1
  hexcolor: ^3.0.1
  #webview_flutter: ^4.4.2
  webview_flutter: ^2.0.3
  flutter_svg: ^2.0.5

# Directory Structure
   lib
   ├───controller
   │   ├───news_bloc
   │   └───news_cubit
   ├───helper
   │   ├───local
   │   └───remote
   ├───model
   ├───shared
   │   ├───constants
   │   │   └───bloc_observer
   │   └───styles
   └───view
       ├───onboarding
       ├───screens
       │   ├───home
       │   ├───layout
       │   └───search
       └───widgets
