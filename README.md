# Weight Category Detection App

A mobile application developed using Flutter and Dart on Android Studio. Detects the Weight Category of the the user based on thier height and width. 

## FLutter and Dart
Flutter is a cross platform application development software. It is an open source UI software development offering from google. Flutter app was chosen for this project as flutter makes app development much easier as compared to other native app development platforms. The idea of building up every app as a “tree of widgets” makes the source code look simple and concise.

Dart is a highly object oriented programming language which forms the source code of an application developed on flutter. Its syntax resembles C++ to a great extent and this makes the transition to this recently released programming language smooth and easy.

## Main components of the app.
The soruce code behind the application resides in four different files.
1. main.dart
2. home.dart
3. left.dart
4. right.dart

## Main.dart
As the name suggests this dart code forms the structure for the entire app. It uses custom widget created in the home file to form the entire app.
The first two lines imports the required dependencies material.dart and home.dart.

![image](https://user-images.githubusercontent.com/78751003/119005891-7ba7b000-b9ad-11eb-929a-011054448634.png)

Then the MyApp widget which is a Stateless Widget is created. To initiate the execution of the code, main function calls MyApp.

![image](https://user-images.githubusercontent.com/78751003/119006644-2d46e100-b9ae-11eb-9733-3c63782f9708.png)

The title, theme and the home parameters of the MaterialApp function are assigned. The HomeScreen widget designed in the home.dart file is assigned to the home parameter. The Widget build function creates the root widget of our app (MaterialApp) in users screen.

![image](https://user-images.githubusercontent.com/78751003/119008189-911dd980-b9af-11eb-8929-e68db403cf6e.png)

## Left.dart

The left and the right files creates the most important decorating widget of the app. 
The custom widget created in the left.dart file is shown below in the red box.

![image](https://user-images.githubusercontent.com/78751003/119023929-26c16500-b9c0-11eb-9d84-8c75ae2457ed.png)

The widget is made using the Row widget of the material.dart library. mainAxisAlignment is set to strat to position the children at the left of the row.Children is a container of height 30 and width equal to barwidth parameter which is a required parameter to create an instance of the RightImage class.
Decoration mentions two radius widgets of equal radius that form the tip of the row bars.


## Right.dart
 
The widget created in right.dart is shown below. 

![right](https://user-images.githubusercontent.com/78751003/119263406-915ee480-bbfc-11eb-8965-960937182e03.PNG)

The widget is created almost the same way as the left widget. mainAxisAkignment is set to end to shift the widget at the extreme right. 
## Home.dart

This is the most important segment. The HomeScreen class inherits the Stateful widget class as the taking user input and displaying output requires change in screen which means a change in state of the HomeScreen. The createState function is defined for the same purpose. For taking input text editing controller widget is defined one for storing height and other for weight. The Widget build function returns a Scaffold widget that forms the entire app. It has an app bar with title Weight Category Detector. Background colour of Scaffold is set to black. 

![Scaffold](https://user-images.githubusercontent.com/78751003/119262848-55c31b00-bbfa-11eb-8dd3-b0365e2b4b31.PNG)

Body is assigned a SingleChildScrollView which is the preferred view type when only one child is needed which will be visible entirely. This also helps in scrolling the app when the app is open either in landscape view or split screen view. 

![Single](https://user-images.githubusercontent.com/78751003/119262876-62e00a00-bbfa-11eb-9248-a6e49bb97aa8.PNG)

The only child used here is a Column Widget. This contains a series of alternate sized box and other widgets. The first sized box creates the blank space in the top of the app.

![AppBarSpace](https://user-images.githubusercontent.com/78751003/119262926-94f16c00-bbfa-11eb-804c-ac20232b7b5d.PNG)

Then the second element of the list is Row. This creates the very first elements of the app. They are the two TextFields which in turn uses the text editing controller defined earlier, height and weight. TextFields also have hint texts as Height(m) and Weight(Kg) to specify to the user that their height must be entered in meters and weight in kilograms. Selection and editing of appropriate font is done. 

![TextFeilds](https://user-images.githubusercontent.com/78751003/119262943-a3d81e80-bbfa-11eb-988f-9380876371c2.PNG)

After this another Sized box is used to create the blank space in middle.
 
![TextFeild_space](https://user-images.githubusercontent.com/78751003/119262958-bbafa280-bbfa-11eb-956e-9d10d943bb35.PNG) 
 
Then comes the GestureDetector widget which creates the calculate button that the user must touch after entering their weight and height. On tap of the button the height and width text entered by the user is parsed as double variables h and w.

![Gesture](https://user-images.githubusercontent.com/78751003/119263095-4abcba80-bbfb-11eb-942c-6fa815145e21.PNG)

The setState function is called inside the assigned function to onTap parameter. The argument of setState() is a function that calculates the BMI of the user and stores their appropriate weight category as string in the result variable. The if else ladder used for the purpose is shown below.

![GestureDetector](https://user-images.githubusercontent.com/78751003/119263004-f6193f80-bbfa-11eb-8a05-237ba255e499.PNG)

The text given to the button is Calculate to specify the user that they must tap it. Then comes another sized box to create space in between the calculate button and the BMI value. After the sized box is a large font to display the BMI. It is a container widget that contains the bmi variable’s value as a string. On tap of the calculate button, the state of the home screen changes and as value of the BMI changes, the value displayed by this container also changes. Another sized box is implemented to create some blank space in middle of the app. 

![Cal](https://user-images.githubusercontent.com/78751003/119263251-e6e6c180-bbfb-11eb-9b06-ab317fe656fa.PNG)

Then comes an interesting widget, the Visibility. It is used to display conditionally. In the visible parameter a Boolean value must be given. In our case as we want to display the result string only when a result is calculated, result.isNotEmpty() is used. This returns true if result is not empty. Initially when the calculate button isn’t tapped the result is empty and nothing is visible in the Visibility widgets area. When calculate is pressed, the state is changed with result containing the weight category of the user. In this new state the weight category if displayed in the area which was previously empty. 

![Nohome](https://user-images.githubusercontent.com/78751003/119263292-185f8d00-bbfc-11eb-9b23-ee10f723aab6.PNG)![Over](https://user-images.githubusercontent.com/78751003/119263304-21e8f500-bbfc-11eb-9426-905e84f1ca18.PNG)

Before adding our custom design widget a sized box is used to create appropriate blank area between visibility widget and the design. Adding the design is a simple procedure. A series of sized box and RightImage widget is created with different bar widths. This creates the three right images with the middle one slightly longer than rest. Then two left images are created with same barwidth but with increased spacing.

![decor](https://user-images.githubusercontent.com/78751003/119263337-41801d80-bbfc-11eb-84c0-11463a905a3c.PNG)

The application is ready!

![BMI_calculated](https://user-images.githubusercontent.com/78751003/119263346-4b098580-bbfc-11eb-8180-70927690b5e7.PNG)






