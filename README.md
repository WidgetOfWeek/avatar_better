This is a complete avatar package that you can use for your profile and avatar

## Features

**Features:**  
✔️ Initial Text: Displaying initial text for avatars or placeholders.  
✔️ Random Colors: Generating random colors for various elements.  
✔️ Random Linear Gradient: Generating random linear gradient colors.
✔️ Avatar Profile: Creating avatars for profiles or user representation.
✔️ Border Avatar: create a border around the avatar .
✔️ gradient Width Border: Create a gradient color for the borders .
✔️ Use ImageAssets .
✔️ Use ImageNetwork .

![Capture1](https://github.com/SwanFlutter/flutter_avatars/assets/151648897/9cb4f63a-5b2d-4d58-b820-de9b080ddaaf)

![Capture2](https://github.com/SwanFlutter/flutter_avatars/assets/151648897/21aebfdd-a39a-46e7-bf2b-7b7c2e990891)


![Capture3](https://github.com/SwanFlutter/flutter_avatars/assets/151648897/8990ce91-bebe-461b-9aff-291a3a1a0a90)


## Getting started

```yaml
dependencies:
  avatar: ^0.0.1
```

## How to use

```dart
import 'package:avatar/avatar.dart';

```

## How to install

### Android

- To request permissions from the user, you can use the following code: AndroidManifest.xml.

```
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />

```
- Add UCropActivity into your AndroidManifest.xml
````xml
<activity
    android:name="com.yalantis.ucrop.UCropActivity"
    android:screenOrientation="portrait"
    android:theme="@style/Theme.AppCompat.Light.NoActionBar"/>
````

### iOS
- No configuration required

### Web
- Add following codes inside `<head>` tag in file `web/index.html`:

```html
<head>
  ....

  <!-- Croppie -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.css" />
  <script defer src="https://cdnjs.cloudflare.com/ajax/libs/exif-js/2.3.0/exif.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.min.js"></script>

  ....
</head>
```

## example

```dart
 Avatar.circle(
onTapAvatar: () {},
radius: 35,
text: avatar[index],
randomGradient: true,
randomColor: false,
),,
```

```dart
Avatar.profile(
radius: 35,
text: avatar[index],
randomGradient: true,
randomColor: false,
),                           
```
Buy me a cup of coffee for 5$.

[![1281229923](https://github.com/SwanFlutter/flutter_avatars/assets/151648897/fd75ec2b-5123-4202-a0a5-85d07adba708)](https://www.swanflutterdev.site/pay.html)



## Additional information

If you have any issues, questions, or suggestions related to this package, please feel free to contact us at [swan.dev1993@gmail.com](mailto:swan.dev1993@gmail.com). We welcome your feedback and will do our best to address any problems or provide assistance.
For more information about this package, you can also visit our [GitHub repository](https://github.com/SwanFlutter/avatar.git) where you can find additional resources, contribute to the package's development, and file issues or bug reports. We appreciate your contributions and feedback, and we aim to make this package as useful as possible for our users.
Thank you for using our package, and we look forward to hearing from you!