## CustomSizableText

**This package is simplifying the text widget and make it flexible and auto sized.**
**By Using [auto_size_text](https://pub.dev/packages/auto_size_text) which allows text to be auto sized.**

[github](https://github.com/ElGenius-developer/custom_sizable_text)

## Getting started
Add package to pubspec.yaml
``` yaml
    dependencies:
      custom_sizable_text: <latest-version>
```
### Add the following imports to your Dart code

```dart
import 'package:flutter_screenutil/flutter_screenutil.dart';
```


## Usage

### Add dependency

Please check the latest version before installation.
If there is any problem with the new version, please use the previous version

```dart
    Widget createText(String message,{Color? color})=>
 CustomText(
          message,
          size: 20,
          color: color ,//default is black
          fontWeight: FontWeight.w600,
          textOverflow: TextOverflow.visible,
          maxLines : 2
          );
```
## Tips 
- You can make text not sizable by change `textType`
```dart
  CustomText(
       "Hello World"
        size:15,
        color:Colors.black,
        fontWeight: FontWeight.w600,
        textOverflow: TextOverflow.visible,
        //Add this line
        textType: TextType.normal,
),
```
- If you are using resizable text on unbounded hieght widget, we strongly recommend to set height for `CustomText` widget by wrapping it in `SizedBox` or use ` TextType.normal `
 
```dart
//Using Sizedbox
SizedBox(
    height:  100,
    width:   200,
    child:  CustomText(
            "Hello World"
            size:15,
            color:Colors.black,
            fontWeight: FontWeight.w600,
            textOverflow: TextOverflow.visible,
             textType: TextType.normal,
                        ),
       ),
```

### Example

[example demo](https://github.com/ElGenius-developer/custom_sizable_text/tree/main/example/lib/main.dart)

