/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-08-23 11:04:44
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-08-23 11:19:07
 * @FilePath: /base_btn/example/lib/extension/base_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:baseui/baseui.dart';

import '../config/brn_button_config.dart';
import 'base_default_config_utils.dart';

class ButtonTotalConfig extends BaseTotalConfig {
  ButtonTotalConfig({BrnButtonConfig? buttonConfig});

  BrnButtonConfig? _buttonConfig;

  BrnButtonConfig get buttonConfig =>
      _buttonConfig ?? BaseButtonConfigUtils.defaultButtonConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _buttonConfig ??= BrnButtonConfig();
    buttonConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BaseButtonTotalConfig on BaseTotalConfig {
  BrnButtonConfig get buttonConfig => BaseButtonConfigUtils.defaultButtonConfig;
}
