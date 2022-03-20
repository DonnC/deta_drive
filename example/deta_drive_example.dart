import 'package:deta_drive/deta_drive.dart';

void main() async {
  final _deta = Deta(projectId: 'projectId', projectKey: 'projectKey');

  final drive = DetaDrive(drive: 'drive-name', deta: _deta);

  final myFiles = await drive.listFiles();

  print(myFiles);
}
