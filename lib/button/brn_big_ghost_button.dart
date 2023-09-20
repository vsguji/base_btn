/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-07-24 14:41:29
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-08-23 13:46:44
 * @FilePath: /base_btn/example/lib/button/brn_big_ghost_button.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:base_btn/extension/base_button_common_config.dart';
import 'package:base_btn/extension/base_total_config.dart';
import 'package:flutter/material.dart';
import 'package:baseui/baseui.dart';
import '../config/brn_button_config.dart';
import 'brn_normal_button.dart';

/// 页面中和主题色相关的幽灵按钮 可以支持自定义背景颜色、文字颜色等
///
/// 和[BrnBigMainButton]相比，该按钮的背景色仅仅是其背景色的withOpacity(0.1)
/// 并且该按钮不支持不可用状态
///
/// 按钮是圆角矩形的形状，不支持改变形状。
///
/// BrnBigGhostButtonWidget(
///    title: '提交',
/// )
///
/// 其他按钮如下：
///  * [BrnBigMainButton], 大主色调按钮
///  * [BrnBigOutlineButton], 大边框按钮

class BrnBigGhostButton extends StatelessWidget {
  ///按钮文案，默认'确认'
  final String? title;

  ///文案颜色
  final Color? titleColor;

  ///按钮背景颜色
  final Color? bgColor;

  ///点击回调
  final VoidCallback? onTap;

  ///默认父布局可用空间
  final double? width;
  final BrnButtonConfig? themeData;

  const BrnBigGhostButton({
    Key? key,
    this.title,
    this.titleColor,
    this.bgColor,
    this.onTap,
    this.width,
    this.themeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BrnButtonConfig defaultThemeConfig = themeData ?? BrnButtonConfig();
    defaultThemeConfig = BaseThemeConfig.instance
        .getConfig(configId: defaultThemeConfig.configId)
        .buttonConfig
        .merge(defaultThemeConfig);

    return BrnNormalButton(
      borderRadius: BorderRadius.circular(defaultThemeConfig.bigButtonRadius),
      constraints: BoxConstraints.tightFor(
          width: width ?? double.infinity,
          height: defaultThemeConfig.bigButtonHeight),
      backgroundColor: bgColor ??
          defaultThemeConfig.commonConfig.brandPrimary.withOpacity(0.05),
      onTap: onTap,
      alignment: Alignment.center,
      text: title ?? BrnIntl.of(context).localizedResource.confirm,
      textColor: titleColor ?? defaultThemeConfig.commonConfig.brandPrimary,
      fontSize: defaultThemeConfig.bigButtonFontSize,
    );
  }
}
