import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix/Core/colors.dart';
import 'package:netflix/Domain/core/dependencyInjection/injectable.dart';

import 'package:netflix/Presentation/MainPage/screen_main.dart';
import 'package:netflix/application/Fast_Laughf/fast_laughf_bloc.dart';
import 'package:netflix/application/Home/home_bloc.dart';
import 'package:netflix/application/Search_bloc/search_bloc.dart';

import 'package:netflix/application/downloads_bloc/downloads_bloc.dart';
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart';

void main() async {
  //debugPaintSizeEnabled = true;

  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughfBloc>()),
        BlocProvider(create: (ctx) => getIt<NewAndHotBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: kblackcolor),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: backgroundcolor,
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: kwhitecolor),
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 247, 245, 249)),
          useMaterial3: true,
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
