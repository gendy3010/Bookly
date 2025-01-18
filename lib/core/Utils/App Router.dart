import 'package:bookly_app/core/Utils/service%20locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/Home%20Repo%20Impl.dart';
import 'package:bookly_app/features/home/presentation/manager/Similar%20Books%20cubit/Similar%20Books%20Cubit.dart';
import 'package:bookly_app/features/home/presentation/views/Book%20Details%20View.dart';
import 'package:bookly_app/features/home/presentation/views/HomeViews.dart';
import 'package:bookly_app/features/search/presentation/views/search%20view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash%20view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return BlocProvider(
            create: (context) => SimilarBooksCubit(
              getIt.get<HomeRepoImpl>(),
            ),
              child:  BookDetailsView(
                bookModel: state.extra as BookModel,
              ));
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