import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_epay/features/home/presentation/views/widgets/send_money_list_item.dart';


class SendMoneyList extends StatelessWidget {
  const SendMoneyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.44.h,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const SendMoneyListItem();
        },
      ),
    );  }
}
