# Flutter Basics:

A repository covering Flutter basics

- - -
- - -

## What is Flutter:
- Mobile UI framework for creating native apps for IOS & Android

- Single code-base (dart) means we only have to write our app once for multiple devices

- Uses dart as the the programing language

- - -
- - -

## Why use Flutter:

- Only one code base

- Good layout methodology borrowed from responsive web

- Very smooth and quick experience when running apps

- Works on 'Dart', which is a really easy language to pick up

- Uses Material Design out-of-the-box

- Great docs & guides on the flutter website

- - -
- - -

## Flutter Basics:

- Widgets are just classes

- Widgets always starts with the capital 
letter and new word also starts with capital the letter

- Put comma ( , ) after every value of every property and after scaffold aswell just in case we have more properties later on

- Put semi-colonm at the end of the return statement

- - -
- - -

## Variables in Dart:

- int (numeric value)

- string ()

- bool (true/false)

- dynamic (used for any data type)

### Note:

- Can't change variable type

- Can't change variable value

- - -

### Shortcuts and Outlines:

- Click on the widget you want to make amendents in then click on the action menu (the bulb sign)

- Click on the 'Flutter Outline' menu on the right side of the screen, then you can make amendments in your code using the menu

- - -
- - -

## My Dart Codes with Explanations:

### Text:

#### Code:

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

- `Text('[text]'),` (text widget, used to output some text)

- `Text('$[variable name]')` (used to output variable)

- `centerTitle: true,` (property, alligns text to center) 

- `elevation: [elevation-value]` (creates a drop shadow)

- `Card ();` (creates a card)

- `body:` (property, specifies content inside the body)

- `Center(),` (widget, centralizes whatever is in it)

- `child:` (property, to nest something directly inside a widget)

- `SizedBox(height: [box-size]),` (creates an invisible space vertically)

- `SizedBox(width: [box-size]),` (creates an invisible space horizontally)

- `floatingActionButton:` (property, places a floating action button at bottom right corner)

- `FloatingActionButton(),` (widget)

- `onPressed: () {},` (property, tells what happens on pressing the button)

- `setState(() {[value-update]});` (function, whenever we call setstates we increase or set the state of that widget inside here, it trigers the build function so that it rebiulds it with the new state)

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

### Images:

#### Code:

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

### Buttons and Icons: 

#### Icons:

##### Code:

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

##### Explanation:

- `Icon(),`(widget)
  - `Icons.[icon-name]`

- `size:`(property) `100,`(size)

- - -

#### Buttons:

##### Code:

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

##### Explanation:

###### Raised Button:

- `RaisedButton(),` (adds a button that sits away from the screen, have a shadow)

  - `onPressed:`(property) `()` `{},`(value, tells what do do on pressing the button) eg: print('You Clicked Me');

  - `child:` (property, used whenever we have to nest a widget inside another widget)
    
    - `Text('click me'),`

###### Flat Button:

- `FlatButton(),` (adds a flat button, no shadow)

- - -

#### Icon in a Button:

##### Code:

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

##### Explanation:

- `RaisedButton.icon (),` (creates an icon in a button)

  - `onpressed: () {},`

  - `icon:`(property)

    - `Icon(),` (widget)

      - `Icons.[icon-name]`

  - `label:` (property)

    `Text('[text]'),`

  - `color:`(property)

    - `Colors.[color-name][[color-shade]],`

- - -

#### Button in an Icon:

##### Code:

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

##### Explanation:

- `IconButton(),` (creates a button in an icon)

  - `onpressed: () {},`

  - `icon:`(property)

    - `Icon(),` (widget)

      - `Icons.[icon-name]`

  - `color:`(property)

    - `Colors.[color-name][[color-shade]],`

- - -

### Containers, Paddings and Margins:

#### Code:

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

### Rows:

#### Code:

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
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Hello World ==>'),
                padding: EdgeInsets.all(30),
                color: Colors.grey[900],
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blueGrey[900],
                padding: EdgeInsets.all(30),
                child: Text('Click Me'),
              ),
              Container(
                color: Colors.grey[900],
                padding: EdgeInsets.all(30),
                child: Text('<== Hello World'),
              ),
            ],
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

- `Row(),` (creates a row)

  - `mainAxisAlignment:` (horizontal, tells how the widgets are alligned on the main axis)

    - `MainAxisAlignment.spaceEvenly,`[alignment-name]

  - `crossAxisAlignment:` (vertical, tells how the widgets are alligned on the cross axis)

    - `CrossAxisAlignment.center,`[alignment-name]

  - `children:` (used as we can have more then one property inside a row) `<widget>` (tells the items should be widgets) `[]` (list which contains the widgets)

- - -

### Columns:

#### Code:

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Hello World ==>'),
                padding: EdgeInsets.all(30),
                color: Colors.grey[900],
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blueGrey[900],
                padding: EdgeInsets.all(30),
                child: Text('Click Me'),
              ),
              Container(
                color: Colors.grey[900],
                padding: EdgeInsets.all(30),
                child: Text('<== Hello World'),
              ),
            ],
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

- `Column(),` (creates a row)

  - `mainAxisAlignment:` (vertical, tells how the widgets are alligned on the main axis)

    - `MainAxisAlignment.spaceEvenly,`[alignment-name]

  - `crossAxisAlignment:` (horizontal, tells how the widgets are alligned on the cross axis)

    - `CrossAxisAlignment.center,`[alignment-name]

  - `children:` (used as we can have more then one property inside a row) `<widget>` (tells the items should be widgets) `[]` (list which contains the widgets)

