import 'package:flutter/material.dart';
import 'package:six30labstask/application/home/home_bloc.dart';
import 'package:six30labstask/application/main/main_bloc.dart';
import 'package:six30labstask/application/product/product_bloc.dart';
import 'package:six30labstask/domain/core/di/injectable.dart';
import 'package:six30labstask/pesentation/login_screen/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configurationInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => MainBloc(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
