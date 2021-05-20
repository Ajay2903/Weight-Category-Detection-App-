# Weight Category Detection App

A mobile application developed using Flutter and Dart on Android Studio. Detects the Weight Category of the the user based on thier height and width. 

## FLutter and Dart
Flutter is a cross platform application development software. It is an open source UI software development offering from google. Flutter app was chosen for this project as flutter makes app development much easier as compared to other native app development platforms. The idea of building up every app as a “tree of widgets” makes the source code look simple and concise.

Dart is a highly object oriented programming language which forms the source code of an application developed on flutter. Its syntax resembles C++ to a great extent and this makes the transition to this recently released programming language smooth and easy.

# Main components of the app.
The soruce code behind the application resides in four different files.
1. main.dart
2. home.dart
3. left.dart
4. right.dart

# Main.dart
As the name suggests this dart code forms the structure for the entire app. It uses custom widget created in the home file to form the entire app.
The first two lines imports the required dependencies material.dart and home.dart.

![image](https://user-images.githubusercontent.com/78751003/119005891-7ba7b000-b9ad-11eb-929a-011054448634.png)

Then the MyApp widget which is a Stateless Widget is created. To initiate the execution of the code, main function calls MyApp.

![image](https://user-images.githubusercontent.com/78751003/119006644-2d46e100-b9ae-11eb-9733-3c63782f9708.png)

The title, theme and the home parameters of the MaterialApp function are assigned. The HomeScreen widget designed in the home.dart file is assigned to the home parameter. The Widget build function creates the root widget of our app (MaterialApp) in users screen.

![image](https://user-images.githubusercontent.com/78751003/119008189-911dd980-b9af-11eb-8929-e68db403cf6e.png)

# Left.dart

The left and the right files creates the most important decorating widget of the app. 
The custom widget created in the left.dart file is shown below in the red box.

![image](https://user-images.githubusercontent.com/78751003/119023929-26c16500-b9c0-11eb-9d84-8c75ae2457ed.png)

The widget is made using the Row widget of the material.dart library. 