- - -

### Expanded Widgets:

#### Code:

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
          body: Row(
            children: <Widget>[
              Expanded(child: Image.asset('assets/Dark-Knight.png'),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.grey,
                  child: Text('1'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.grey[900],
                  child: Text('2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.blueGrey[900],
                  child: Text('3'),
                ),
              ),
            ],
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

- `Expanded(),` (widgets, takes all the available space)

  - `flex: [flex-value]` (assigns the portion that we want to take up)

- - - 

### Stateless Widget:

#### Code:

    import 'package:flutter/material.dart';

        void main() => runApp(MaterialApp(
          home: MyCard(),
        ));

        class MyCard extends StatelessWidget {
          const MyCard({Key? key}) : super(key: key);

          @override
          Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.grey[900],
              appBar: AppBar(
                title: Text('My ID Card'),
                centerTitle: true,
                backgroundColor: Colors.grey[850],
                elevation: 0,
              ),
              body: Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/Dark-Knight.png'),
                        radius: 40,

                      ),
                    ),
                    Divider(
                      height: 90,
                      color: Colors.grey,
                    ),
                    Text(
                      'NAME',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Dark-Knight',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'CURRENT NINJA LEVEL',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '8',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'CONTACT',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'abdullahyousaf132@gmail.com',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            letterSpacing: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        }

#### Explanation:

- The state cannot change over time

- Build function only runs once
  
  Write 'stless' then press tab this code will appear 

      class [widget-name] extends StatelessWidget {
        const ({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Container();
        }
      } 

- - -

### Stateful Widget:

#### Code-1:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
      home: MyCard(),
    ));

    class MyCard extends StatefulWidget {
      const MyCard({Key? key}) : super(key: key);
      @override
      State<MyCard> createState() => _MyCardState();
    }

    class _MyCardState extends State<MyCard> {

      int ninjaLevel = 0;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('My ID Card'),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                ninjaLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Dark-Knight.png'),
                    radius: 40,

                  ),
                ),
                Divider(
                  height: 90,
                  color: Colors.grey,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Dark-Knight',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'CONTACT',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'abdullahyousaf132@gmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    }

#### Explanation-1:

- The state can change over time

- Write 'stful' then press tab this code will appear

      class [widget-name] extends StatefulWidget {
        const ({Key? key}) : super(key: key);

        @override
        State<> createState() => _State();
      }

      class _State extends State<> {
        
        @override
        Widget build(BuildContext context) {
          return Container();
        }
      }

#### Code-2:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/pages/home.dart';
    import 'package:my_first_app/pages/loading.dart';
    import 'package:my_first_app/pages/choose_location.dart';


    void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (contaxt) => ChooseLocation(),
      },
    ));

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget> [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
              ],
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {

      int counter = 1;

      @override
      void initState() {
        super.initState();
        print('initState function ran');
      }

      @override
      Widget build(BuildContext context) {
        print('build function ran');
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
          body: RaisedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('Counter is $counter'),
          ),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Text('Loading Screen'),
        );
      }
    }


#### Explanation-2:

- `setState()`
  
  - triggers the build function

- `initState()`

  - Called only once when the widget is created

  - Subscribe to streams or any object that could change our widget data

- `Build()`

  - Builds the widget tree

  - A build is triggered every time we use setState()

- `Dispose()`

  - When the widget/ state object is removed

- - -
- - -

### Lists of Data:

#### Code:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
      home: QouteList(),
    ));

    class QouteList extends StatefulWidget {
      const QouteList({Key? key}) : super(key: key);

      @override
      State<QouteList> createState() => _QouteListState();
    }

    class _QouteListState extends State<QouteList> {

      List<String> quotes = [
        'I have nothing to declare except my genius',
        'The truth is rarely pure and never simple',
        'Be yourself; everybody is already taken'
      ];

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column (
            children: quotes.map((quote) => Text(quote)).toList(),
          ),
        );
      }
    }


#### Explanation:

- `List<String`(data type)`>` `quotes`(variable name)`['[string-1]','[string-2]','[string-n]'];`

- `children: quotes`(variable name)`.map((quote)`(parameter) ` => Text(quote);).toList(),` (takes each quote as it goes through it and output it to the screen)

or

- `children: quotes`(variable name)`.map((quote)`(parameter) `{return Text(quote);}).toList(),` (takes each quote as it goes through it and output it to the screen)

- - -

### Custom Classes:

#### Code:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'quote.dart';

    void main() => runApp(MaterialApp(
      home: QouteList(),
    ));

    class QouteList extends StatefulWidget {
      const QouteList({Key? key}) : super(key: key);

      @override
      State<QouteList> createState() => _QouteListState();
    }

    class _QouteListState extends State<QouteList> {

      List<Quote> quotes = [
        Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
        Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
        Quote(author: 'Osca Wilde', text: 'Be yourself; everybody is already taken')
      ];

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column (
            children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
          ),
        );
      }
    }

##### quote.dart:

    class Quote {

      String text;
      String author;

      Quote({required this.text, required this.author});

    }


#### Explanation:

- Classes are used to seperate things into their own logical sections

- To create a class go to 'lib' folder and create a new dart file, name it and then do this

      class Quote {

        String text;
        String author;

        Quote({required this.text, required this.author});

      }

  or

      Class Quote {

        String text; (property)
        String author; (property)

        Quote(String text, String author){
          this.text = text;
          this.author = author;
        }

      }

      Quote myquote = Quote('this is the quote text', 'oscar wilde') (new quote)

