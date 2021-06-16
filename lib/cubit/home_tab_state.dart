part of 'home_tab_cubit.dart';

@immutable
abstract class HomeTabState extends Equatable {}

class TabChanged extends HomeTabState {
  final HomeTabs tab;

  TabChanged(this.tab);

  @override
  List<Object?> get props => [UniqueKey()];
}
