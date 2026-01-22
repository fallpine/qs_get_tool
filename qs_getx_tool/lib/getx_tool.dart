import 'package:get/get.dart' as getx;
import 'package:qs_getx_tool/dispose_bag.dart';

class GetxTool {
  /// 监听
  static void ever<T>(
    getx.RxInterface<T> listener, {
    dynamic condition = true,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
    required DisposeBag disposeBag,
    required getx.WorkerCallback<T> callback,
  }) {
    var worker = getx.ever(
      listener,
      condition: condition,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
      callback,
    );
    disposeBag.addWorker(worker);
  }

  /// 监听所有
  static void everAll(
    List<getx.RxInterface> listeners, {
    dynamic condition = true,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
    required DisposeBag disposeBag,
    required getx.WorkerCallback callback,
  }) {
    var worker = getx.everAll(
      listeners,
      condition: condition,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
      callback,
    );
    disposeBag.addWorker(worker);
  }

  /// 防反跳监听
  static void debounce<T>(
    getx.RxInterface<T> listener, {
    required Duration time,
    required DisposeBag disposeBag,
    required getx.WorkerCallback<T> callback,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    var worker = getx.debounce(
      listener,
      callback,
      time: time,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
    disposeBag.addWorker(worker);
  }
}