- Then write this `import 'quote.dart';` in 'main.dart' file to import 'quote.dart' file in 'main.dart' file

 - Creating 'Quote' Objects in a list with two properties 'author' and 'text' each
 
        List<Quote> quotes = [
            Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
            Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
            Quote(author: 'Osca Wilde', text: 'Be yourself; everybody is already taken')
          ];

### Functions:

#### Functions Code:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'quote.dart';

    void main() => runApp(MaterialApp(
      home: QouteList(),
    ));

    class QouteList extends StatefulWidget {
      const QouteList({Key? key}) : super(key: key);

      @override
      State<QouteList> createState() => _QouteListState();
    }

    class _QouteListState extends State<QouteList> {

      List<Quote> quotes = [
        Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
        Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
        Quote(author: 'Osca Wilde', text: 'Be yourself; everybody is already taken')
      ];

      Widget quoteTemplete(quote){
        return Card(
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        );
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column (
            children: quotes.map((quote) => quoteTemplete(quote)).toList(),
          ),
        );
      }
    }

##### quote.dart:

    class Quote {

      String text;
      String author;

      Quote({required this.text, required this.author});

    }

#### Explanation:

- Creating a function that is going to return a quote templete using card widget

`Widget`(return type) `quoteTemplete`(function name) `(quote)`(individual quote)`{return Card`(returning a card widget)`()}`

- `children: quotes.map((quote) => quoteTemplete(quote)).toList(),` (for each item in tha list its going to map through that, cycle through a bit then call function'quoteTemplete' and  return us that widget tree)

#### Functions as Parameter Code:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'quote.dart';
    import 'quote_card.dart';

    void main() => runApp(MaterialApp(
      home: QouteList(),
    ));

    class QouteList extends StatefulWidget {
      const QouteList({Key? key}) : super(key: key);

      @override
      State<QouteList> createState() => _QouteListState();
    }

    class _QouteListState extends State<QouteList> {

      List<Quote> quotes = [
        Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
        Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
        Quote(author: 'Osca Wilde', text: 'Be yourself; everybody is already taken')
      ];

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column (
            children: quotes.map((quote) => QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
            )).toList(),
          ),
        );
      }
    }

##### quote_card.dart:

    import 'package:flutter/material.dart';
    import 'quote.dart';

    class QuoteCard extends StatelessWidget {

      final Quote quote;
      final Function delete;
      QuoteCard ({required this.quote, required this.delete});

      @override
      Widget build(BuildContext context) {
        return Card(
          color: Colors.blueGrey,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 8),
                FlatButton.icon(
                  onPressed: () => delete(),
                  label: Text('Delete Quote'),
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          ),
        );
      }
    }

- - -

### Extracting Widgets:

#### Code:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'quote.dart';
    import 'quote_card.dart';

    void main() => runApp(MaterialApp(
      home: QouteList(),
    ));

    class QouteList extends StatefulWidget {
      const QouteList({Key? key}) : super(key: key);

      @override
      State<QouteList> createState() => _QouteListState();
    }

    class _QouteListState extends State<QouteList> {

      List<Quote> quotes = [
        Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
        Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
        Quote(author: 'Osca Wilde', text: 'Be yourself; everybody is already taken')
      ];

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column (
            children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
          ),
        );
      }
    }

##### quote_card.dart:

    import 'package:flutter/material.dart';
    import 'quote.dart';

    class QuoteCard extends StatelessWidget {

      final Quote quote;
      QuoteCard ({required this.quote});

      @override
      Widget build(BuildContext context) {
        return Card(
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }

#### Explanation:

- To create stateless widget for this card templete go to the flutter outline right click on the widget you want to extract and click on extract widget and give it a name

  - It will create a new widget like this 

        class QuoteCard extends StatelessWidget {
          const QuoteCard({
            Key? key,
          }) : super(key: key);
        }

  - Change that code like this:

        class QuoteCard extends StatelessWidget {}

- And make other changes according to the code given above

- We can also add class (in this case QuoteCard) to another file in the lib folder, so we can use it whenever we need it

- Then write this `import 'quote_card.dart';` in 'main.dart' file to import 'quote_card.dart' file in 'main.dart' file

-  Then write this `import 'package:flutter/material.dart';`
`import 'quote.dart';` in 'quote_card.dart' file to import 'package:flutter/material.dart' and 'quote.dart' file in 'quote_card.dart' file

- - -

### Maps and Routing:

#### Code:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/pages/home.dart';
    import 'package:my_first_app/pages/loading.dart';
    import 'package:my_first_app/pages/choose_location.dart';


    void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (contaxt) => ChooseLocation(),
      },
    ));


##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget> [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
              ],
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
          body: Text('Choose location Screen'),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Text('Loading Screen'),
        );
      }
    }


#### Explanation:

- `Map student = {'name': 'Dark-Knight', 'age': '20'};`

- `print(student['name']);`

- `initialRoute: '/home',`

- `routes: {}`

  - `'/': (context) => Loading(),`

  - `'/home': (context) => Home(),`

  - `'/location': (context) => ChooseLocation(),`

- - -

### Asynchronous Code:

#### Code:

