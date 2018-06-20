## Themes
In Android, We declare themes in XML and then assign it to our application using AndroidManifest.xml. However, in Flutter, we can declare themes in the top level widget. There are two kinds of widgets, `WidgetsApp` and `MaterialApp` we can use as a top level widget.

### WidgetsApp vs MaterialApp
Both widgets wrap a number of widgets that are commonly required for an application. It is recommended to use `MaterialApp` because it bulids upon a `WidgetsApp` by adding material-design specific functionality.

### How do we declare theme of our app?
Let's first take a look at `ThemeData` constructor.

```dart
ThemeData({Brightness brightness, MaterialColor primarySwatch, Color primaryColor, Brightness primaryColorBrightness,
  Color primaryColorLight, Color primaryColorDark, Color accentColor, Brightness accentColorBrightness, Color canvasColor,
  Color scaffoldBackgroundColor, Color bottomAppBarColor, Color cardColor, Color dividerColor, Color highlightColor,
  Color splashColor, InteractiveInkFeatureFactory splashFactory, Color selectedRowColor, Color unselectedWidgetColor,
  Color disabledColor, Color buttonColor, ButtonThemeData buttonTheme, Color secondaryHeaderColor,
  Color textSelectionColor, Color textSelectionHandleColor, Color backgroundColor, Color dialogBackgroundColor,
  Color indicatorColor, Color hintColor, Color errorColor, String fontFamily, TextTheme textTheme,
  TextTheme primaryTextTheme, TextTheme accentTextTheme, InputDecorationTheme inputDecorationTheme,
  IconThemeData iconTheme, IconThemeData primaryIconTheme, IconThemeData accentIconTheme,
  SliderThemeData sliderTheme, ChipThemeData chipTheme, TargetPlatform platform })
```

The most useful values to give are, in order of importance:
- The desired theme `brightness`.
- The primary color palette (the `primarySwatch`), chosen from one of the swatches defined by the material design spec. This should be one of the maps from the [Colors](https://docs.flutter.io/flutter/material/Colors-class.html) class that do not have "accent" in their name.
- The `accentColor`, sometimes called the secondary color, and, if the accent color is specified, its brightness(`accentColorBrightness), so thaht the right contrasting text color will be used over the accent color.

Let's define a `ThemeData` constructor. We are going to compare two constructors. First one is the default `ThemeData` constructor and the other is the constructor which passes `primarySwatch` and `textSelectionColor` values.

1) ```dart
   return new MaterialApp(
     theme: new ThemeData(),
   );   
   ```

2) ```dart
   return new MaterialApp(
     theme: new ThemeData(
       primarySwatch: Colors.teal,
       textSelectionColor: Colors.red,
     )
   );
   ```

| First | Second |
|-------|-------|
|<img src="images/theme-default.png" width="270" height="480">|<img src="images/theme-teal-red.png" width="270" height="480">|
