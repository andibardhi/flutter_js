@JS()
library nuvo;

import 'package:js/js.dart';

@JS()
external dynamic testJS(
  Function(
    String text,
  ) onResults,
);
