import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0); // يبدأ التطبيق من الصفحة الأولى

  void changeBottomNav(int index) {
    emit(index); // تغيير المؤشر عند الضغط على عنصر في الـ BottomNavigationBar
  }
}
