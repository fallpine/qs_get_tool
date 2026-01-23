import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'qs_getx_tool_platform_interface.dart';

/// An implementation of [QsGetxToolPlatform] that uses method channels.
class MethodChannelQsGetxTool extends QsGetxToolPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('qs_getx_tool');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
