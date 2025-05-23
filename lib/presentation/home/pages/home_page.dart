import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../detail/detail.dart';
import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  const HeaderSection(),
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
                      onDetailTap: (product) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlocProvider<DetailsBloc>(
                              create: (context) => sl<DetailsBloc>(),
                              child: ProductDetailsPage(product: product),
                            ),
                          ),
                        );
                      },
                    ),
                  SizedBox(height: 8.w),
                  HomeListItem(
                    onDetailTap: (product) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider<DetailsBloc>(
                            create: (context) => sl<DetailsBloc>(),
                            child: ProductDetailsPage(product: product),
                          ),
                        ),
                      );
                    },
                    products: state.bestDeals.reversed.toList(),
                    title: 'Trending home essentials',
                  ),
                  SizedBox(height: 8.w),
                  const FooterSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
