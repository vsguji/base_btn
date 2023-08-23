//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <base_btn/base_btn_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) base_btn_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "BaseBtnPlugin");
  base_btn_plugin_register_with_registrar(base_btn_registrar);
}
