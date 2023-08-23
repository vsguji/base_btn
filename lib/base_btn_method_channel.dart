import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'base_btn_platform_interface.dart';

/// An implementation of [BaseBtnPlatform] that uses method channels.
class MethodChannelBaseBtn extends BaseBtnPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('base_btn');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
