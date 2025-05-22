import 'package:get_it/get_it.dart';

import '../../presentation/home/home.dart';

final sl = GetIt.instance;

Future<void> initialize() async {
  // Repositories
  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl());

  // BLoC
  sl.registerFactory<HomeBloc>(
    () => HomeBloc(sl())
      ..add(LoadHomeData())
      ..add(LoadCategoryData())
      ..add(LoadBannerData()),
  );
}
