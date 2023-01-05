# Fancy Button Flutter ( Button with Icon )

Fancy Button - Fancy Button Flutter with Icon. Create awesome button with combination of Icon and Text. It is flexible and you can design according to your need.

![image description](https://github.com/dheeraj-bhadoria/Form-Stepper-Futter-set-and-get-the-status-of-form-/blob/main/demo.png)

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✔️    | ✔️  |  ✔️   | ✔️  |  ✔️   |   ✔️    |


## Getting Started


With Flutter:

```yaml

$ flutter pub add stepper_flutter_form

```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml

  dependencies:
  stepper_flutter_form: ^1.0.0+1

```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

## Example

First import the class in your class

```dart

import 'package:stepper_flutter/stepper_flutter_form.dart';

```

Example

```dart

    import 'package:stepper_flutter/stepper_flutter_form.dart';
    

    // This widget is the root of your application.
    @override 
    Widget build(BuildContext context) {
      /// Fancy button with its property 
      return FormStepper(items: widget.items, selectedColor: Colors.green, unSelectedColor: Colors.red, inProcess: 5, menuTitleSize: 12, height: 80, onItemClicked: (index){
        print('ClickedIndex'+index.toString());
      },);
    }
    
```


## License

MIT License

Copyright (c) 2022 Dheeraj Singh Bhadoria

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.