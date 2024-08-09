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

<h1 align="center">Task2</h1>
 <h2 align="center"> 🔶🔸 Asynchronous Programming🔸🔶</h2>

 ## What is  Asynchronous Programming?
 - Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. In traditional synchronous programming, tasks are executed one after another, and the program waits for each task to finish before proceeding to the next one.

## What is Future Class ?
- In Dart, the Future class represents the result of an asynchronous operation, which is a computation that doesn't complete immediately. Futures are often used in asynchronous programming to handle long-running tasks without blocking the main thread. For example, you might use a future to get data from a server, query data from a database, read a file, or do complicated computational work.

## What is Duration class & Future.delayed() constructor with Example ?
-Sure! Below is a detailed yet concise README file explaining the `Duration` class and the `Future.delayed()` constructor in Dart, along with an example.

---

# Duration Class & Future.delayed() Constructor

This README provides an overview of the `Duration` class and the `Future.delayed()` constructor in Dart, including their definitions, key properties, and a usage example.

## Duration Class

The `Duration` class in Dart represents a span of time, such as a few seconds or hours. It is used to measure time intervals and schedule tasks.

### Key Properties:
- **days**: The number of days in the duration.
- **hours**: The number of hours in the duration.
- **minutes**: The number of minutes in the duration.
- **seconds**: The number of seconds in the duration.
- **milliseconds**: The number of milliseconds in the duration.
- **microseconds**: The number of microseconds in the duration.

### Example:
```dart
Duration duration = Duration(seconds: 5);
print(duration.inSeconds); // Output: 5
```

## Future.delayed() Constructor

The `Future.delayed()` constructor in Dart creates a `Future` that completes with a value after a specified duration. It is useful for scheduling tasks to be executed after a delay.

### Key Properties:
- **duration**: The `Duration` to wait before completing the future.
- **computation**: An optional function that generates the value with which the future completes.

### Example:
```dart
Future<int> futureDelayed = Future.delayed(Duration(seconds: 2), () => 42);
```

### Using Future.delayed() with async/await:
```dart
Future<void> main() async {
  print('Waiting for 2 seconds...');
  int result = await Future.delayed(Duration(seconds: 2), () => 42);
  print('Result: $result'); // Output: Result: 42
}
```

## Usage Example

Below is a complete example that demonstrates how to use the `Duration` class and the `Future.delayed()` constructor together in a Dart application.

```dart
import 'dart:async';

void main() async {
  // Define a duration of 2 seconds
  Duration duration = Duration(seconds: 2);

  // Print a message and wait for the duration to complete
  print('Waiting for ${duration.inSeconds} seconds...');
  
  // Use Future.delayed() to wait for the duration and then get a result
  int result = await Future.delayed(duration, () => 42);
  
  // Print the result after the delay
  print('Result: $result'); // Output: Result: 42
}
```

## Conclusion

The `Duration` class and the `Future.delayed()` constructor are powerful tools in Dart for managing time intervals and scheduling tasks to run after a delay. By understanding these concepts, developers can create more responsive and efficient applications.

---
## What is the Use of the async & await keyword?
-Sure! Here is a concise README file explaining the use of the `async` and `await` keywords in Dart.

---

# Use of the async & await Keywords

This README provides a brief overview of the `async` and `await` keywords in Dart, including their purpose and basic usage.

## async Keyword

The `async` keyword is used to mark a function as asynchronous. This allows the function to use `await` expressions to pause its execution until a `Future` completes.

### Syntax:
```dart
Future<void> fetchData() async {
  // Function body
}
```

## await Keyword

The `await` keyword is used within an `async` function to pause the execution of the function until a `Future` completes and returns a result. It simplifies chaining asynchronous operations.

### Syntax:
```dart
var result = await someAsyncFunction();
```

## Example

Below is an example demonstrating the use of `async` and `await` keywords to handle asynchronous operations in Dart.

```dart
import 'dart:async';

// Simulate a network request by returning a Future
Future<String> fetchData() async {
  // Simulate a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));
  return 'Fetched Data';
}

void main() async {
  print('Fetching data...');
  
  // Use await to wait for the fetchData function to complete
  String data = await fetchData();
  
  // Print the result after the Future completes
  print(data); // Output: Fetched Data
}
```
## What is Recursion ? With Example.
- Recursion in Flutter, as in general programming, refers to a function calling itself to solve a problem by breaking it down into smaller, more manageable sub-problems. Each recursive call tackles a smaller instance of the original problem until it reaches a base case, which stops the recursion. This technique is used to simplify complex tasks by dividing them into simpler, repetitive tasks. In Flutter, recursion can be applied to various tasks such as building widget trees, navigating routes, or processing data structures, enhancing code efficiency and readability when used appropriately.

---

