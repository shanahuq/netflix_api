part of 'netflix_list_bloc.dart';

@immutable
sealed class NetflixListState {}

final class NetflixListInitial extends NetflixListState {}
class NetflixListBlocLoading extends NetflixListState{}
class NetflixlistBlocLoaded extends NetflixListState{
  final List<NetflixListModel> data;
  NetflixlistBlocLoaded(this.data);
}
class NetflixListBlocError extends NetflixListState{}
