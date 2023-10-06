import 'package:flutter/material.dart';
import 'package:flutter_flavors_practice/flavors_config.dart';
import 'package:flutter_flavors_practice/main_common.dart';

void main() {
  mainCommon(FlavorsConfig(
      appTitle: "Store App",
      apiEndpoints: {
        Endpoints.items: "api.dev.com/items",
        Endpoints.details: "api.dev.com/details"
      },
      imageLocation: "assets/images/bg_store.jpeg",
      theme: ThemeData.dark()));
}
