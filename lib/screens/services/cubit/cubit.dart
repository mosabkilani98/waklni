import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakelni/screens/services/cubit/servicesstates.dart';

class ServiceCubit extends Cubit<ServiceState> {
  ServiceCubit() : super(InitialState());
  static ServiceCubit get(context) => BlocProvider.of(context);
  int counetr = 1;
}
