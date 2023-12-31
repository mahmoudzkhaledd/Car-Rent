import 'package:carrent/GeneralWidgets/AppText.dart';

import 'package:carrent/Shared/SharedTextStyles.dart';
import 'package:flutter/material.dart';

class RecentRents extends StatelessWidget {
  const RecentRents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          'Recent Rents',
          style: FontStyles.title,
        ),
        for (int i = 1; i < 10; i++)
          ListTile(
            onTap: () {},
            contentPadding: EdgeInsets.zero,
            title: AppText(
              "Rent #$i",
              style: FontStyles.listTitle,
            ),
            leading: const CircleAvatar(
              foregroundColor: Colors.black,
              child: Icon(Icons.time_to_leave),
            ),
            subtitle: AppText(
              "$i/2/2022",
              style: FontStyles.p,
            ),
            trailing: AppText(
              '${i * 15}\$',
              style: FontStyles.listTitle,
            ),
          ),
      ],
    );
  }
}
