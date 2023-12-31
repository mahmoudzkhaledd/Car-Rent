import 'package:carrent/Features/Core/Team/TeamPage/cubit/team_page_cubit.dart';
import 'package:carrent/GeneralWidgets/AppText.dart';
import 'package:carrent/Shared/AppUser.dart';
import 'package:carrent/Shared/SharedTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TeamPages extends StatelessWidget {
  const TeamPages({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TeamPageCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          "Team Members",
          style: FontStyles.title,
        ),
        if (cubit.team.members.isNotEmpty)
          ...cubit.team.members.map(
            (e) {
              if (e.id != Get.find<AppUser>().user!.id) {
                return ListTile(
                  title: AppText(
                    e.firstName,
                    style: FontStyles.listTitle,
                  ),
                  subtitle: AppText(
                    "Role: Member",
                    style: FontStyles.listTitle,
                  ),
                );
              }
              return const SizedBox();
            },
          )
        else
          Center(
            child: Column(
              children: [
                const Gap(50),
                AppText(
                  "No Members in the team yet!",
                  style: FontStyles.input,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
