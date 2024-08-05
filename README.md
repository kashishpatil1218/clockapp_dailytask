# clockapp_dailytask

Sure! Below is an example of a README file for Flutter widget buttons, detailing their properties and usage.

---

# Flutter Widget Buttons

This README provides an overview of commonly used button widgets in Flutter, their properties, and examples of how to use them.

## Contents
- [TextButton](#textbutton)
- [ElevatedButton](#elevatedbutton)
- [OutlinedButton](#outlinedbutton)
- [IconButton](#iconbutton)
- [FloatingActionButton](#floatingactionbutton)
- [Usage Examples](#usage-examples)

## TextButton

`TextButton` is a simple button that displays a text label without any background.

### Properties:
- **onPressed**: Function that gets called when the button is pressed.
- **onLongPress**: Function that gets called when the button is long-pressed.
- **style**: Defines the appearance of the button (e.g., color, padding, shape).
- **child**: The widget that is displayed inside the button (usually a `Text` widget).

### Example:
```dart
TextButton(
  onPressed: () {
    // Handle button press
  },
  child: Text('Text Button'),
)
```

## ElevatedButton

`ElevatedButton` is a button that has a background color and elevation.

### Properties:
- **onPressed**: Function that gets called when the button is pressed.
- **onLongPress**: Function that gets called when the button is long-pressed.
- **style**: Defines the appearance of the button (e.g., color, padding, shape, elevation).
- **child**: The widget that is displayed inside the button (usually a `Text` widget).

### Example:
```dart
ElevatedButton(
  onPressed: () {
    // Handle button press
  },
  child: Text('Elevated Button'),
)
```

## OutlinedButton

`OutlinedButton` is a button that has an outline border.

### Properties:
- **onPressed**: Function that gets called when the button is pressed.
- **onLongPress**: Function that gets called when the button is long-pressed.
- **style**: Defines the appearance of the button (e.g., color, padding, shape, side).
- **child**: The widget that is displayed inside the button (usually a `Text` widget).

### Example:
```dart
OutlinedButton(
  onPressed: () {
    // Handle button press
  },
  child: Text('Outlined Button'),
)
```

## IconButton

`IconButton` is a button that displays an icon.

### Properties:
- **onPressed**: Function that gets called when the button is pressed.
- **icon**: The icon to display inside the button (usually an `Icon` widget).
- **tooltip**: Text that describes the action of the button (displayed when the user long-presses the button).

### Example:
```dart
IconButton(
  onPressed: () {
    // Handle button press
  },
  icon: Icon(Icons.favorite),
  tooltip: 'Favorite',
)
```

## FloatingActionButton

`FloatingActionButton` is a circular button that floats above the UI and is usually used for primary actions.

### Properties:
- **onPressed**: Function that gets called when the button is pressed.
- **backgroundColor**: The background color of the button.
- **child**: The widget that is displayed inside the button (usually an `Icon` widget).

### Example:
```dart
FloatingActionButton(
  onPressed: () {
    // Handle button press
  },
  backgroundColor: Colors.blue,
  child: Icon(Icons.add),
)
```

## Usage Examples

### TextButton Example
```dart
TextButton(
  onPressed: () {
    print('Text Button Pressed');
  },
  child: Text('Click Me'),
)
```

### ElevatedButton Example
```dart
ElevatedButton(
  onPressed: () {
    print('Elevated Button Pressed');
  },
  child: Text('Click Me'),
)
```

### OutlinedButton Example
```dart
OutlinedButton(
  onPressed: () {
    print('Outlined Button Pressed');
  },
  child: Text('Click Me'),
)
```

### IconButton Example
```dart
IconButton(
  onPressed: () {
    print('Icon Button Pressed');
  },
  icon: Icon(Icons.thumb_up),
  tooltip: 'Like',
)
```

### FloatingActionButton Example
```dart
FloatingActionButton(
  onPressed: () {
    print('Floating Action Button Pressed');
  },
  backgroundColor: Colors.green,
  child: Icon(Icons.navigation),
)
```

Sure! Below is a concise README file for the Flutter `Drawer` widget and `DrawerHeader`.

---

# Flutter Drawer Widget

This README provides a brief overview of the Flutter `Drawer` widget and `DrawerHeader`, their properties, and basic usage.

## Contents
- [Drawer](#drawer)
- [DrawerHeader](#drawerheader)
- [Basic Usage](#basic-usage)

## Drawer

The `Drawer` widget in Flutter is a side panel that slides in from the left edge of the screen and is commonly used for navigation.

### Key Properties:
- **child**: The primary content of the drawer, usually a `ListView` containing `ListTile` widgets.
- **elevation**: The z-coordinate at which to place the drawer, affecting the shadow size.
- **semanticLabel**: A semantic label for accessibility tools (e.g., screen readers).

### Example:
```dart
Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Drawer Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {
          // Handle the tap
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () {
          // Handle the tap
        },
      ),
    ],
  ),
)
```

## DrawerHeader

The `DrawerHeader` widget is used to display a header within the `Drawer`. It is commonly used to show user information or branding.

### Key Properties:
- **decoration**: Decoration for the header container, often a `BoxDecoration` with a background color.
- **child**: The widget displayed inside the header, often a `Text` or `Column` widget.

### Example:
```dart
DrawerHeader(
  decoration: BoxDecoration(
    color: Colors.blue,
  ),
  child: Text(
    'Drawer Header',
    style: TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  ),
)
```

## Basic Usage

To use a `Drawer` and `DrawerHeader` in your Flutter app, include them in the `Scaffold` widget.

### Example:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Example'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Handle the tap
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Swipe from the left edge or tap the menu icon to open the drawer.'),
        ),
      ),
    );
  }
}
```
# Task 1:
 <div>
 <img src="https://github.com/user-attachments/assets/599c613a-7e24-4d39-86c6-938b925053d2"height=500px>
 <img src="https://github.com/user-attachments/assets/bff50a72-cedb-4be3-96b5-0241ebe84edb"height=500px>


 </div>