##### main.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/pages/home.dart';
    import 'package:my_first_app/pages/loading.dart';
    import 'package:my_first_app/pages/choose_location.dart';


    void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (contaxt) => ChooseLocation(),
      },
    ));

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget> [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
              ],
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {

      void getData() async {

        //simulate network request for a username
        await Future.delayed(Duration(seconds: 3), () {
          print ('D-K');
        });

        //simulate network request to get the bio of the username
        String bio = await Future.delayed(Duration(seconds: 2), () {
          return 'Student, Gamer';
        });

        print('$bio');  

      }

      int counter = 1;

      @override
      void initState() {
        super.initState();
        getData();
        print('initState function ran');
      }

      @override
      Widget build(BuildContext context) {
        print('build function ran');
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
          body: RaisedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('Counter is $counter'),
          ),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Text('Loading Screen'),
        );
      }
    }

#### Explanation:

- `void getData()` `async`(used with await)`{}` (function, in this case returning nothing) 

  - `await`(keeps it waiting until its done then move to next line) `Future`(function)`.delayed()`(object, triggers some kind of delay, takes two arguments)
    
    - `Duration((),() {});` (object)

      - `(seconds: 3),` (argument-1, specifies how many seconds that delay should be) `() {print('D-K');}` (argument-2, call back function, fires when seconds are up)

- `getData ();` (calling data from initState)

- - -

### Packages:

#### Code:

##### main.dart:
 
    import 'package:flutter/material.dart';
    import 'package:my_first_app/pages/home.dart';
    import 'package:my_first_app/pages/loading.dart';
    import 'package:my_first_app/pages/choose_location.dart';


    void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget> [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
              ],
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {



      @override
      Widget build(BuildContext context) {
        print('build function ran');
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
        );
      }
    }

##### loading.dart-1:

    import 'package:flutter/material.dart';
    import 'package:http/http.dart';
    import 'dart:convert';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      void getData() async {

        Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
        Map data = jsonDecode(response.body);
        print(data);
        print(data['title']);

      }

      @override
      void initState() {
        super.initState();
        getData();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Text('Loading Screen'),
        );
      }
    }

##### loading.dart-2:

    import 'package:flutter/material.dart';
    import 'package:http/http.dart';
    import 'dart:convert';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      void getTime() async {

        //make the request
        Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/europe/london'));
        Map data = jsonDecode(response.body);
        //print(data);

        //get properties from data

        String datetime = data  ['datetime'];
        String offset = data['utc_offset'].substring(1,3);
        //print(datetime);
        //print(offset);

        //print(data['datetime']);
        //print(data['utc_offset']);

        //create DateTime object
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));
        print(now);

      }

      @override
      void initState() {
        super.initState();
        getTime();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Text('Loading Screen'),
        );
      }
    }

#### Explanation:

- To add a package go to web 'pub.dev' search your desired package copy its dependencies from the tab 'installing', go to your editor, open file 'pubspec.yaml' go to 'dependencies' section and paste the dependencies there with one tab then go to your file and click on 'Get dependencies' import the package like this `import 'package:http/http.dart';`

- JSON Placeholder: Free fake API for testing and prototyping to use it go its website 'JSON Placeholder', copy the code and use it like this 
  
- `Response`(object-type) `response`(object) `= await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));`

- `Map data = jsonDecode(response.body);` (decodes json string into a map stored in data)

- `print(data);` (to print all data/properties)

- `print(data['[property-name]']);` (to print a desired property)

  or

- `String datetime = data  ['utc_datetime'];`

  `String offset = data['utc_offset'].substring(1,3)`(used to show characters that we only need)`;`

  `print(datetime);`

  `print(offset);`

- `DateTime`(class) `now`(name) `= DateTime`(object)`.parse`(method)`(datetime)`(variable)`;`

- `now = now.add(Duration(hours: int.parse(offset)));` (adds a specific amount of time to a date object, takes the string 'offset' and convert it into an integer)

- `print(now);`

- 

- - -

### World Time Custom Classes:

#### Code:

##### main.dart:
 
    import 'package:flutter/material.dart';
    import 'package:my_first_app/pages/home.dart';
    import 'package:my_first_app/pages/loading.dart';
    import 'package:my_first_app/pages/choose_location.dart';


    void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget> [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location,
                    color: Colors.grey[800],
                  ),
                  label: Text('Edit Location',
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontFamily: 'RubikMaze',
                  ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {



      @override
      Widget build(BuildContext context) {
        print('build function ran');
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      String time = 'loading';

      Future<void> setupWorldTime() async {
        WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
        await instance.getTime();
        print(instance.time);
        setState(() {
          time = instance.time;
        });
      }

      @override
      void initState() {
        super.initState();
        setupWorldTime();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Padding(
              padding: EdgeInsets.all(50),
              child: Text(time),    
          ),
        );
      }
    }

##### world_time.dart:

    import 'package:http/http.dart';
    import 'dart:convert';

    class WorldTime {

      late String location; // location name for the UI
      late String time; // the time in that location
      late String flag; // url to an asset flag icon
      late String url; // location url for api endpoint

      WorldTime({ required this.location, required this.flag, required this.url});

      Future <void> getTime() async {

        //make the request
        Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
        Map data = jsonDecode(response.body);
        //print(data);

        //get properties from data
        String datetime = data  ['datetime'];
        String offset = data['utc_offset'].substring(1,3);
        //print(datetime);
        //print(offset);

        //create DateTime object
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));

        // set the time property
        time = now.toString();

      }

    }

#### Explanation:

- `String time = 'loading';` (outputting the time to the UI)

