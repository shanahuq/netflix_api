part of 'netflix_details_bloc.dart';

@immutable
sealed class NetflixDetailsEvent {}
class FetchNetflixDetailsEvent extends NetflixDetailsEvent {
  final String id;
  FetchNetflixDetailsEvent({required this.id});
}
