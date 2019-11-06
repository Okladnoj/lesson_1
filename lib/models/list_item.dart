class ModelItems {
  ModelItems({imax}) {
    getlist();
  }

  static int imax = 3;
  List<String> listitem = [];

  void getlist() {
    for (int _i = 0; _i < imax; _i++) {
      listitem.add('Item $_i');
    }
  }
}
