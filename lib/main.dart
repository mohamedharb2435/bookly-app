import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service-locator.dart';
import 'package:bookly_app/features/home/data/repos/home-repo-imp.dart';
import 'package:bookly_app/features/home/presentation/manager/featured-books-cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest-books-cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SetupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=>FeaturedBooksCubit(
        getIt.get<HomeRepoImp>(),
        ),),
        BlocProvider(create:(context)=>NewestBooksCubit(
          getIt.get<HomeRepoImp>(),
        ),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

