// import 'dart:developer';
// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// final loaderProvider = StateProvider((_) => false);

// class DetaView extends ConsumerWidget {
//   const DetaView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final repo = ref.watch(detaProvider);
//     final deta = ref.watch(driveFilesProvider);
//     final isLoading = ref.watch(loaderProvider);

//     return Scaffold(
//         body: Column(
//       children: [
//         Expanded(
//           child: deta.when(
//             data: (data) {
//               log(data.toString());

//               var fnames = data['names'] as List;

//               return RefreshIndicator(
//                 onRefresh: () async {
//                   ref.refresh(driveFilesProvider);
//                 },
//                 child: ListView.builder(
//                   itemCount: fnames.length,
//                   itemBuilder: (_, x) {
//                     return ListTile(
//                       leading: SizedBox(
//                         height: 80,
//                         width: 50,
//                         child: ref
//                             .read(driveFileDownloaderProvider(fnames[x]))
//                             .when(
//                               data: (data) {
//                                 return CircleAvatar(
//                                     backgroundImage: MemoryImage(data));
//                               },
//                               error: (error, st) {
//                                 return Text(error.toString());
//                               },
//                               loading: () => const Center(
//                                   child: CircularProgressIndicator()),
//                             ),
//                       ),
//                       title: Text(fnames[x]),
//                       trailing: IconButton(
//                         icon: const Icon(Icons.delete),
//                         onPressed: () async {
//                           await repo.delete([fnames[x]]);
//                           Fluttertoast.showToast(
//                               msg: 'file ${fnames[x]} deleted successfully');
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//             error: (error, st) {
//               return Text(error.toString());
//             },
//             loading: () => const Center(child: CircularProgressIndicator()),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: isLoading
//               ? const CircularProgressIndicator()
//               : ElevatedButton(
//                   onPressed: () async {
//                     var fp = await FilePicker.platform.pickFiles(
//                       type: FileType.image,
//                     );

//                     var bytes = await File(fp!.files.first.path!).readAsBytes();

//                     ref.read(loaderProvider.notifier).state = true;

//                     await repo.upload(
//                       fp.files.first.path!,
//                       bytes,
//                       filename: fp.files.first.name,
//                     );

//                     Fluttertoast.showToast(msg: 'file uploaded');
//                     ref.read(loaderProvider.notifier).state = false;

//                     // var img = await ImagePicker()
//                     //     .pickImage(source: ImageSource.gallery);

//                     // if (img != null) {
//                     //   ref.read(loaderProvider.notifier).state = true;

//                     //   //final btyes = file.readAsBytesSync();
//                     //   final fileBytes = await img.readAsBytes();

//                     //   await repo.upload(
//                     //     img.path,
//                     //     fileBytes,
//                     //     // filename: 'test-upload.jpg',
//                     //   );

//                     //   Fluttertoast.showToast(msg: 'file uploaded');
//                     //   ref.read(loaderProvider.notifier).state = false;
//                     // }
//                   },
//                   child: const Text('Upload Image'),
//                 ),
//         ),
//       ],
//     ));
//   }
// }
