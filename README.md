# Flutter Basics:
A repository covering Flutter basics

- - -

## What is Flutter:
- Mobile UI framework for creating native apps for IOS & Android

- Single code-base (dart) means we only have to write our app once for multiple devices

- Uses dart as the the programing language

- - -

## Why use Flutter:

- Only one code base

- Good layout methodology borrowed from responsive web

- Very smooth and quick experience when running apps

- Works on 'Dart', which is a really easy language to pick up

- Uses Material Design out-of-the-box

- Great docs & guides on the flutter website

- - -

## Flutter Basics:

- Widgets are just classes

- Widgets always starts with the capital 
letter and new word also starts with capital the letter

- Put comma ( , ) after every value of every property and after scaffold aswell just in case we have more properties later on

- Put semi-colonm at the end of the return function

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

- The state of widget that cannot change over time, eg: state
  
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

#### Explanation:

- The state of widget that can change over time, eg: data, counters

  Write 'stful' then press tab this code will appear

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

#### Code:



#### Explanation:

- Creating a function that is going to return a quote templete using card widget

`Widget`(return type) `quoteTemplete`(function name) `(quote)`(individual quote)`{return Card`(returning a card widget)`()}`

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

## My First App 'My ID Card':

### Code:

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

# 
### :

#### Code:



#### Explanation:



- - -

# Frequently used Git Commands:
E:
cd Programming\Flutter\flutter-basic

git add .
git commit -m "Done till "
git push origin main

git status
