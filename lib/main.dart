import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/dio_helper.dart';
import 'package:bookly/core/widgets/bloc_observe.dart';
import 'package:bookly/features/home/data/repos/home_repo_imple.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/Splash/presentation/views/splash_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.initialObject();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBookCubit(HomeRepoImple())..fetchFeaturedBooks(),),
        BlocProvider(create: (context) => NewestBooksCubit(HomeRepoImple())..fetchNewestBooks()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
        home: const SplashView(),
      ),
    );
  }
}

