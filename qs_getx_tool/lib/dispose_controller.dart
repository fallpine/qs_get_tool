import 'package:get/get.dart';
import 'package:qs_getx_tool/dispose_bag.dart';

abstract class BaseController extends GetxController with DisposeBagMixin {
  /// System
  @override
  void onClose() {
    disposeDisposeBag();
    super.onClose();
  }
}
