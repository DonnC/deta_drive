/// deta exception base class
class DetaException implements Exception {
  String? message;

  DetaException({this.message = 'Deta: Something went wrong!'});

  @override
  String toString() => 'DetaException(message: $message)';

  DetaException copyWith({
    String? message,
  }) {
    return DetaException(
      message: message ?? this.message,
    );
  }
}
