import 'package:ex_day_2/modules/exercise5/stage_of_listview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPostBloc extends Bloc<String, StageOfListView> {
  ListPostBloc() : super(StageOfListView()) {
    on<String>((event, emit) async {
      switch (event) {
        case "getPost":
          {
            try {
              StageOfListView stage = new StageOfListView();
              await state.getAllPost();
              emit(state);
              break;
            } catch (e) {
              StageOfListView stage = new StageOfListView();
              stage.setError(true, e.toString());
              emit(stage);
               break;
            }
          }
        default:
          {
            StageOfListView stage = new StageOfListView();
            state.setData([]);
            emit(state);
          }
      }
    });
  }
}
