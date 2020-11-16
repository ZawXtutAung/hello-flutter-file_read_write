# hello_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- [pub.dev](https://pub.dev/packages/path_provider)

```dart
 Future<File> getLocal() async {
    var directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/$fileName');
  }
```

## SaveButton and LoadButton

```dart
RaisedButton.icon(
                  icon: Icon(Icons.label_important_outline),
                  label: Text('Load'),
                  onPressed: () async {
                    var file = await getLocal();
                    load = await file.readAsString();
                    setState(() {});
                  },
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.save),
                  label: Text('Save'),
                  onPressed: () async {
                    var file = await getLocal();
                    file.writeAsString(_controller.text);
                  },
                ),
```

- [ ] import 'dart:io';
# hello-flutter-file_read_write
