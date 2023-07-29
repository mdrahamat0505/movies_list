import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:movies_list/models/movies_list.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_android/path_provider_android.dart';

class HiveService extends GetxService {
  Future<void> onInitForApp() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // DartPluginRegistrant.ensureInitialized();
    // if (Platform.isAndroid) PathProviderAndroid.registerWith();
    Directory appDocumentDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);

    Hive.registerAdapter(MoviesListAdapter(), override: true);
    await Hive.openBox('logIn');
    await Hive.openBox('Movies');

    log('Hive initialized onInitForApp');
  }
}
