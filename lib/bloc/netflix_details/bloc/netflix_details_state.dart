part of 'netflix_details_bloc.dart';

@immutable
sealed class NetflixDetailsState {}

final class NetflixDetailsInitial extends NetflixDetailsState {}
class NetflixDetailsBlocLoading extends NetflixDetailsState {}
class NetflixDetailsBlocLoaded extends NetflixDetailsState {
  final NetflixDetailsModel movie ;
  NetflixDetailsBlocLoaded ({required this.movie});
}
class NetflixDetailsBlocError extends NetflixDetailsState {}
