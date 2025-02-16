import 'package:flutter/material.dart';

abstract class Shape {
  void revealMe();
}

class Square extends Shape {
  @override
  void revealMe() {
    debugPrint("You chose to print a square");
  }
}

class Rectangle extends Shape {
  @override
  void revealMe() {
    debugPrint("You chose to print a rectangle");
  }
}

class Circle extends Shape {
  @override
  void revealMe() {
    debugPrint("You chose to print a circle");
  }
}

class ShapeMaker {
  Shape? selectShape(String shape) {
    switch (shape) {
      case ("square"):
        Square square = Square();
        return square;
      case ("rectangle"):
        Rectangle rectangle = Rectangle();
        return rectangle;
      case ("circle"):
        Circle circle = Circle();
        return circle;
      default:
        return null;
    }
  }
}

class ShapePrinter {
  void createShape(String shapeType) {
    ShapeMaker shapeMaker = ShapeMaker();
    Shape? shape = shapeMaker.selectShape(shapeType);
    (shape != null
        ? shape.revealMe()
        : debugPrint("There is no shape called like that"));
  }
}

void main() {
  ShapePrinter shapePrinter = ShapePrinter();
  //test "createShape" function
  shapePrinter.createShape("rectangle");
  shapePrinter.createShape("hexagon");
}
