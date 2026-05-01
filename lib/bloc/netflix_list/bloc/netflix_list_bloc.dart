import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:netflix_api/repository/api/Netflix_List_Api.dart';
import 'package:netflix_api/repository/models/netflix_models.dart';

part 'netflix_list_event.dart';
part 'netflix_list_state.dart';

class NetflixListBloc extends Bloc<NetflixListEvent, NetflixListState> {
  NetflixListApi netflixListApi = NetflixListApi();
  late List<NetflixListModel> netflixListModel;


  NetflixListBloc() : super(NetflixListInitial()) {
    on<NetflixListEvent>((event, emit) async {
      emit (NetflixListBlocLoading());
      try {
        netflixListModel = await netflixListApi.getnetflix();
        print('****************************');
        emit(NetflixlistBlocLoaded());
        print('***********Loaded***********');
      }
      catch(e) {
        print(e);
        emit(NetflixListBlocError());
      }
      // TODO: implement event handler
    });
  }
}