### Key Components:
1. **Base Case**: The condition under which the recursive function stops calling itself to prevent infinite recursion.
2. **Recursive Case**: The part of the function where it calls itself with a modified argument, moving towards the base case.

## Example

### Factorial Calculation

The factorial of a number \( n \) (denoted as \( n! \)) is the product of all positive integers less than or equal to \( n \). It can be defined recursively as:
- \( n! = n \times (n-1)! \)
- \( 0! = 1 \) (base case)

### Dart Example:
```dart
int factorial(int n) {
  // Base case
  if (n <= 1) {
    return 1;
  }
  // Recursive case
  return n * factorial(n - 1);
}

void main() {
  int number = 5;
  int result = factorial(number);
  print('Factorial of $number is $result'); // Output: Factorial of 5 is 120
}
```

### Explanation:
1. **Base Case**: When \( n \) is 1 or less, the function returns 1.
2. **Recursive Case**: For \( n > 1 \), the function calls itself with \( n-1 \) and multiplies the result by \( n \).
---
## What is Timer class with example ?
# Timer Class
# Time Class Definition

The `Time` class in programming typically represents a specific point or interval in time. It encapsulates time-related data, such as hours, minutes, seconds, and sometimes milliseconds. This class often provides methods for time manipulation, comparison, and formatting. For instance, in Dart, there is no direct `Time` class, but similar functionality is achieved using the `Duration` class for intervals and `DateTime` for specific moments. The `Duration` class represents a span of time, while `DateTime` represents a specific date and time, offering methods to manipulate and compare time values efficiently.

---
## Key Properties and Methods

### Constructors
- **Timer(Duration duration, void Function() callback)**: Creates a single-shot timer that runs the callback function once after the specified duration.
- **Timer.periodic(Duration duration, void Function(Timer timer) callback)**: Creates a repeating timer that runs the callback function at specified intervals.

### Methods
- **cancel()**: Cancels the timer, preventing it from firing.

## Example

Below is an example demonstrating how to use the `Timer` class to create a single-shot timer and a periodic timer.

### Single-shot Timer
```dart
import 'dart:async';

void main() {
  // Create a single-shot timer that fires after 3 seconds
  Timer(Duration(seconds: 3), () {
    print('Single-shot timer fired after 3 seconds');
  });

  print('Waiting for timer to fire...');
}
```

### Periodic Timer
```dart
import 'dart:async';

void main() {
  // Create a periodic timer that fires every 2 seconds
  Timer.periodic(Duration(seconds: 2), (Timer timer) {
    print('Periodic timer fired');
    // Optionally, cancel the timer after a certain condition
    // timer.cancel();
  });

  print('Waiting for periodic timer to fire...');
}
```

## What is Timer.periodic and use with Example?
- The `Timer.periodic` constructor in Dart is used to create a timer that repeatedly fires at specified intervals. It is useful for scheduling tasks that need to be executed regularly.

## Key Properties and Methods

### Constructor
- **Timer.periodic(Duration duration, void Function(Timer timer) callback)**: Creates a repeating timer that calls the provided callback function at specified intervals.

### Method
- **cancel()**: Cancels the timer, preventing it from firing again.

## Example

Below is an example demonstrating how to use the `Timer.periodic` constructor to create a periodic timer that fires every 2 seconds.

```dart
import 'dart:async';

void main() {
  // Create a periodic timer that fires every 2 seconds
  Timer.periodic(Duration(seconds: 2), (Timer timer) {
    print('Periodic timer fired');
    
    // Optionally, cancel the timer after a certain number of executions
    // For example, cancel after 5 executions:
    if (timer.tick >= 5) {
      timer.cancel();
      print('Timer cancelled after 5 executions');
    }
  });

  print('Waiting for periodic timer to fire...');
}
```

### Explanation
1. **Timer.periodic**: Creates a timer that fires every 2 seconds.
2. **Callback Function**: The callback function is executed each time the timer fires.
3. **Cancel Timer**: The timer is cancelled after it has fired 5 times using the `cancel()` method.
 ```

<h1 align="center">Task3</h1>
 <h2 align="center"> 🔶🔸 Analoge Clock🔸🔶</h2>
---
# About
The Digital Clock page is a minimalist web application designed to display the current time in an elegant and user-friendly interface. This clock updates every second, ensuring that the displayed time is always accurate and current.


### Timer
- **Definition**: A Timer is a function that allows you to execute a code block after a certain duration or repeatedly at specified intervals.
- **Usage**: Useful for scheduling tasks to run in the future or periodically.
- **Examples**:
  - Setting a delay before executing a function.
  - Running a function repeatedly at fixed intervals.

### Datetime
- **Definition**: The `datetime` module supplies classes for manipulating dates and times.
- **Usage**: Provides functionalities to handle date and time operations like creating, comparing, and formatting dates and times.
- **Examples**:
  - Getting the current date and time.
  - Parsing date strings into datetime objects.
  - Formatting datetime objects into readable strings.

### Datetime.now()
- **Definition**: A method that returns the current local date and time.
- **Usage**: Used to fetch the current date and time for various operations like logging, time-stamping events, and scheduling.
- **Example**:
  - `current_time = datetime.now()` retrieves the current local date and time.

### Duration
- **Definition**: Represents the difference between two dates or times.
- **Usage**: Used to calculate the time span between two datetime objects.
- **Examples**:
  - Calculating the duration between two datetime events.
  - Measuring elapsed time for an operation.

### Timer.periodic
- **Definition**: A method that allows setting up a timer that triggers a function at regular intervals.
- **Usage**: Ideal for executing a recurring task at fixed time intervals.
- **Examples**:
  - Running a health check every 10 seconds.
  - Polling for updates at regular intervals.
   ```
 # Images
 <div>
