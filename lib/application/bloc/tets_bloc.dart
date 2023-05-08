import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tets_event.dart';
part 'tets_state.dart';
part 'tets_bloc.freezed.dart';

class TetsBloc extends Bloc<TetsEvent, TetsState> {
  TetsBloc() : super(_Initial()) {
    on<TetsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
