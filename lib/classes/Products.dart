import 'package:food_ring/classes/DummyData.dart';

class Products{
final String pId;
final String rId;
final String pimageUrl;
final String pName;
final String pDescription;
final double pSalePrice; 
final int quantity;
final double pRegularPrice;
final List<String> categories;

const Products({

required this.pId,
required this.rId,
required this.pName,
required this.pDescription,
required this.pRegularPrice,
required this.pSalePrice,
required this.quantity,
required this.pimageUrl,
required this.categories,
});
}



int ReviewCount(String productId){
int ReviewsCount=0;
for(int i=0;i<ReviewsData.length;i++){
  if(ReviewsData[i].ProductId==productId){
ReviewsCount++;}}
return ReviewsCount;
}


double Calculate_OverallRating(String productId){
int total=0;
double stars = 0.0;
double OverallStars=0.0;

for(int i=0;i<ReviewsData.length;i++){
  if(ReviewsData[i].ProductId==productId){
    stars=stars+ReviewsData[i].Stars;
    total++;
    }
    else{}
 }
  OverallStars=stars/total;
return OverallStars;
}

bool Reviewsfor(int i,String ProductId){

bool  indexofreview=false;
//for(int i=0;i<ReviewsData.length;i++){
if(ReviewsData[i].ProductId==ProductId){
 // indexofreview=i;
  indexofreview=true;
}
else{
 // indexofreview=0;
  //  Skip This !!!
}
return indexofreview;
}

