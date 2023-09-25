import 'package:food_ring/classes/DummyData.dart';

class Resturants {
  final String rId;
  final String rimageUrl;
  final String rtitle;
  final String rdescription;
  final String rlocation;
  final double rMinDelivery;

  const Resturants(
      {required this.rId,
      required this.rimageUrl,
      required this.rtitle,
      required this.rdescription,
      required this.rlocation,
      required this.rMinDelivery});
}

Object Productsof(String index){
  var ProductsFinal = [];
  int count=0;

  for(int i=0;i<ProductsData.length;i++){
    if(ProductsData[i].rId==index){
      ProductsFinal[count]=i;
      count++;
    }
    else{
    }
  }

return ProductsFinal;
}
