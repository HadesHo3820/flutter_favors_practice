import 'package:flutter/material.dart';
import 'package:flutter_flavors_practice/flavors_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var buildConfigProvider =
    StateProvider<FlavorsConfig>((ref) => throw UnimplementedError());

void mainCommon(FlavorsConfig config) {
  buildConfigProvider = StateProvider((ref) => config);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.read(buildConfigProvider);
    return MaterialApp(
      title: config.appTitle,
      theme: config.theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.read(buildConfigProvider);
    return Scaffold(
      appBar: AppBar(title: Text(config.appTitle)),
      body: Image.asset(
        config.imageLocation,
        fit: BoxFit.fill,
        height: double.infinity,
      ),
    );
  }
}
