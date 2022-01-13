import 'package:flutter_mask/data/data_source/mask_api.dart';
import 'package:flutter_mask/data/repository/store_api_repository.dart';
import 'package:flutter_mask/domain/repository/store_repository.dart';
import 'package:flutter_mask/domain/use_case/store/get_store_data_use_case.dart';
import 'package:flutter_mask/domain/use_case/store/show_store_on_map_use_case.dart';
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
  Provider<ShowStoreOnMapUseCase>(create: (_) => ShowStoreOnMapUseCase()),
];

List<SingleChildWidget> dependentModels = [
  ProxyProvider<MaskApi, StoreRepository>(
    update: (context, api, _) => StoreApiRepository(api),
  ),
  ProxyProvider<StoreRepository, GetStoreDataUseCase>(
    update: (context, repository, _) => GetStoreDataUseCase(repository),
  ),
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MaskHomeViewModel>(
    create: (context) => MaskHomeViewModel(
      context.read<GetStoreDataUseCase>(),
      context.read<ShowStoreOnMapUseCase>(),
    ),
  ),
];
