import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class CustomTextFieldPasswordHiddenCubit extends Cubit<bool> {
  CustomTextFieldPasswordHiddenCubit() : super(false);

  onSwitch() => emit(!state);

}
