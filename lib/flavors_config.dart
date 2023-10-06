// ignore_for_file: unused_field

import 'package:flutter/material.dart';

enum Endpoints { items, details }

class FlavorsConfig {
  late String _appTitle;
  late Map<Endpoints, String> _apiEndpoints;
  late String _imageLocation;
  late ThemeData _theme;

  FlavorsConfig(
      {required String appTitle,
      required Map<Endpoints, String> apiEndpoints,
      required String imageLocation,
      required ThemeData theme}) {
    _appTitle = appTitle;
    _apiEndpoints = apiEndpoints;
    _imageLocation = imageLocation;
    _theme = theme;
  }

  get appTitle => _appTitle;
  get apiEndpoints => _apiEndpoints;
  get imageLocation => _imageLocation;
  get theme => _theme;
}
