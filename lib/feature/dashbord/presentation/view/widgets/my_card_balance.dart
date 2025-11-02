// import 'dart:async';

import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/cart_doits_list.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/my_card_details_page_view.dart';
import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  const Mycard({super.key});

  @override
  State<Mycard> createState() => _MycardBalanceState();
}

class _MycardBalanceState extends State<Mycard> {
  int currentPageIndex = 0;
  late PageController controller;
  // late Timer time;
  @override
  void initState() {
    controller = PageController();
    // time = Timer.periodic(Duration(seconds: 3), (Timer time) {
    //   if (currentPageIndex < 2) {
    //     currentPageIndex++;
    //   } else {
    //     currentPageIndex = 0;
    //   }
    //   controller.animateToPage(
    //     currentPageIndex,
    //     duration: Duration(seconds: 1),
    //     curve: Curves.easeIn,
    //   );
    //   setState(() {});
    // });

    controller.addListener(() {
      currentPageIndex = controller.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // time.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 20),
        MyCardBalanceDetailsPageView(controller: controller),
        SizedBox(height: 16),
        CardDoitsList(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
