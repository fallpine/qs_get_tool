import 'package:flutter_test/flutter_test.dart';
import 'package:qs_getx_tool/qs_getx_tool.dart';
import 'package:qs_getx_tool/qs_getx_tool_platform_interface.dart';
import 'package:qs_getx_tool/qs_getx_tool_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockQsGetxToolPlatform
    with MockPlatformInterfaceMixin
    implements QsGetxToolPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final QsGetxToolPlatform initialPlatform = QsGetxToolPlatform.instance;

  test('$MethodChannelQsGetxTool is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelQsGetxTool>());
  });

  test('getPlatformVersion', () async {
    QsGetxTool qsGetxToolPlugin = QsGetxTool();
    MockQsGetxToolPlatform fakePlatform = MockQsGetxToolPlatform();
    QsGetxToolPlatform.instance = fakePlatform;

    expect(await qsGetxToolPlugin.getPlatformVersion(), '42');
  });
}
