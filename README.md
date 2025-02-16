# factory_design_pattern_app

A new Flutter project.

## Getting Started

This project applies factory design pattern as following:
- An abstract class called "Shape" with "revealMe" method with no implementation
- Three classes called "Square", "Rectangle" and "Circle" inherited from class "Shape" and implemented "revealMe" method
- Class "ShapeMaker" with "selectShape" method, it takes the shape name and returns an object of the same type
- Class "ShapePrinter" with "createShape" method, it creates an object from "ShapeMaker" to use "selectShape" method with a certain shape type passed to it
- This method checks if the shape type exists, it calls the "revealMe" method, if it doesn't, it prints a sentence saying that
- In the main function, an object of type "ShapePrinter" was created
- This object was created to call "createShape" to test the app with different shapes
