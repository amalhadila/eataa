import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eataa/features/home/data/models/cat_model.dart';
import 'package:meta/meta.dart';

part 'fetch_data_state.dart';

class FetchDataCubit extends Cubit<FetchDataState> {
  FetchDataCubit( ) : super(FetchDataInitial());
   
  Future<void> getCountryData({String? countryName,required String category}) async {


    print('object');
    print(countryName);
    emit(FetchDataloading());
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      QuerySnapshot querySnapshot = await firestore
          .collection("charities")
          .doc(countryName)
          .collection(category)
          .get();
      
      print("Documents found: ${querySnapshot.docs.length}");

      if (querySnapshot.docs.isNotEmpty) {
        List<CategoryModel> charities = querySnapshot.docs.map((doc) {
          print("Document Data: ${doc.data()}");
          return CategoryModel.fromMap(doc.data()as Map<String, dynamic>);
        }).toList();
        print('544444444444444444444444');
print(charities);
        print("Fetched charities: $charities");

        emit(FetchDatasuccess(charities)); // إرسال البيانات مع الحالة
      } else {
        print("No data found");
        emit(FetchDatafailure(errmessage: 'No data found'));
      }
    } catch (e) {
      print("Error fetching data: $e");
      emit(FetchDatafailure(errmessage: e.toString()));
    }
  }
}
