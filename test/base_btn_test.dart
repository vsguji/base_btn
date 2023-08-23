import 'package:flutter_test/flutter_test.dart';
import 'package:base_btn/base_btn.dart';
import 'package:base_btn/base_btn_platform_interface.dart';
import 'package:base_btn/base_btn_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBaseBtnPlatform
    with MockPlatformInterfaceMixin
    implements BaseBtnPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BaseBtnPlatform initialPlatform = BaseBtnPlatform.instance;

  test('$MethodChannelBaseBtn is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBaseBtn>());
  });

  test('getPlatformVersion', () async {
    BaseBtn baseBtnPlugin = BaseBtn();
    MockBaseBtnPlatform fakePlatform = MockBaseBtnPlatform();
    BaseBtnPlatform.instance = fakePlatform;

    expect(await baseBtnPlugin.getPlatformVersion(), '42');
  });
}
