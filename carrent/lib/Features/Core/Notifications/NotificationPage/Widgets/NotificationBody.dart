import 'package:carrent/Features/Core/Notifications/NotificationPage/Widgets/NotificationWidget.dart';
import 'package:carrent/Features/Core/Notifications/NotificationPage/cubit/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NotificationCubit>();
    return RefreshIndicator(
      onRefresh: () async => cubit.getData(),
      child: ListView.builder(
        itemCount: cubit.notifications.length,
        itemBuilder: (context, index) {
          return NotificationWidget(
            key: UniqueKey(),
            notification: cubit.notifications[index],
            onChangeState: cubit.onChangeStateNotification,
          );
        },
      ),
    );
  }
}
