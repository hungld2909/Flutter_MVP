import 'package:flutter_demo_mvp/mvp/mvp_view.dart';

class Presenter<T extends MvpView>{
  T view;
  attachView(T view){
    this.view = view;
  // dùng bên hàm main để sử lý memory
  }
  deAttachView(){
    this.view = null;
    // hàm này dùng để hủy quan hệ giữa attachView.
// despose để tránh leak memory.
  }
  T getView(){
    return view;  
    // dùng để lấy ra những cái call, tricker method trong từng cái MvpView
  }
}
// quan hệ của Presenter và MvpView là quan  hệ: 1-1
// trong 1 view k thể sử dụng được nhiều presenter
