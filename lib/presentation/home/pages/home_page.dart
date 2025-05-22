import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HomeHeader(),
                  SizedBox(height: 12.h),
                  HomeBanner(bannerImages: state.banners),
                  SizedBox(height: 8.w),
                  HomeCategoryList(categories: state.categories),
                  SizedBox(height: 8.w),
                  if (state.isLoading)
                    const Center(child: CircularProgressIndicator())
                  else
                    HomeListItem(
                      products: state.bestDeals,
                      title: 'Best deals for you',
                    ),
                  SizedBox(height: 8.w),
                  HomeListItem(
                    products: state.bestDeals.reversed.toList(),
                    title: 'Trending home essentials',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
