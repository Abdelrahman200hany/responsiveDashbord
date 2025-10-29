import 'package:dashboard/feature/dashbord/presentation/view/widgets/doits_item.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class CardDoitsList extends StatelessWidget {
  const CardDoitsList({super.key, required this.currentPageIndex});




final int currentPageIndex ;

  @override
  Widget build(BuildContext context) {
     
        return Row(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: DoitsItem(currentIndex:  currentPageIndex== index),
            ),
          ),
        );
    
  
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ChangePageViewsCubit, ChangePageViewState>(
//       builder: (context, state) {
//         int currentindex = BlocProvider.of<ChangePageViewsCubit>(
//           context,
//         ).currentindex;
//         return Row(
//           children: List.generate(
//             3,
//             (index) => Padding(
//               padding: const EdgeInsets.only(right: 8),
//               child: DoitsItem(currentIndex: currentindex == index),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
