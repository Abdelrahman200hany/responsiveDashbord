import 'package:dashboard/feature/dashbord/presentation/manager/cubits/chnage_page_view_cubit/change_page_view_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePageViewsCubit extends Cubit <ChangePageViewState>{
  ChangePageViewsCubit() : super(ChangePageViewItinState());

  int currentindex = 0;

  void getCurrentState({required int getCurrentIndex}) {
    currentindex = getCurrentIndex;
    emit(ChangePageViewStateSuccesss());
  }
}
