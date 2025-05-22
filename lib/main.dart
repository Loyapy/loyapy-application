import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/core.dart';
import 'presentation/auth/auth.dart';
import 'presentation/home/home.dart';

Future<void> main() async {
  Initializer.init(
    () => runApp(
      ScreenUtilInit(
        splitScreenMode: true,
        child: const LoyapyApp(),
      ),
    ),
  );
}

class LoyapyApp extends StatefulWidget {
  const LoyapyApp({super.key});

  @override
  State<LoyapyApp> createState() => _LoyapyAppState();
}

class _LoyapyAppState extends State<LoyapyApp> {
  final ThemeMode _themeMode = ThemeMode.light;
  final Locale _locale = const Locale('en');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loyapy',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<AuthBloc>()),
          BlocProvider(create: (context) => sl<HomeBloc>()),
        ],
        child: Builder(builder: (context) {
          return HomePage();
        }),
      ),
    );
  }
}
