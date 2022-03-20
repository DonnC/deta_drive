// import 'dart:typed_data';

// import 'package:deta_drive/deta_drive.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final detaProvider = Provider((ref) {
//   return DetaStorageRepository();
// });

// final driveFilesProvider = FutureProvider((ref) {
//   return DetaStorageRepository().getAllFiles();
// });

// final driveFileDownloaderProvider =
//     FutureProviderFamily<dynamic, String>((ref, filename) {
//   return DetaStorageRepository().download(filename);
// });


// class DetaStorageRepository {

//   final _deta =
//       Deta(projectId: 'YourDetaProjectId', projectKey: 'YourDetaProjectKey');

//   Future getAllFiles() async {
//     final drive = DetaDrive(drive: 'donn', deta: _deta);

//     final files = await drive.listFiles();

//     if (files is DetaException) {
//       throw files;
//     }

//     return files;
//   }

//   Future download(String filename) async {
//     final drive = DetaDrive(drive: 'donn', deta: _deta);

//     final fileByte = await drive.downloadFile(filename);

//     if (fileByte is DetaException) {
//       throw fileByte;
//     }

//     return fileByte;
//   }

//   Future delete(List<String> files) async {
//     final drive = DetaDrive(drive: 'donn', deta: _deta);

//     final resp = await drive.deleteFiles(files);

//     if (resp is DetaException) {
//       throw resp;
//     }

//     return resp;
//   }

//   Future upload(String file, Uint8List bytes,
//       {String? directory, String? filename}) async {
//     final drive = DetaDrive(drive: 'donn', deta: _deta);

//     final resp = await drive.uploadFile(file, bytes,
//         directory: directory, filename: filename);

//     if (resp is DetaException) {
//       throw resp;
//     }

//     return resp;
//   }
// }
