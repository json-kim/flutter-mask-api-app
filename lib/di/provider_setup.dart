import 'package:flutter_mask/data/api/locator_api.dart';
import 'package:flutter_mask/data/api/url_launch_api.dart';
import 'package:flutter_mask/data/data_source/mask_api.dart';
import 'package:flutter_mask/data/repository/location_api_repository.dart';
import 'package:flutter_mask/data/repository/map_google_api_repository.dart';
import 'package:flutter_mask/data/repository/store_api_repository.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:flutter_mask/domain/use_case/get_location_data_use_case.dart';
import 'package:flutter_mask/domain/use_case/open_map_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/get_store_data_use_case.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

List<SingleChildWidget> independentModels = [
  Provider<MaskApi>(create: (_) => MaskApi()),
  Provider<LocatorApi>(create: (_) => LocatorApi()),
  Provider<UrlLaunchApi>(create: (_) => UrlLaunchApi()),
];

List<SingleChildWidget> dependentModels = [
  ProxyProvider<MaskApi, StoreRepository>(
    update: (context, api, _) => StoreApiRepository(api),
  ),
  ProxyProvider<LocatorApi, LocationApiRepository>(
    update: (context, api, _) => LocationApiRepository(api),
  ),
  ProxyProvider<UrlLaunchApi, MapGoogleApiRepository>(
    update: (context, api, _) => MapGoogleApiRepository(api),
  ),
  ProxyProvider<StoreRepository, GetStoreDataUseCase>(
    update: (context, repository, _) => GetStoreDataUseCase(repository),
  ),
  ProxyProvider<LocationApiRepository, GetLocationDataUseCase>(
    update: (context, repository, _) => GetLocationDataUseCase(repository),
  ),
  ProxyProvider<MapGoogleApiRepository, OpenMapUseCase>(
    update: (context, repository, _) => OpenMapUseCase(repository),
  ),
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MaskHomeViewModel>(
      create: (context) => MaskHomeViewModel(
            context.read<GetStoreDataUseCase>(),
            context.read<GetLocationDataUseCase>(),
            context.read<OpenMapUseCase>(),
          )),
];
