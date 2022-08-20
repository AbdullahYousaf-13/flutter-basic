# Flutter Basics:
A repository covering Flutter basics

- - -

## What is Flutter:
- Mobile UI framework for creating native apps for IOS & Android

- Single code-base (dart) means we only have to write our app once for multiple devices

- - -

## Why use Flutter:

- Only one code base

- Good layout methodology borrowed from responsive web

- Very smooth and quick experience when running apps

- Works on 'Dart', which is a really easy language to pick up

- Uses Material Design out-of-the-box

- Great docs & guides on the flutter website

- - -

## Some Flutter Widgets:
- Text Widget

- Button Widget

- Row Widget

- Column Widget

- Image Widget

- - -

## Variables in Dart:

- int (numeric value)

- string ()

- bool (true/false)

- dynamic (used for any data type)

#### Note:

- Can't change variable type

- Can't change variable value

- - -

## Flutter Basics:
- Widgets are just classes

- Widgets always starts with the capital 
letter and new word also starts with capital the letter

- Stateless Widget: the state of widget that cannot change over time, eg: state 

- Stateful Widget: the state of widget that can change over time, eg: data, counters

- Put comma ( , ) after every value of every property and after scaffold aswell just in case we have more properties later on

- Put semi-colonm at the end of the return function

- - -
- - -

## My Dart Codes with Explanation:

### Code for Text:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('my first app'),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: Text(
              'helo niggas!',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontFamily: 'RubikMaze',
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('click'),
            backgroundColor: Colors.red[900],
          ),
        );
      }
    }

#### Explanation:

- `MaterialApp(),` (wrapper for the rest of our code)

- `home:` (specifies what is going to be on the home screen)

- `scaffold(),` (used for a basic layout)

- `appBar` (property, specifies how our app bar is gonna look)

- `AppBar(),` (in-built widget or value of the property `appBar`)

- `title:` (text on the title bar)

- `Text(''),` (text widget, used to output some text)

- `centerTitle: true,` (property, alligns text to center) 

- `body:` (property, specifies content inside the body)

- `Center(),` (widget, centralizes whatever is in it)

- `child:` (property, to nest something directly inside a widget)

- `floatingActionButton:` (property, places a floating action button at bottom right corner)

- `FloatingActionButton(),` (widget)

- `onPressed: () {},` (property, tells what happens on pressing the button)

- `backgroundColor:` (property, sets background color)  
- `Colors.red`(color-name)`[20],`(shade-value) (value/widget, material design color, ctrl+q to se all shades)

- `style:` (property, allows us to style text in different ways)

- `TextStyle (),` (widget, inside this we can add different properties, ctrl+q to see all properties)

- `fontSize: 20,`(size-value) (property, defines font size)

- `fontWeight: FontWeight` (font-name) `.bold,` (property-name)

- `letterSpacing: 2,`(space-value) (property)

- `color:`(property) `Colors.grey`(color-name) `[900]`(shade-value)

- To change font open file 'pubspec.yaml', go to the fonts section in the file uncomment itand change family name in accordance with your font name, just leave till one asset and remove the rest, then allign the text by one tab, then give that asset the path name of your font like: (`fonts/[font-name]-Regular.ttf`), for multiple fonts give path of your fonts like (`fonts/`) then go to main.dart file and click on 'Get dependencies', now we can reffer to that particular font

- `fontFamily:`(property) `'RubikMaze'`(font-name) (applies a font to the text)

- To add a hot reload use stateless widget, wrirte 'stless' and click on the 'stless' 

  - This code will appear:

        class  extends StatelessWidget {
          const ({Key? key}) : super(key: key);
          @override
          Widget build(BuildContext context) {
            return Container();
          }
        } 

  - Change that code like this:

        class [class-name] extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return [code];
          }
        }

- `@override` (overrides the previous code)

- - -

### Code for Images:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('assets/1609926302117.png'),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('click'),
            backgroundColor: Colors.red[900],
          ),
        );
      }
    }

#### Explanation:

- `Image (),` (widget)

  - `image:` (property)

    - `NetworkImage('[image-url]'),` (To get network image showing on our app)

or

- `Image.network('image-path')`

- `Image (),` (widget)

    - `image:` (property)

      - `AssetImage('[image-path]'),` (To get asset image showing on our app)

or

- `Image.asset('image-path')`

- To add an image open file 'pubspec.yaml', go to the assets section in the file uncomment it, and change name in accordance with your image name, just leave till one asset and remove the rest, then allign the text by one tab, then give that asset the path of your image like: (`assets/[image-name].[file-extention]`), for multiple images give path of your images like (`assets/`) then go to main.dart file and click on 'Get dependencies', now we can reffer to that particular image

- - -

### Code for Icons:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: Icon(
              Icons.airport_shuttle,
              color: Colors.red[900],
              size: 100,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('click'),
            backgroundColor: Colors.red[900],
          ),
        );
      }
    }

#### Explanation:

- `Icon(),`(widget)
  - `Icons.[icon-name]`

- `size:`(property) `100,`(size)

- - -

 ### Code for Buttons:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: RaisedButton(
                onPressed: () {
                  print('You Clicked Me');
                },
                child: Text('Click Me'),
                color: Colors.red[900],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('click'),
            backgroundColor: Colors.red[900],
          ),
        );
      }
    }

#### Explanation:

##### Raised Button:

