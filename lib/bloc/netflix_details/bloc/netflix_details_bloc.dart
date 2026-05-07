import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:netflix_api/repository/api/netflix_details_api.dart';
import 'package:netflix_api/repository/models/netflix_details_model.dart';

part 'netflix_details_event.dart';
part 'netflix_details_state.dart';

class NetflixDetailsBloc extends Bloc<NetflixDetailsEvent, NetflixDetailsState> {
  NetflixDetailsApi netflixDetailsApi = NetflixDetailsApi();
  late List<NetflixDetailsModel> netflixDetailsModel;
  NetflixDetailsBloc() : super(NetflixDetailsInitial()) {
    on<FetchNetflixDetailsEvent>((event, emit) async {
      emit (NetflixDetailsBlocLoading());
      try {
        netflixDetailsModel = await netflixDetailsApi.getNetflixDetails(event.id);
        print('***********************************');
        print("TRAILER FROM BLOC : ${netflixDetailsModel.first.trailer}");
        emit(NetflixDetailsBlocLoaded(movie:netflixDetailsModel.first));
        print('**************Loaded**************');
      } catch (e) {
        print(e);
        emit(NetflixDetailsBlocError());
      }
      // TODO: implement event handler
    });
  }
}
