import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'base_btn_method_channel.dart';

abstract class BaseBtnPlatform extends PlatformInterface {
  /// Constructs a BaseBtnPlatform.
  BaseBtnPlatform() : super(token: _token);

  static final Object _token = Object();

  static BaseBtnPlatform _instance = MethodChannelBaseBtn();

  /// The default instance of [BaseBtnPlatform] to use.
  ///
  /// Defaults to [MethodChannelBaseBtn].
  static BaseBtnPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BaseBtnPlatform] when
  /// they register themselves.
  static set instance(BaseBtnPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
