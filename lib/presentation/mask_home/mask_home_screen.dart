import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_event.dart';
import 'package:flutter_mask/presentation/mask_home/mask_home_view_model.dart';
import 'package:provider/provider.dart';

import 'components/remain_stat_list_tile.dart';

class MaskHomeScreen extends StatefulWidget {
  const MaskHomeScreen({Key? key}) : super(key: key);

  @override
  State<MaskHomeScreen> createState() => _MaskHomeScreenState();
}

class _MaskHomeScreenState extends State<MaskHomeScreen> {
  StreamSubscription? _eventSubscription;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<MaskHomeViewModel>();
      _eventSubscription = viewModel.stream.listen((event) {
        event.when(
            snackBar: (message) {
              final snackBar = SnackBar(content: Text(message));
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
            error: (_) {});
      });
    });
  }

  @override
  void dispose() {
    _eventSubscription?.cancel();
    super.dispose();
  }

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
                viewModel.onEvent(const MaskHomeEvent.load());
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
                          viewModel.onEvent(MaskHomeEvent.openMap(store));
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
