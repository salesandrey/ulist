


import 'package:ulistproject/modules/add_item/add_item_store.dart';
import 'package:ulistproject/modules/update_item/update_item_store.dart';

class ItemValidateViewModel{


  bool validateFields({required AddItemStore store}) {


    if(store.name.isEmpty) {
      store.setNameValide(true);
      store.setErroMessageName("o campo nome não pode ser vazio");
    } else {store.setNameValide(false);store.setErroMessageName("");}

    if(store.nameValide) return false;


    return true;

  }

  bool validateFieldUpdate({required UpdateItemStore store}) {


    if(store.name.isEmpty) {
      store.setNameValide(true);
      store.setErroMessageName("o campo nome não pode ser vazio");
    } else {store.setNameValide(false);store.setErroMessageName("");}

    if(store.nameValide) return false;


    return true;

  }


}