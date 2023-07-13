import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';



class YanPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPage>{
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
      Navigator.push(context, MaterialPageRoute(builder:(context)=> Diller() ));
    }, icon: Icon(Icons.language),color: Colors.white,)
   ],),
      );
    
       
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
        image: DecorationImage(image: AssetImage("images/ayasofya3.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Ayasofya",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Sultan Ahmet, Ayasofya Meydanı No:1, 34122 Fatih/İstanbul",
        style: TextStyle(fontSize: 11),),

        ],),SizedBox(height: 10,),Row(
          children: [Text("Tanım",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 5,),Column(children: [Text("Ayasofya aynı yere üç kez inşa edilmiş bir eserdir. Günümüzdeki Ayasofya “Üçüncü Ayasofya” olarak bilinmektedir. Ayasofya’nın ilk inşaatı Hıristiyanlığı Roma İmparatorluğu’nun resmi dini olarak kabul eden I. Konstantin döneminde başlatılmıştır. İstanbul’un yedi tepesinden birincisi üzerinde ahşap çatılı bir bazilika olarak inşa edilen ve o dönemde ‘Büyük Kilise’ ismiyle anılan bu yapının açılışı, 360 yılında II. Konstantin döneminde gerçekleşmiştir. 404 yılında başlayan isyanda çıkan bir yangın neticesinde büyük ölçüde harap olan bu yapıdan günümüze ulaşan bir kalıntı bulunmamaktadır.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
