part of 'netflix_list_bloc.dart';

@immutable
sealed class NetflixListEvent {}
class FetchNetflixListEvent extends NetflixListEvent{}