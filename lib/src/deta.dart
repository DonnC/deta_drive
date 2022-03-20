/// base class to interface with deta cloud services
///
/// projectKey & projectId should not be checked in public version control, guide against your keys at all time
class Deta {
  static const _detaBaseUrlVersion = 'v1';

  static const _detaBaseUrl = 'https://drive.deta.sh/$_detaBaseUrlVersion/';

  late final String _projectKey;

  late final String _projectId;

  Deta({required String projectId, required String projectKey}) {
    _projectKey = projectKey;
    _projectId = projectId;
  }

  /// get deta base url
  String get baseUrl => _detaBaseUrl + '$_projectId/';

  /// get deta base url
  Map<String, dynamic> get headers => {'X-Api-Key': _projectKey};
}