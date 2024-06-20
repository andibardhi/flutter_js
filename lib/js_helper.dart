@JS()
library test;

import 'dart:js_interop';

@JS()
external JSPromise<JSAny?> testJS(
  JSExportedDartFunction onResults,
);
