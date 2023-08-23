#include "include/base_btn/base_btn_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "base_btn_plugin.h"

void BaseBtnPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  base_btn::BaseBtnPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
