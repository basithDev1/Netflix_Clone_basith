// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads_bloc/downloads_bloc.dart' as _i15;
import '../../../application/Fast_Laughf/fast_laughf_bloc.dart' as _i16;
import '../../../application/Home/home_bloc.dart' as _i17;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i13;
import '../../../application/Search_bloc/search_bloc.dart' as _i14;
import '../../../Infrastructure/Downloads/downloads_repository.dart' as _i4;
import '../../../Infrastructure/FastLaughf/fast_laughf_repository.dart' as _i6;
import '../../../Infrastructure/Home/home_repository.dart' as _i8;
import '../../../Infrastructure/NewandHot/new_and_hot_repository.dart' as _i10;
import '../../../Infrastructure/Search/search_repository.dart' as _i12;
import '../../downloads/i_downloads_repo.dart' as _i3;
import '../../fastlaughf/i_fastlaughf_repo.dart' as _i5;
import '../../Home/i_home_repo.dart' as _i7;
import '../../NewandHot/i_new_and_hot_repo.dart' as _i9;
import '../../search/i_search_repo.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
  gh.lazySingleton<_i5.IFastLaughRepo>(() => _i6.FastLaughfRepository());
  gh.lazySingleton<_i7.IHomeRepo>(() => _i8.HomeRepository());
  gh.lazySingleton<_i9.INewandHotRepo>(() => _i10.NewandHotRepository());
  gh.lazySingleton<_i11.ISearchRepo>(() => _i12.SearchRepository());
  gh.factory<_i13.NewAndHotBloc>(() => _i13.NewAndHotBloc(
        get<_i3.IDownloadsRepo>(),
        repo: get<_i9.INewandHotRepo>(),
      ));
  gh.factory<_i14.SearchBloc>(() => _i14.SearchBloc(
        get<_i3.IDownloadsRepo>(),
        get<_i11.ISearchRepo>(),
      ));
  gh.factory<_i15.DownloadsBloc>(
      () => _i15.DownloadsBloc(get<_i3.IDownloadsRepo>()));
  gh.factory<_i16.FastLaughfBloc>(() => _i16.FastLaughfBloc(
        get<_i3.IDownloadsRepo>(),
        get<_i5.IFastLaughRepo>(),
      ));
  gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(get<_i7.IHomeRepo>()));
  return get;
}
