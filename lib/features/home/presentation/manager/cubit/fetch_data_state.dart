part of 'fetch_data_cubit.dart';

@immutable
sealed class FetchDataState {}

final class FetchDataInitial extends FetchDataState {}

final class FetchDataloading extends FetchDataState {}

final class FetchDatasuccess extends FetchDataState {
  final List<CategoryModel> countries;
  
  FetchDatasuccess(this.countries);
}

final class FetchDatafailure extends FetchDataState {
  final String errmessage;
  
  FetchDatafailure({required this.errmessage});
}
