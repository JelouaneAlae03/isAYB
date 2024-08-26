import 'dart:js';

class JSObject {
  final JsObject jsObject;

  JSObject(this.jsObject);

  dynamic callMethod(String method, [List args = const []]) {
    return jsObject.callMethod(method, args);
  }
}