- `RaisedButton(),` (adds a button that sits away from the screen, have a shadow)

  - `onPressed:`(property) `()` `{},`(value, tells what do do on pressing the button) eg: print('You Clicked Me');

  - `child:` (property, used whenever we have to nest a widget inside another widget)
    
    - `Text('click me'),`

##### Flat Button:

- `FlatButton(),` (adds a flat button, no shadow)

- - -

### Code for Icon in a Button:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: RaisedButton.icon(
              onPressed: () {
                print('You Clicked "Mail Me" ');
              },
              icon: Icon(
                Icons.mail
              ),
              label: Text('Mail Me'),
              color: Colors.red[900],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('click'),
            backgroundColor: Colors.red[900],
          ),
        );
      }
    }

#### Explanation:

- `RaisedButton.icon (),` (creates an icon button)

  - `onpressed: () {},`

  - `icon:`(property)

    - `Icon(),` (widget)

      - `Icons.[icon-name]`

  - `label:` (property)

    `Text('[text]'),`

  - `color:`(property)

    - `Colors.[color-name][[color-shade]],`

- - -

### Code for Button in an Icon:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: IconButton(
              onPressed: () {
                print('You Clicked "Mail Icon" ');
              },
              icon: Icon(Icons.mail),
              color: Colors.red[900],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('You Clicked Button "Click" ');
            },
            child: Text('click'),
            backgroundColor: Colors.red[900],
          ),
        );
      }
    }

#### Explanation:

- `IconButton(),`

  - `onpressed: () {},`

  - `icon:`(property)

    - `Icon(),` (widget)

      - `Icons.[icon-name]`

  - `color:`(property)

    - `Colors.[color-name][[color-shade]],`

- - -

### Code for Containers, Padding and Margins:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(home: Home()));

    class Home extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Container(
            padding: EdgeInsets.all(100),
            margin: EdgeInsets.symmetric(horizontal: 63, vertical: 233),
            color: Colors.grey[900],
            child: Text ('Hello'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('You Clicked Button "Click" ');
            },
            child: Text('click'),
            backgroundColor: Colors.black,
          ),
        );
      }
    }

#### Explanation:

- `Container(),` (widget, takes available space)

  - `padding:` (property, inside space of an element)

    - `EdgeInsets.[edgeinsets-name](edgeinsets-value)`

  - `margin:` (property, inside space of an element)

    - `EdgeInsets.[edgeinsets-name](edgeinsets-value)`

  - `color:`(property)

    - `Colors.[color-name][[color-shade]],`

  - `child: Text('[text]')` (container restricts itsself to the size of the child widget)

- - -
- - -

## Examplary Codes:

### Examplary Dart Code for Functions:

- For returning single value
- Both does same work

#### Long Method:

    void main() {
      print('something');
      String great = greeting();
      int age = getAge();
      print (age);
      print (great);
    }

    String greeting() {
      return 'hello';
    }

    int getAge() {
      return 30;
    } 
#### Short and Better Method:

    void main() {
      print('something');
      String great = greeting();
      int age = getAge();
      print (age);
      print (great);
    }

    String greeting() => 'hello';

    int getAge() => 30;

- - -

### Exemplary Dart Code for Lists:

    void main () {
      List<Sting> names = ['D-K', 'A-Y', 'W-Y'];
      names.add('R-2');
      names.remove('D-K');

      print(names);
    }

- - -

### Exemplary Dart Code for Classes:

    void main() {
      User userOne = User('DK', 20);
      print(userOne.username);
      //print(userOne.userage);

      User userTwo = User('I', 26);
      print(userTwo.username);
      //print(userTwo.userage);

      ProUser userThree = ProUser('AB', 21);
      print(userThree.username);
      userThree.publish();
      userThree.login();
    }

    class User {

      String username='';
      int age=0;

      User(String username, int age) {
        this.username = username;
        this.age = age;
      }

      void login() {
        print('user logged in');
      }

    }

    class ProUser extends User {
      void publish() {
        print('published update');
      }
    }

  #### Expected Output:

    DK
    I
    AB
    published update
    user loged in

- - -
- - -

## Dart Basic App:

    import 'package:flutter/material.dart';

    void main() {
      runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);

      // This widget is the root of your application.
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    }

    class MyHomePage extends StatefulWidget {
      const MyHomePage({Key? key, required this.title}) : super(key: key);

      // This widget is the home page of your application. It is stateful, meaning
      // that it has a State object (defined below) that contains fields that affect
      // how it looks.

      // This class is the configuration for the state. It holds the values (in this
      // case the title) provided by the parent (in this case the App widget) and
      // used by the build method of the State. Fields in a Widget subclass are
      // always marked "final".

      final String title;

      @override
      State<MyHomePage> createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
      int _counter = 0;

      void _incrementCounter() {
        setState(() {
          // This call to setState tells the Flutter framework that something has
          // changed in this State, which causes it to rerun the build method below
          // so that the display can reflect the updated values. If we changed
          // _counter without calling setState(), then the build method would not be
          // called again, and so nothing would appear to happen.
          _counter++;
        });
      }

      @override
      Widget build(BuildContext context) {
        // This method is rerun every time setState is called, for instance as done
        // by the _incrementCounter method above.
        //
        // The Flutter framework has been optimized to make rerunning build methods
        // fast, so that you can just rebuild anything that needs updating rather
        // than having to individually change instances of widgets.
        return Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    }

- - -
- - -