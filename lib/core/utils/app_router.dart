import 'package:bookly_app/core/utils/service-locator.dart';
import 'package:bookly_app/features/home/data/repos/home-repo-imp.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch-similar-books/fetch_similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book-details-view.dart';
import 'package:bookly_app/features/search/presentation/views/search-view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context)=>FetchSimilarBooksCubit(
              getIt.get<HomeRepoImp>()
          ),
            child:  BookDetailsView(
              bookModel:state.extra as BookModel,
            ),),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}