import 'package:bookly_app/features/home/presentation/views/Book%20Details%20View.dart';
import 'package:bookly_app/features/home/presentation/views/HomeViews.dart';
import 'package:bookly_app/features/search/presentation/views/search%20view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash%20view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView ='/homeview';
  static const kBookDetailsView ='/bookDetailsView';
  static const kSearchView ='/searchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },

      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },

      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },

      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },

      ),

    ],
  );
}