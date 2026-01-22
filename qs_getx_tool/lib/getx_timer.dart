import 'dart:async';

import 'package:qs_getx_tool/dispose_bag.dart';

class GetxTimer {
  Timer period({
    required Duration duration,
    required DisposeBag disposeBag,
    required void Function(Timer timer) callback,
  }) {
    final timer = Timer.periodic(duration, callback);
    disposeBag.addTimer(timer);
    return timer;
  }
}
