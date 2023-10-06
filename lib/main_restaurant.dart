import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavors_practice/flavors_config.dart';
import 'package:flutter_flavors_practice/main_common.dart';

void main() {
  mainCommon(FlavorsConfig(
      isInReleaseVersion: kReleaseMode,
      appTitle: "Restaurant App",
      apiEndpoints: {
        Endpoints.items: "api.dev.com/items",
        Endpoints.details: "api.dev.com/details"
      },
      imageLocation: "assets/images/bg_restaurant.jpeg",
      theme: ThemeData.light().copyWith(
          primaryColor: const Color(0xff123456),
          appBarTheme: ThemeData.light()
              .appBarTheme
              .copyWith(backgroundColor: const Color(0xff654321)))));
}