- `Future<void> setupWorldTime() async {}`

  - `WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');` (creating instance of the world time class passing in all of the information)

  - `await instance.getTime();` (getTime function awaiting the response over here before we move on)

  - `print(instance.time);` (when we get that response and set the time inside that instance then we finally printing out that time)
  
- - -

### Error Handling:

#### Code:

##### world_time.dart:

    import 'dart:math';
    import 'package:http/http.dart';
    import 'dart:convert';

    class WorldTime {

      late String location; // location name for the UI
      late String time; // the time in that location
      late String flag; // url to an asset flag icon
      late String url; // location url for api endpoint

      WorldTime({ required this.location, required this.flag, required this.url});

      Future <void> getTime() async {

        try {
          //make the request
          Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
          Map data = jsonDecode(response.body);
          //print(data);

          //get properties from data
          String datetime = data  ['datetime'];
          String offset = data['utc_offset'].substring(1,3);
          //print(datetime);
          //print(offset);

          //create DateTime object
          DateTime now = DateTime.parse(datetime);
          now = now.add(Duration(hours: int.parse(offset)));

          // set the time property
          time = now.toString();
        }
        catch (e) {
          print('Cought Error: $e');
          time = 'Could not get time data';
        }
      }
    }

#### Explanation:

- `try {`[code]`}` (trying to do something)

- `catch (e) {}` (if our tried code does not work it catches the error and prints it)

  - `print('Cought Error:`(error message) `$e');` (prints the error message)

  - `time = 'Could not get time data';` (updating the time variable to this message)


- - -

### Passing Route Data:

#### Code:

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {

      Map data = {};

      @override
      Widget build(BuildContext context) {

        try {
          if (data.isEmpty) {
            data = ModalRoute.of(context)!.settings.arguments == null
                ? data
                : ModalRoute.of(context)!.settings.arguments as Map;
          } else {
            data = data;
          }
        } catch (e) {
          data = {};
        }
        print(data);

        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: SafeArea(
            child: Column(
              children: <Widget> [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
              ],
            ),
          ),
        );
      }
    }


##### loading.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      Future<void> setupWorldTime() async {
        WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
        await instance.getTime();
        Navigator.pushReplacementNamed (context, '/home', arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
        });

      }

      @override
      void initState() {
        super.initState();
        setupWorldTime();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(50),
            child: Text('Loading'),
          ),
        );
      }
    }


#### Explanation:

- `Navigator`(object, redirects to the home page) `.pushReplacementNamed`(method, pushes to the desired route by replacing it with the previous one, previous tab won't be underneath the new one) `(context,`(1st object as 1st argument)`'/home',`(name of the route we want to go to) `arguments:`(3rd parameter, used to sent some properties) `{'location': instance.location,`(defining a property name) `'flag': instance.flag,` `'time': instance.time});`

- `Map data = {};` (passing all above properties trough to this next route)

-      try {
            if (data.isEmpty) {
              data = ModalRoute.of(context)!.settings.arguments == null
                  ? data
                  : ModalRoute.of(context)!.settings.arguments as Map;
            } else {
              data = data;
            }
          } catch (e) {
            data = {};
          }
          print(data);

  (receiving the arguments that we send in 'loading.dart')

- `print(data);` (prints data)

- - -

### Formating and Showing Dates:

#### Code :

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {

      Map data = {};

      @override
      Widget build(BuildContext context) {

        try {
          if (data.isEmpty) {
            data = ModalRoute.of(context)!.settings.arguments == null
                ? data
                : ModalRoute.of(context)!.settings.arguments as Map;
          } else {
            data = data;
          }
        } catch (e) {
          data = {};
        }
        print(data);

        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: <Widget> [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location, color: Colors.grey[900],size: 20,),
                    label: Text('Edit Location',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontFamily: 'RubikMaze',
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

###### world_time.dart:

    import 'dart:math';
    import 'package:http/http.dart';
    import 'dart:convert';
    import 'package:intl/intl.dart';

    class WorldTime {

      late String location; // location name for the UI
      late String time; // the time in that location
      late String flag; // url to an asset flag icon
      late String url; // location url for api endpoint

      WorldTime({ required this.location, required this.flag, required this.url});

      Future <void> getTime() async {

        try {
          //make the request
          Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
          Map data = jsonDecode(response.body);
          //print(data);

          //get properties from data
          String datetime = data  ['datetime'];
          String offset = data['utc_offset'].substring(1,3);
          //print(datetime);
          //print(offset);

          //create DateTime object
          DateTime now = DateTime.parse(datetime);
          now = now.add(Duration(hours: int.parse(offset)));

          // set the time property
          time = DateFormat.jm().format(now);
        }
        catch (e) {
          print('Cought Error: $e');
          time = 'Could not get time data';
        }
      }
    }

#### Explanation:

- To add a package go to web 'pub.dev' search your desired package copy its dependencies from the tab 'installing', go to your editor, open file 'pubspec.yaml' go to 'dependencies' section and paste the dependencies there with one tab then go to your file and click on 'Get dependencies' import the package like this `import 'package:intl/intl.dart';`

- `time`(variable) `=` `DateFormat` (using function provided by the 'intl' package) `.jm()`(method) `.format(now);`(method, formats date so it looks good)

- - -

### Loaders/Spinners:

#### Code:

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {

      Map data = {};

      @override
      Widget build(BuildContext context) {

        try {
          if (data.isEmpty) {
            data = ModalRoute.of(context)!.settings.arguments == null
                ? data
                : ModalRoute.of(context)!.settings.arguments as Map;
          } else {
            data = data;
          }
        } catch (e) {
          data = {};
        }
        print(data);

        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: <Widget> [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location, color: Colors.grey[900],size: 20,),
                    label: Text('Edit Location',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontFamily: 'RubikMaze',
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';
    import 'package:flutter_spinkit/flutter_spinkit.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      Future<void> setupWorldTime() async {
        WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
        await instance.getTime();
        Navigator.pushReplacementNamed (context, '/home', arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
        });

      }

      @override
      void initState() {
        super.initState();
        setupWorldTime();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: Center(
            child: SpinKitSpinningLines(
              size: 50.0,
              color: Colors.black,
            ),
          ),
        );
      }
    }

#### Explanation:

- To add a package go to web 'pub.dev' search your desired package copy its dependencies from the tab 'installing', go to your editor, open file 'pubspec.yaml' go to 'dependencies' section and paste the dependencies there with one tab then go to your file and click on 'Get dependencies' import the package like this: `import 'package:flutter_spinkit/flutter_spinkit.dart';` then go to to 'readme' tab 'How To Use' section and copy this code:

      SpinKitRotatingCircle(
        color: Colors.white,
        size: 50.0,
      ),

  Place it inside body like this:

      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),

- - -

### Ternary Operators:

#### Code:

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {

      Map data = {};

      @override
      Widget build(BuildContext context) {

        try {
          if (data.isEmpty) {
            data = ModalRoute.of(context)!.settings.arguments == null
                ? data
                : ModalRoute.of(context)!.settings.arguments as Map;
          } else {
            data = data;
          }
        } catch (e) {
          data = {};
        }
        print(data);

        // set background
        String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
        Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];

        return Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                  children: <Widget> [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/location');
                      },
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[900],
                        size: 20,
                      ),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                          fontFamily: 'RubikMaze',
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['location'],
                          style: TextStyle(
                            fontSize: 28,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      data['time'],
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';
    import 'package:flutter_spinkit/flutter_spinkit.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      Future<void> setupWorldTime() async {
        WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
        await instance.getTime();
        Navigator.pushReplacementNamed (context, '/home', arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
          'isDaytime': instance.isDaytime,
        });

      }

      @override
      void initState() {
        super.initState();
        setupWorldTime();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: Center(
            child: SpinKitSpinningLines(
              size: 50.0,
              color: Colors.black,
            ),
          ),
        );
      }
    }

