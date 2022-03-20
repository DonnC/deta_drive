## Deta Drive Dart
A dart library for [**Deta**](https://docs.deta.sh/docs/) Drive Cloud Service

!Please never expose your private keys or push into public version control

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
