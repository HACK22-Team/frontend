import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'b_template_event.dart';
part 'b_template_state.dart';

class BTemplateBloc extends Bloc<BTemplateEvent, BTemplateState> {
  BTemplateBloc() : super(BTemplateInitial()) {
    on<BTemplateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
