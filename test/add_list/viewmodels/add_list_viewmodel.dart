
class AddListViewModel {

  bool validateFields({required String name, required String description}) {

    if (name.isEmpty) {return false;}

    if (description.isEmpty){return false;}

    return true;
  }

}