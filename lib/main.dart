import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_x/core/theme/bloc/themes_bloc.dart';
import 'package:learn_x/presentation/learing_screen.dart/bloc/learing_bloc.dart';
import 'package:learn_x/presentation/login_screen/bloc/login_bloc.dart';
import 'package:learn_x/presentation/splash_screen/bloc/splash_bloc.dart';
import 'package:learn_x/presentation/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart' show MultiProvider, Provider;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [Provider(create: (context) => ThemesBloc(),),
    Provider(create: (context) => SplashBloc(),
    ),Provider(create: (context) => LoginBloc(),),Provider(create: (context) => LearingBloc(),)],
      child: BlocBuilder<ThemesBloc, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(debugShowCheckedModeBanner: false,
              title: 'LEARN_X',
              theme: theme,
              home: SplashScreen(),
            );
        },
      ),
    );
  }
}
