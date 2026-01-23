
import 'qs_getx_tool_platform_interface.dart';

class QsGetxTool {
  Future<String?> getPlatformVersion() {
    return QsGetxToolPlatform.instance.getPlatformVersion();
  }
}
