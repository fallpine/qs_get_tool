import 'dart:async';

import 'package:qs_getx_tool/dispose_bag.dart';

class GetxTimer {
  static Future<Timer> period({
    Duration? dueTime,
    required Duration duration,
    required DisposeBag disposeBag,
    required void Function(Timer? timer) callback,
  }) async {
    if (dueTime != null && dueTime < duration) {
      await Future.delayed(dueTime);
      callback(null);
    }
    final timer = Timer.periodic(duration, callback);
    disposeBag.addTimer(timer);
    return timer;
  }
}
