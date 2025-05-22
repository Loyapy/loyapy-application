import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:loyapy/core/utils/logger.dart';
import '../../firebase_options.dart';
import '../../presentation/auth/auth.dart';
import '../shared/error/app_error_view.dart';
import 'injector.dart';

class Initializer {
  Initializer._();

  static void init(VoidCallback runApp) {
    ErrorWidget.builder = (errorDetails) {
      return AppErrorView(message: errorDetails.exceptionAsString());
    };

    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await initialize();
        await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform);

        FlutterError.onError = (details) {
          FlutterError.dumpErrorToConsole(details);
          kLog.i(details.stack.toString());
        };

        // Initialize Services
        await _initServices();

        runApp();
      },
      (error, stack) {
        kLog.i('runZonedGuarded: ${error.toString()}');
      },
    );
  }

  static Future<void> _initServices() async {
    try {
      _initScreenPreference();

      kLog.i("Initializing Firebase Repository...");
      AuthRepositoryImpl(FirebaseAuthService());
      kLog.i("Settings Firebase initialized successfully.");
    } catch (err, stack) {
      kLog.e("Error during _initServices: $err");
      kLog.e(stack.toString());
      rethrow;
    }
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
}
