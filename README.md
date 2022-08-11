# Flutter Basics

A repository covering Flutter basics

- Mobile UI framework for creating native apps for IOS & Android
- Single code-base (dart) means we only have to write our app once for multiple devices

## Why use Flutter:

- Only one code base
- Good layout methodology borrowed from responsive web
- Very smooth and quick experience when running apps
- Works on 'Dart', which is a really easy language to pick up
- Uses Material Design out-of-the-box
- Great docs & guides on the flutter website

## Flutter Widgets:

- Text Widget
- Button Widget
- Row Widget
- Column Widget
- Image Widget

## Variables in Dart:

- int (numeric value)
- string ()
- bool (true/false)
- dynamic (used for any data type)

#### Note:
- Can't change variable type

- Can't change variable value

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

### Examplary Dart Code for Lists:

    void main () {
      List<Sting> names = ['D-K', 'A-Y', 'W-Y'];
      names.add('R-2');
      names.remove('D-K');

      print(names);
    }

### Examplary Dart Code for Classes:

    void main() {
      User userOne = User('DK', 20);
      print(userOne.username);
      //print(userOne.userage);

      User userTow = User('I', 26);
      print(userTow.username);
      //print(userTow.userage);
    }

    class User {
      String username;
      int age;

      User(String username, int age) {
        this.username = username;
        this.age = age;
      }

      void login() {
        print('user logged in');
      }
    }

    











