import 'package:flutter/material.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_view_model.dart';
import 'package:provider/provider.dart';

import 'components/remain_stat_list_tile.dart';

class MaskHomeScreen extends StatelessWidget {
  const MaskHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MaskHomeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳 : ${state.stores.length}곳'),
        actions: [
          IconButton(
              onPressed: () {
                viewModel.refresh();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: state.isLoading
          ? loadingWidget()
          : ListView(
              children: state.stores
                  .map(
                    (store) => RemainStatListTile(
                        onTap: () {
                          viewModel.openMap(
                              store.lat as double, store.lng as double);
                        },
                        store: store),
                  )
                  .toList(),
            ),
    );
  }

  Widget loadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('정보를 가져오는 중'),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
