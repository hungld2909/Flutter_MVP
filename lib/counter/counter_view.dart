
import 'package:flutter_demo_mvp/mvp/mvp_view.dart';

abstract class CounterView extends MvpView{
  void onIncrement(int value);
  void onDecrement(int value);
}
//counter_view sẽ là 1 cái interface sẽ extends từ Mvp_view
// ỏ đây sẽ chưa method trickger để tương tác với cái view của mình.