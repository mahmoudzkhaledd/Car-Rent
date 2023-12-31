import 'package:carrent/Features/Core/Team/InviteMemberPage/cubit/invite_member_cubit.dart';
import 'package:carrent/GeneralWidgets/CustomButton.dart';
import 'package:carrent/GeneralWidgets/CustomTextBox.dart';
import 'package:carrent/GeneralWidgets/Image.dart';
import 'package:carrent/Helper/Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class InviteMemberBody extends StatelessWidget {
  const InviteMemberBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<InviteMemberCubit>();
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomImage(
                "invite.png",
                width: Helper.size(context).width * 1 / 2,
              ),
            ),
            const Gap(40),
            CustomTextBox(
              hintText: "User id",
              onChanged: (e) => cubit.userId = e,
            ),
            const Gap(20),
            BlocBuilder<InviteMemberCubit, InviteMemberState>(
              builder: (context, state) {
                return CustomButton(
                  text: "Invite",
                  loading: state is InviteMemberLoadingState,
                  onTap: cubit.inviteUser,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
