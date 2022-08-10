# Flutter Basics

A repository covering Flutter basics

- Mobile UI framework for creating native apps for IOS & Android
- Single code-base (dart) means we only have to write our app once for multiple devices

### Why use Flutter

- Only one code base
- Good layout methodology borrowed from responsive web
- Very smooth and quick experience when running apps
- Works on 'Dart', which is a really easy language to pick up
- Uses Material Design out-of-the-box
- Great docs & guides on the flutter website

## Flutter Widgets

- Text Widget
- Button Widget
- Row Widget
- Column Widget
- Image Widget

## Variables in Dart

- int (numeric value)
- string ()
- bool (true/false)
- dynamic (used for any data type)

-- Can't change variable type

-- Can't change variable value

### Examplary Dart Code

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