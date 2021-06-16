import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_tab_state.dart';

enum HomeTabs {
  home,
  cart,
  profile,
  settings,
}

class HomeTabCubit extends Cubit<HomeTabState> {
  HomeTabCubit() : super(TabChanged(HomeTabs.home));

  factory HomeTabCubit.of(BuildContext context, {bool listen = false}) {
    return BlocProvider.of<HomeTabCubit>(context, listen: listen);
  }

  void changeTab(HomeTabs tab) {
    emit(TabChanged(tab));
  }
}
