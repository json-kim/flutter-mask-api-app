import 'package:flutter/material.dart';
import 'package:flutter_mask/domain/model/store.dart';

class RemainStatListTile extends StatelessWidget {
  final Store store;
  void Function()? onTap;

  RemainStatListTile({this.onTap, required this.store, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(store.name),
      subtitle: Text(store.addr),
      trailing: _buildRemainStatWidget(context, store.remainStat),
    );
  }

  Widget _buildRemainStatWidget(BuildContext context, String? stat) {
    var remainStat = '매진';
    var description = '판매 중지';
    var color = Colors.black;
    if (stat == 'plenty') {
      remainStat = '충분';
      description = '100개 이상';
      color = Colors.green;
    }
    switch (stat) {
      case 'plenty':
        remainStat = '충분';
        description = '100개 이상';
        color = Colors.green;
        break;
      case 'some':
        remainStat = '보통';
        description = '30 ~ 100개';
        color = Colors.yellow;
        break;
      case 'few':
        remainStat = '부족';
        description = '2 ~ 30개';
        color = Colors.red;
        break;
      case 'empty':
        remainStat = '소진임박';
        description = '1개';
        color = Colors.grey;
        break;
    }

    return Column(
      children: [
        Text(
          remainStat,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: color,
              ),
        ),
        Text(description),
      ],
    );
  }
}
