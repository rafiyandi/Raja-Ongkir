import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:learn_bloc/injection.dart';
import 'package:learn_bloc/presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  configureInjection(Environment.prod);

  runApp(const AppWidget());
}
