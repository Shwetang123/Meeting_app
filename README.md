# mind_meeting_app

A new Flutter project.

Overview
This README file provides instructions on how to set up, run, and test a hybrid mobile application developed using Flutter and the ZEGOCLOUD SDK. The application allows users to enter a meeting ID and start a one-on-one audio/video meeting.

Prerequisites
Before setting up the project, ensure you have the following prerequisites installed:

1. Flutter: Follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.
2. Android Studio: Install Android Studio for Android development.
3. Xcode: Required for iOS development (macOS only).
4. ZEGOCLOUD Account: Sign up for a free account at [ZEGOCLOUD](https://www.zegocloud.com/) and obtain the necessary API keys.

Project Setup
Follow these steps to set up and run the application:

1. Clone the Repository
Clone the repository to your local machine using the following command:
```bash
git clone <repository_link>
```

2. Navigate to the Project Directory
Navigate to the project directory:
```bash
cd <project_directory>
```

3. Install Dependencies
Run the following command to install all necessary dependencies:
```bash
flutter pub get
```

4. Configure ZEGOCLOUD SDK
Create a file named `config.dart` in the `lib` directory and add your ZEGOCLOUD API key and other necessary configurations:
```dart
// lib/config.dart
const String ZEGOCLOUD_API_KEY = 'your_api_key_here';
const String ZEGOCLOUD_APP_ID = 'your_app_id_here';
const String ZEGOCLOUD_APP_SIGN = 'your_app_sign_here';
```

5. Run the Application
Use the following commands to run the application on your desired platform:

Android
Connect an Android device or start an Android emulator, then run:
```bash
flutter run
```

iOS
Connect an iOS device or start an iOS simulator, then run:
```bash
flutter run
```

6. Building for Release
For a production build, use the following commands:

Android
```bash
flutter build apk
```

iOS
```bash
flutter build ios
```

Testing the Application
To test the application on both iOS and Android devices, follow these steps:

1. Launch the app: Start the app on your device or emulator.
2. Enter a Meeting ID: On the Meeting ID Input Screen, enter a valid meeting ID.
3. Join the Meeting: Press the join button to start a one-on-one video call.
4. Verify Functionality: Ensure that both users with the same meeting ID can connect and communicate.

Project Structure
The project structure is as follows:
```
lib/
|-- main.dart
|-- config.dart
|-- screens/
    |-- loading_screen.dart
    |-- meeting_id_input_screen.dart
    |-- video_conferencing_screen.dart
|-- widgets/
    |-- loader.dart
    |-- meeting_id_input.dart
    |-- join_button.dart
```

Key Files and Their Purposes
-  main.dart: Entry point of the application.
-  config.dart: Configuration file for ZEGOCLOUD API keys.
-  loading_screen.dart: Displays the loading animation.
-  meeting_id_input_screen.dart: Screen for entering the meeting ID.
-  video_conferencing_screen.dart: Screen for the video conferencing session.
-  loader.dart: Loader widget for the loading screen.
-  meeting_id_input.dart: Text input widget for entering the meeting ID.
-  join_button.dart: Button widget for joining the meeting.

Demo Video
A short demo video showcasing the app's functionality can be found [here]. The video demonstrates launching the app, entering a meeting ID, and starting a one-on-one video call.


