
import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/feature/dashbord/data/models/user_info_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/user_info.dart';
import 'package:flutter/material.dart';

class LatestTransactionList extends StatefulWidget {
  const LatestTransactionList({super.key});

  @override
  State<LatestTransactionList> createState() => _LatestTransactionListState();
}

class _LatestTransactionListState extends State<LatestTransactionList> {
  final List<UserInfoModel> userInfoItem = [
    UserInfoModel(
      imageUrl: Assets.imagesAvatar1,
      title: 'MadraniAndi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      imageUrl: Assets.imagesAvatar2,
      title: 'zeyadHany',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      imageUrl: Assets.imagesAvatar3,
      title: 'moahmedAhmed',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      imageUrl: Assets.imagesAvatar3,
      title: 'moahmedAhmed',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      imageUrl: Assets.imagesAvatar3,
      title: 'moahmedAhmed',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      imageUrl: Assets.imagesAvatar3,
      title: 'moahmedAhmed',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoItem
            .map(
              (e) => Padding(
                padding: EdgeInsets.only(right: 12),
                child: IntrinsicWidth(
                  child: UserInfo(
                    imageUrl: e.imageUrl,
                    title: e.title,
                    subtitle: e.subtitle,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );

    /* SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: userInfoItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 12),
          child: IntrinsicWidth(
            child: UserInfo(
              imageUrl: userInfoItem[index].imageUrl,
              title: userInfoItem[index].title,
              subtitle: userInfoItem[index].subtitle,
            ),
          ),
        ),
      ),
    ); */
  }
}
