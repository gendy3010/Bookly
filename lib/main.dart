import 'package:bookly_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/Utils/App Router.dart';
import 'features/splash/presentation/views/splash view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router ,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimarycolor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
