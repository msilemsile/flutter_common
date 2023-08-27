import 'package:flutter/foundation.dart';
import 'package:flutter_common/common/constant/AppConstant.dart';

///log日志
class Log {
  static bool releasePrint = false;

  static void enableReleaseLog() {
    releasePrint = true;
  }

  static void message(Object object, {String? tag}) {
    if (releasePrint) {
      print("${tag ?? AppConstant.appTag}: $object");
    } else if (kDebugMode) {
      print("${tag ?? AppConstant.appTag}: $object");
    }
  }
}
