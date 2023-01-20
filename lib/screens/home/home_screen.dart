/*
    Created by: Bahromjon Po'lat.
    Created date: 8/24/22 1:52 PM
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quiz/screens/home/bottomBar.dart';
import 'package:quiz/screens/home/home.dart';

import '../../bloc/bottom_nav_bar/bottom_navigation_bar_bloc.dart';
import '../profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll(const [
      HomePage(),
      Profile(),
    
      Profile(),
    ]);
    BlocProvider.of<BottomNavigationBarBloc>(context).stream.listen((event) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: IndexedStack(
        index: context.watch<BottomNavigationBarBloc>().state,
        children: _pages,
      ),
    );
  }
}
