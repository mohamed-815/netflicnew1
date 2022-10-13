import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflics/application/downloads/downloads_bloc.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/domain/core/di/injectable.dart';

import 'package:netflics/presentation/mainpage/wigets/screenmainpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  runApp(const MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: ((ctx) => getIt<DownloadsBloc>()))],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.transparent,
            ),
            fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: backgroundcolor1,
            primarySwatch: Colors.blue,
            backgroundColor: Colors.black,
            textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
            )),
        home: MainScreen(),
      ),
    );
  }
}
