## Deta Drive Dart
A dart library for [**Deta**](https://docs.deta.sh/docs/) Drive Cloud Service

## Very Important
**Please note, deta is ONLY used for SERVER side applications and not user applications, so do not use your keys in your flutter production apps as hackers can reverse engineer your code and access deta keys, for more check
 the comment from [@detahq](https://twitter.com/detahq/status/1505893137012736002?s=20&t=wE2VzUwhMzpO3TvpElx0OA) on twitter**

## Features
- Upload file to deta storage
- List deta files
- Delete deta files
- Download deta files
<br>
x - Chunked upload `TODO`

## Getting started
`TL;DR` <br>
Check out the amazing **Deta** [here](https://docs.deta.sh/docs/)

## Usage
Check the [`/example`](example/) folder.
<br>
**There is a complete view with riverpod in the examples folder 

Create Deta object
```dart
import 'package:deta_drive/deta_drive.dart';

void main() async {
  final _deta = Deta(projectId: 'projectId', projectKey: 'projectKey');

  final drive = DetaDrive(drive: 'drive-name', deta: _deta);

  final drive2 = DetaDrive(drive: 'drive-name-2', deta: _deta);

  // ... <more-drives> per your requirement
  
  final myFiles = await drive.listFiles();

  print(myFiles);
}

```

## Additional information
**ATTENTION**<br>
Be smart, Keep your deta keys private 
