import 'package:get_it/get_it.dart';
import 'package:loyapy/presentation/auth/auth.dart';

import '../../presentation/detail/detail.dart';
import '../../presentation/home/home.dart';

final sl = GetIt.instance;

Future<void> initialize() async {
  // Repositories
  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl());
  // sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(FirebaseAuthService()));

  // BLoC
  sl.registerFactory<HomeBloc>(
    () => HomeBloc(sl())
      ..add(LoadHomeData())
      ..add(LoadCategoryData())
      ..add(LoadBannerData()),
  );
  sl.registerFactory<DetailsBloc>(
    () => DetailsBloc(),
  );
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(authRepository: sl()),
  );
}