##### world_time.dart:

    import 'package:http/http.dart';
    import 'dart:convert';
    import 'package:intl/intl.dart';

    class WorldTime {

      late String location; // location name for the UI
      late String time; // the time in that location
      late String flag; // url to an asset flag icon
      late String url; // location url for api endpoint
      late bool isDaytime; //true or false if daytime or not

      WorldTime({ required this.location, required this.flag, required this.url});

      Future <void> getTime() async {

        try {
          //make the request
          Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
          Map data = jsonDecode(response.body);
          //print(data);

          //get properties from data
          String datetime = data  ['datetime'];
          String offset = data['utc_offset'].substring(1,3);
          //print(datetime);
          //print(offset);

          //create DateTime object
          DateTime now = DateTime.parse(datetime);
          now = now.add(Duration(hours: int.parse(offset)));

          // set the time property
          isDaytime = now.hour >6 && now.hour <20 ? true : false;
          time = DateFormat.jm().format(now);
        }
        catch (e) {
          print('Cought Error: $e');
          time = 'Could not get time data';
        }



      }
    }

#### Explanation:

- `late bool isDaytime;` (property)

- `isDaytime`(value) `=` `now.hour > 6 && now.hour < 20`(condition) `? true : false;` (ternary operator)

- `'isDaytime': instance.isDaytime,`(passing fourth property in 'loading.dart')

- To add an image open file 'pubspec.yaml', go to the assets section in the file uncomment it, and change name in accordance with your image name, just leave till one asset and remove the rest, then allign the text by one tab, then give that asset the path like: (`assets/`) then go to main.dart file and click on 'Get dependencies', now we can reffer to that particular image

- `String bgImage = data['isDaytime'] ? 'day,png' : 'night.png';`(ternary operator, performs a check to see if the data we get is day time or night time and decides background image on the basis of result of our check)

- Go to padding in 'home.dart' wrap padding with a widget and name it 'Container'

- (gives us a way to apply background image to fit the screen)

  `decoration:`(property) `BoxDecoration(`(can go inside a container) `image:`(property) `DecorationImage(`(allows us to apply background image to the whole screen) `image:`(property) `AssetImage('assets/$bgImage'),` (passing in the path for the image we want to use)  `fit: BoxFit.cover,`(covers the entire container all over the screen) `),),`(can go inside a container)

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/$bgImage'),
          fit: BoxFit.cover,
        ),
      ),

- `Color? bgColor = data['isDaytime'] ? Colors.blue[700] : Colors.indigo[700];`(ternary operator, performing a check to see if the data we get is day time or night time and decides background color on the basis of result of our check)

- `backgroundColor: bgColor,` (applying this backgroundcolor to the scaffold)

- - -

### List view builder:

#### Code:

##### choose_location.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {

      List<WorldTime> locations = [
        WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
        WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
        WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
        WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
        WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
        WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
        WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
        WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
      ];


      @override
      Widget build(BuildContext context) {
        print('build function ran');
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
          body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      print(locations[index].location); //just to check that its working
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${locations[index].flag}'),
                    ),
                  ),
                ),
              );
            }
          ),
        );
      }
    }

