class Failur {
  final String? title;
  final String? message;
  final Object error;
  final int? errorCode;
  static Failur fromError(Object error, String? msg) =>
      Failur(error: error, message: msg);
  Failur({this.message, this.title, required this.error, this.errorCode});
}