<img src="https://github.com/user-attachments/assets/8c81bf7e-5def-45b6-b4e5-f36bfa07dfae"height=500px>
<img src="https://github.com/user-attachments/assets/d2f24f62-9dec-42c2-b046-69f286fc396f"height=500px>
<img src="https://github.com/user-attachments/assets/dbebce54-b40f-480d-abdd-e25ab22aee16"height=500px>
<img src="https://github.com/user-attachments/assets/e7043ca0-194b-40c9-a0b9-cbc0ac51c81c"height=500px>
<img src="https://github.com/user-attachments/assets/2dff727c-0874-44cb-89ca-31ce2b6baed2"height=500px>
</div>
 ```
<h1 align="center">Task4</h1>
 <h2 align="center"> 🔶🔸 Analoge Clock🔸🔶</h2>
 Sure! Here's a detailed README for your analog clock widget using Flutter's `Transform.rotate`:

---

# Analog Clock Widget

This project is an analog clock widget built using Flutter, demonstrating the use of the `Transform.rotate` widget to rotate clock hands.

## Features

- Real-time display of hours, minutes, and seconds
- Smooth and accurate hand movements
- Customizable clock face and hand styles

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- An IDE such as [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/analog-clock-widget.git
    cd analog-clock-widget
    ```

2. **Get the dependencies:**

    ```sh
    flutter pub get
    ```

3. **Run the application:**

    ```sh
    flutter run
    ```

## Usage

### Code Overview

The main component of the analog clock is implemented in the `lib/clock_widget.dart` file. Below is an overview of how the clock is constructed.

### Clock Widget

```dart
import 'package:flutter/material.dart';
import 'dart:async';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  Timer _timer;
  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.now();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 8,
              color: Colors.black26,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildHand(
              angleRadians: _dateTime.second * 6 * (3.14159265359 / 180),
              handLength: 0.9,
              handWidth: 2,
              color: Colors.red,
            ),
            _buildHand(
              angleRadians: _dateTime.minute * 6 * (3.14159265359 / 180),
              handLength: 0.75,
              handWidth: 4,
              color: Colors.black,
            ),
            _buildHand(
              angleRadians: (_dateTime.hour % 12 + _dateTime.minute / 60) * 30 * (3.14159265359 / 180),
              handLength: 0.5,
              handWidth: 6,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHand({
    @required double angleRadians,
    @required double handLength,
    @required double handWidth,
    @required Color color,
  }) {
    return Transform.rotate(
      angle: angleRadians,
      child: Container(
        width: handWidth,
        height: 200 * handLength,
        color: color,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
```

### Customization

You can customize the clock hands and face by modifying the parameters in the `_buildHand` method and the `Container` widget in the `build` method.
```
### Updating the Time

A `Timer` is used to update the time every second:

```dart
_timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
  setState(() {
    _dateTime = DateTime.now();
  });
});
```
 # Images
 <div>
<img src="https://github.com/user-attachments/assets/cc113434-83bc-4317-92dc-8913b3e52e03"height=500px>
<img src="https://github.com/user-attachments/assets/038c2e33-7e36-4650-b91b-b8c420a7484b"height=500px>
<img src="https://github.com/user-attachments/assets/3828c0e9-4444-48eb-90c2-7d322be2d4c6"height=500px>
<img src="https://github.com/user-attachments/assets/450c6e4e-1b8e-4210-b9bf-5a8143b4470d"height=500px>
<img src="https://github.com/user-attachments/assets/32f3bdba-020b-4343-8649-51ee094457a6"height=500px>
<img src="https://github.com/user-attachments/assets/52580925-418b-4453-8107-1eaa32c5320a"height=500px>

</div>
```

<h1 align="center">Task5</h1>
 <h2 align="center"> 🔶🔸 Strap Clock🔸🔶</h2>
 






