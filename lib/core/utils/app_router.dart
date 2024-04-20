import 'package:bookly_app/features/home/presentation/views/book-details-view.dart';
import 'package:bookly_app/features/search/presentation/views/search-view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home-view.dart';

abstract class AppRouter{
  static const kHomeView ='/homeView';
  static const kBookDetailsView ='/bookDetailsView';
  static const kSearchView ='/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}