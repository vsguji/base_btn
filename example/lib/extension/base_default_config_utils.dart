// ignore_for_file: depend_on_referenced_packages

/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-08-23 10:49:18
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-08-23 10:54:44
 * @FilePath: /base_btn/example/lib/extension/base_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:baseui/baseui.dart';

import '../config/brn_button_config.dart';

extension BaseButtonConfigUtils on BaseDefaultConfigUtils {
  /// 按钮配置
  static BrnButtonConfig defaultButtonConfig = BrnButtonConfig(
    bigButtonRadius: 6.0,
    bigButtonHeight: 48.0,
    bigButtonFontSize: 16.0,
    smallButtonRadius: 4.0,
    smallButtonHeight: 32.0,
    smallButtonFontSize: 14.0,
    configId: BRUNO_CONFIG_ID,
  );
}
