import 'dart:async';

import 'package:alice/core/open_filex/open_result.dart';

import 'web.dart' as web;

/// OpenFilex class
class OpenFilex {
  OpenFilex._();

  /// Open your file with provided [filePath] in the corresponding app on the running platform
  static Future<OpenResult> open(String? filePath,
      {String? type,
      String? uti,
      String linuxDesktopName = "xdg",
      bool linuxByProcess = false}) async {
    final b = await web.open("file://$filePath");
    return OpenResult(
        type: b ? ResultType.done : ResultType.error,
        message: b ? "done" : "there are some errors when open $filePath");
  }
}
