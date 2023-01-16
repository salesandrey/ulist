



import 'package:ulistproject/modules/add_list/add_list_store.dart';
import 'package:ulistproject/modules/list_manager/list_manager_store.dart';

class ValidatorUpdateViewModel {


  bool validateFields({required ManagerListStore store}) {


    if(store.name.isEmpty) {
      store.setNameValide(true);
      store.setErroMessageName("o campo nome não pode ser vazio");
    } else {store.setNameValide(false);store.setErroMessageName("");}

    if(store.description.isEmpty) {
      store.setDescriptionValide(true);
      store.setErroMessageDescription("o campo descrição não pode ser vazio");

    } else {store.setDescriptionValide(false);store.setErroMessageDescription("");}

    if(store.nameValide || store.descriptionValide) return false;


    return true;

  }

}