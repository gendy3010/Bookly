import 'package:bookly_app/constants/constants.dart';
import 'package:bookly_app/core/Utils/service%20locator.dart';
import 'package:bookly_app/features/home/data/repos/Home%20Repo%20Impl.dart';
import 'package:bookly_app/features/home/presentation/manager/Featured%20Books%20cubit/FeaturedBooks%20cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/Newest%20Books%20cubit/NewestBooks%20Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/Utils/App Router.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(
          getIt.get<HomeRepoImpl>(),
        )..fetchFeaturdbooks(),
        ),
        BlocProvider(create: (context) => NewestBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router ,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimarycolor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
