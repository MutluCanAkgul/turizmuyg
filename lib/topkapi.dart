import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';



class YanPage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage1();


}
class _YanPage1 extends State<YanPage1>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Star Tourism',style: TextStyle(color: Colors.white),),
        
      ),body: Icerik(),bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
   animationDuration: Duration(milliseconds: 300),onTap:(index){

   },items: [
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home() ));
    }, icon: Icon(Icons.home),color: Colors.white,),
    IconButton(onPressed:(){}, icon: Icon(Icons.search),color: Colors.white,),
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Diller() ));
    }, icon: Icon(Icons.language),color: Colors.white,)
   ],),);
    //buraya favorilerim butonu eklenecek firebase işemi yazılacak
       
  }
}
class Icerik extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Icerik(); 
}

class _Icerik extends State<Icerik>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
      width: double.maxFinite,
      height: double.maxFinite,child: Stack(children: [ Positioned(left: 0,right: 0,child: Container(
      width: double.maxFinite,height: 270,decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/topkapı3.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Topkapı Sarayı",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Cankurtaran Mah. Babı Hümayun Cad. No: 1 Sultanahmet/Fatih",
        style: TextStyle(fontSize: 11),),

        ],),SizedBox(height: 10,),Row(
          children: [Text("Tanım",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 5,),Column(children: [Text("Topkapı Sarayı, İstanbul’un en eski tarihî bölgelerinden birinde yer alır. Marmara Denizi, İstanbul Boğazı ve Haliç arasında kalan tarihî İstanbul Yarımadası’nda bulunan saray, İstanbul’un ikonik yapılarından biridir. Sarayburnu’nda bulunan Doğu Roma akropolü üzerindeki 700.000 metrekarelik bir alan üzerine kurulmuş olan Topkapı Sarayı, 31. Osmanlı padişahı Sultan Abdülmecid’e kadar yaklaşık dört yüz yıl süreyle imparatorluğun idare, eğitim ve sanat merkezi; padişahların da ikametgâhı olmuştur. 19. yüzyılın ortalarından itibaren hanedanın Dolmabahçe Sarayı’na taşınması ile terk edilen Topkapı Sarayı, tarihî önemini ve değerini korumuştur.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
