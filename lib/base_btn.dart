
import 'base_btn_platform_interface.dart';

class BaseBtn {
  Future<String?> getPlatformVersion() {
    return BaseBtnPlatform.instance.getPlatformVersion();
  }
}