#### Explanation:

import the package in 'location.dart' like this: `import 'package:my_first_app/services/world_time.dart';`

- 'list' containing 'worldTime' instences and variable 'locations'

      List<WorldTime> locations = [
          WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
          WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
          WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
          WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
          WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
          WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
          WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
          WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
        ];

- (creating a list view builder that allows us to use an inline anonymous function to return a widget templete for each item inside this list)

  Inside at the end of scaffold `body: ListView.builder(`(property) `itemCount:`(property, first peice of info we need to provide, how many items are inside the list that we want to cycle through) `locations`(variable name) `.length,`(how many items are inside the list) `itemBuilder:`(function, takes to parameters, 'ListView.builder' will use it for every single item inside the list and will cycle through the list and return a widget templete/tree for every item inside the list) `(context,`(object) `index`(each time we find the function we get access to index of that item in the list)`)` `{return`(returning a templete for each item inside that list) `Card(`(creates a card) `child:`(property) `ListTile(`(creates one-line with leading widget) `onTap:`(property/function, a bit like 'onPressed') `() {print(locations[index].location);`(just to check that its working) `},` `title: Text(locations`(list itself) `[index`(to get perticuler item that we currently iterating) `.location`(location name)`),`(the actual text that is going to be shown inside that 'ListTile') `),` `leading:`(property) `CircleAvatar(backgroundImage: AssetImage('assets/${locations[index].flag}'),`(circle with a background image that will be a picture) `)`(outputting one of the images next to each one of the items on the list) `);}),`

- Add padding to the card and insert values like this:

      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 3),

- - -

### Updating the Location:

#### Code (not varified):

##### home.dart: 

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {

      Map data = {};

      @override
      Widget build(BuildContext context) {

        try {
          if (data.isEmpty) {
            data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments == null
                ? data
                : ModalRoute.of(context)!.settings.arguments as Map;
          } else {
            data = data;
          }
        } catch (e) {
          data = {};
        }
        print(data);

        // set background
        String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
        Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];

        return Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                  children: <Widget> [
                    TextButton.icon(
                      onPressed: () async {
                        dynamic result = Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result ['location'],
                            'isDaytime': result ['isDaytime'],
                            'flag': result ['flag']
                          };
                        });
                      },
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[900],
                        size: 20,
                      ),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                          fontFamily: 'RubikMaze',
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['location'],
                          style: const TextStyle(
                            fontSize: 28,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      data['time'],
                      style: const TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {

      List<WorldTime> locations = [
        WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
        WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
        WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
        WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
        WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
        WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
        WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
        WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
      ];

      void updateTime(index) async {
        WorldTime instance = locations[index];
        await instance.getTime();
        //navigate to home screen
        Navigator.pop(context, {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
          'isDaytime': instance.isDaytime,
        });
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
          body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${locations[index].flag}'),
                    ),
                  ),
                ),
              );
            }
          ),
        );
      }
    }

#### Explanation:

- `void`(defining function) `updateTime`(function name) `(index)`(represents which ever instence of this class we want to call the get method on) `async{}`

- `updateTime(index);`(calling the function inside the onTap function) 

- `WorldTime`(data type) `instance`(variable name) `=` `Locations`(list) `[index];`(to get a specific item from the list) (storing the instance inside the local variable 'instance' which has type 'WorldTime')

- `await`(waiting till 'instance.getTime()' is done) `instance.getTime();`

- `Navigator.pop``( `(popping Choose a Location' screen)`)` `(context, {'location': instance.location, 'flag': instance.flag, 'time': instance.time, 'isDaytime': instance.isDaytime,}`(passing in the data that we want to send back to the home screen inside a map '{ }', the data is going to be same as the data that we send from the home page)`);`(popping Choose a Location' screen)

- `onpressed: () async { dynamic`(variable type) `result`(vaiable name) `await Navigator.pushNamed(context, '/location');},`(putting the 'dynamic' and 'await' keyword infront ofthe 'Navigator.pushNamed') (when we click on one of the locations it gets the time for that location and pops back to the old route the 'home' screen underneath with this data: '`'location': instance.location, 'flag': instance.flag, 'time': instance.time, 'isDaytime': instance.isDaytime,`' and its going to get stored in the 'result' variable)

- `steState(() {data = {'time: result['time'], 'location': result ['location'], 'isDaytime': result ['isDaytime'], }; 'flag': result ['flag'] }`(updates all different values) `);`(when we get the result we can use the datainside this result to update the state of this widget)

- (making a ternary operator is for a check)

- (creating a function that is going get get time method on whatever instence we want to find out the time for, like if they click on any location we would the get time method on that 'WorldTime' instence to get that data then when we have the data we will reroute to the home page and update the 'home' page with that data)

- Change this code:

      String offset = data['utc_offset'].substring(1,3);

  To this:

      String offset = data['utc_offset'].substring(0,3);

  In 'world_time.dart' to get accurate time

- 

- - -
- - -



- - -
- - -

## Examplary Codes:

### Loops:

    void main() {
      for (int i = 0; i < 5; i++) {
        print('hello ${i + 1}');
      }
    }

### Functions:

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

### Lists:

    void main () {
      List<Sting> names = ['D-K', 'A-Y', 'W-Y'];
      names.add('R-2');
      names.remove('D-K');

      print(names);
    }

