part of 'netflix_list_bloc.dart';

@immutable
sealed class NetflixListState {}

final class NetflixListInitial extends NetflixListState {}
class NetflixListBlocLoading extends NetflixListState{}
class NetflixlistBlocLoaded extends NetflixListState{}
class NetflixListBlocError extends NetflixListState{}
