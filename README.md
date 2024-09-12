## CustomText

This package is simplifying the text widget and make it flexible and auto sized.

By Using [auto_size_text](https://pub.dev/packages/auto_size_text) allowed text to be auto sized.

## Getting started
Add package to pubspec.yaml
``` yaml
    dependencies:
      custom_sizable_text: ^1.1.5
```
## Usage

```dart
    Widget createText(String message,{Color? color})=>
 CustomText(
          text: message,
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
        text:"Hello World"
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
            text:"Hello World"
            size:15,
            color:Colors.black,
            fontWeight: FontWeight.w600,
            textOverflow: TextOverflow.visible,
             textType: TextType.normal,
                        ),
       ),
```
