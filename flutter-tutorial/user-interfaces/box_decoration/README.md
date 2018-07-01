# BoxDecoration

## What is the BoxDecoration?

The BoxDecoration class provides a variety ways to draw a box.

The Box can be divided into three parts: border, body, and boxShadow.

Let's first take a look in the following constructors to see what properties they contain.

## Constructors

```dart
BoxDecoration({Color color, DecorationImage image, BoxBorder border, BorderRadiusGeometry borderRadius,
   List<BoxShadow> boxShadow, Gradient gradient, BoxShape shape: BoxShape.rectangle })
```

## Examples

Let's see how to change the color, which fills the box.

<img src="https://j.gifs.com/Q0l457.gif" alt="Draw a color in the box with a border.">

The default value of `BoxShape` is `BoxShape.rectangle`. It can also be `BoxShape.circle`. 

<img src="images/shape-rectangle.png" width="270" height="480" alt="Rectangle box shape" align="left">
&nbsp;&nbsp;&nbsp;
<img src="images/shape-circle.png" width="270" height="480" alt="Circle box shape">

