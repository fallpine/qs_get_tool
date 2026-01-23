import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'qs_getx_tool_method_channel.dart';

abstract class QsGetxToolPlatform extends PlatformInterface {
  /// Constructs a QsGetxToolPlatform.
  QsGetxToolPlatform() : super(token: _token);

  static final Object _token = Object();

  static QsGetxToolPlatform _instance = MethodChannelQsGetxTool();

  /// The default instance of [QsGetxToolPlatform] to use.
  ///
  /// Defaults to [MethodChannelQsGetxTool].
  static QsGetxToolPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QsGetxToolPlatform] when
  /// they register themselves.
  static set instance(QsGetxToolPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