- - -

### Classes:

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

## My Apps:

### My First App 'My ID Card':

#### Code:

    import 'package:flutter/material.dart';

    void main() => runApp(MaterialApp(
      home: MyCard(),
    ));

    class MyCard extends StatefulWidget {
      const MyCard({Key? key}) : super(key: key);
      @override
      State<MyCard> createState() => _MyCardState();
    }

    class _MyCardState extends State<MyCard> {

      int ninjaLevel = 0;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('My ID Card'),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                ninjaLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Dark-Knight.png'),
                    radius: 40,

                  ),
                ),dsasadasdasdasd
                Divider(
                  height: 90,
                  color: Colors.grey,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Dark-Knight',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'CONTACT',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'abdullahyousaf132@gmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    }

- - -

### The World Time App:

#### Code(Wip):

##### main.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/pages/home.dart';
    import 'package:my_first_app/pages/loading.dart';
    import 'package:my_first_app/pages/choose_location.dart';


    void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));

##### home.dart:

    import 'package:flutter/material.dart';

    class Home extends StatefulWidget {

      @override
      State<Home> createState() => _HomeState();
    }

    class _HomeState extends State<Home> {

      Map data = {};

      late String bgImage;
      late Color bgColor;


      @override
      Widget build(BuildContext context) {

        try {
          if (data.isEmpty) {
            data = ModalRoute.of(context)!.settings.arguments == null
                ? data
                : ModalRoute.of(context)!.settings.arguments as Map;
          } else {
            data = data;
          }
          bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
          bgColor = (data['isDayTime'] ? Colors.blue : Colors.indigo[700])!;
        } catch (e) {
          print('waleed 2: $e');
          data = {};
        }

        // try {
        //   if (data.isEmpty) {
        //     data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments == null
        //         ? data
        //         : ModalRoute.of(context)!.settings.arguments as Map;
        //   } else {
        //     data = data;
        //   }
        //   bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
        //   bgColor = (data['isDaytime'] ? Colors.blue : Colors.indigo[700])!;
        // } catch (e) {
        //   data = {};
        // }
        // // print(data);

        // set background

        return Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                  children: <Widget> [
                    TextButton.icon(
                      onPressed: () async {
                        dynamic result = Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result ['location'],
                            'isDaytime': result ['isDaytime'],
                            'flag': result ['flag']
                          };
                        });
                      },
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[900],
                        size: 20,
                      ),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                          fontFamily: 'RubikMaze',
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['location'],
                          style: const TextStyle(
                            fontSize: 28,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      data['time'],
                      style: const TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

##### choose_location.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';

    class ChooseLocation extends StatefulWidget {

      @override
      State<ChooseLocation> createState() => _ChooseLocationState();
    }

    class _ChooseLocationState extends State<ChooseLocation> {

      List<WorldTime> locations = [
        WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
        WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
        WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
        WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
        WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
        WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
        WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
        WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
      ];

      void updateTime(index) async {
        WorldTime instance = locations[index];
        await instance.getTime();
        //navigate to home screen
        Navigator.pop(context, {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
          'isDaytime': instance.isDaytime,
        });
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Choose a Location'),
            centerTitle: true,
            elevation: 0,
          ),
          body: ListView.builder(
              itemCount: locations.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        updateTime(index); //just to check that its working
                      },
                      title: Text(locations[index].location),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/${locations[index].flag}'),
                      ),
                    ),
                  ),
                );
              }
          ),
        );
      }
    }

##### loading.dart:

    import 'package:flutter/material.dart';
    import 'package:my_first_app/services/world_time.dart';
    import 'package:flutter_spinkit/flutter_spinkit.dart';

    class Loading extends StatefulWidget {

      @override
      State<Loading> createState() => _LoadingState();
    }

    class _LoadingState extends State<Loading> {

      Future<void> setupWorldTime() async {
        WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
        await instance.getTime();
        Navigator.pushReplacementNamed (context, '/home', arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
          'isDaytime': instance.isDaytime,
        });

      }

      @override
      void initState() {
        super.initState();
        setupWorldTime();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: Center(
            child: SpinKitSpinningLines(
              size: 50.0,
              color: Colors.black,
            ),
          ),
        );
      }
    }

##### world_time.dart

    import 'package:flutter/cupertino.dart';
    import 'package:http/http.dart';
    import 'dart:convert';
    import 'package:intl/intl.dart';

    class WorldTime {

      late String location; // location name for the UI
      late String time; // the time in that location
      late String flag; // url to an asset flag icon
      late String url; // location url for api endpoint
      late bool isDaytime; //true or false if daytime or not

      WorldTime({ required this.location, required this.flag, required this.url});

      Future <void> getTime() async {

        try {
          //make the request
          print('wy before data:');
          Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
          print('wy aftwer call data:');
          Map data = jsonDecode(response.body);
          print('wy data: $data');

          //get properties from data
          String datetime = data  ['datetime'];
          String offset = data['utc_offset'].substring(0,3);
          //print(datetime);
          //print(offset);

          //create DateTime object
          DateTime now = DateTime.parse(datetime);
          now = now.add(Duration(hours: int.parse(offset)));

          // set the time property
          isDaytime = now.hour >6 && now.hour <20 ? true : false;
          time = DateFormat.jm().format(now);
        }
        catch (e) {
          print('waleed Cought Error: $e');
          time = 'Could not get time data';
        }
      }
    }

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