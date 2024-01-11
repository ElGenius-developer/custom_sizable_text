## CustomText

This package is simplifying the text widget and make it flexible and auto sized.

By Using [auto_size_text](https://pub.dev/packages/auto_size_text) allowed text to be auto sized.

## Getting started
Add package to pubspec.yaml
``` yaml
    dependencies:
      custom_text:
        git:
          url: https://github.com/ElGenius-developer/custom_text
```
## Usage

[//]: # (TODO: Include short and useful examples for package users. Add longer examples)

[//]: # (to `/example` folder. )

```dart
    Widget createText(String message,{Color? color})=> CustomText(
                                    text: message,
                                    size: 20,
                                    color: color ,//default is black
                                    fontWeight: FontWeight.w600,
                                    textOverflow: TextOverflow.visible,
                                    maxLines : 2
                                    );
```

 