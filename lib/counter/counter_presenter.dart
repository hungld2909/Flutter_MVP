import 'package:flutter_demo_mvp/counter/counter_view.dart';
import 'package:flutter_demo_mvp/mvp/presenter.dart';

class CounterPresenter extends Presenter<CounterView>{
  // kế thừa Presenter và Counterview.

  int count = 0; // khởi tạo thông số ban đầu của count = 0;
  increment(){
    count ++; // 
    getView().onIncrement(count);
  }

  decrement(){
    count--;
    getView().onDecrement(count);
  }
}