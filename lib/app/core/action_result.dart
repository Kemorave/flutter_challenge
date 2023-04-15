 import 'package:get/get.dart';

import 'failur.dart';

class ActionResult<T extends Object> {
  final Failur? error;
  final T? result;
  final Response? responce;

  static Future<ActionResult<X>> runAsync<X extends Object>(
      Future<X> Function() fun) async {
    try {
      return ActionResult(result: await fun());
    } catch (e) {
      return ActionResult<X>(error: Failur(error: e));
    }
  }

  static ActionResult<X> run<X extends Object>(X Function() fun) {
    try {
      return ActionResult(result: fun());
    } catch (e) {
      return ActionResult<X>(error: Failur(error: e));
    }
  }

  ActionResult({this.error, this.result,this.responce});
}
