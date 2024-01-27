import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/news_bloc.dart';
import 'package:flutter_application_1/page/home_page.dart';
import 'package:flutter_application_1/services/respository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NewsBloc(newsRepository: NewsRepository())..add
        (NewsLoadEvent()),
        child:const HomePage(),
      ),
    );
  }
}
