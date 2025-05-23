export 'open_result.dart';

/// Use platform specific codes or use web if it's the web
export 'platform/open_filex.dart'
    if (dart.library.html) 'src/web/open_filex.dart';
