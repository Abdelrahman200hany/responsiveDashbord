import 'package:dashboard/feature/dashbord/presentation/view/widgets/my_card_details.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardBalanceDetailsPageView extends StatelessWidget {
  const MyCardBalanceDetailsPageView({super.key, required this.controller});

final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView( 
  
       controller:controller ,
      scrollDirection: Axis.horizontal,
      children:List.generate(3, (context)=>Padding(padding: EdgeInsetsGeometry.only(right: 4) , child:MYCardDetails() ,)) );
  }
}




// class MyCardBalanceDetailsPageView extends StatelessWidget {
//   const MyCardBalanceDetailsPageView({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: PageView.builder(
//         itemBuilder: (context, index) => Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: MYCardDetails(value: index + 1),
//         ),
//         itemCount: 3,
//         scrollDirection: Axis.horizontal,
//       ),
//     );
//   }
// }
