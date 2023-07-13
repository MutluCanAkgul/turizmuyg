import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';

class Galataa extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Galataa();   

}
class _Galataa extends State<Galataa>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Star Tourism',style: TextStyle(color: Colors.white)),
        
      ),body: Galata(),bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
   animationDuration: Duration(milliseconds: 300),onTap:(index){

   },items: [
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home() ));
    }, icon: Icon(Icons.home),color: Colors.white,),
    IconButton(onPressed:(){}, icon: Icon(Icons.search),color: Colors.white,),
    
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Diller() ));
    }, icon: Icon(Icons.language),color: Colors.white,)
   ],),
   );
  }
}

class Galata extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Galata();
}
class _Galata extends State<Galata>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.maxFinite,
      height: double.maxFinite,child: Stack(children: [ Positioned(left: 0,right: 0,child: Container(
      width: double.maxFinite,height: 270,decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/galata2.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Galata Kulesi",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Bereketzade, Galata Kulesi, 34421 Beyoğlu/İstanbul",
        style: TextStyle(fontSize: 13),),

        ],),SizedBox(height: 10,),Row(
          children: [Text("Tanım",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 5,),Column(children: [Text("Galata Kulesi, Bizans İmparatorluğu döneminde, Galata semtinin Ceneviz kolonisi olduğu on dördüncü yüzyıl ortalarında, Cenevizliler tarafından, Galata surlarının bir parçası olarak inşa edilmiştir. Osmanlı döneminde bir süre zindan olarak kullanıldıktan sonra, yangın gözetleme kulesine çevrilmiştir. Zaman zaman deprem ve yangınlarla tahrip olan kule, Osmanlı döneminde birkaç kez tadilat geçirmiştir. 1960’lı yıllara gelindiğinde bir hayli harap durumda olan kule, İstanbul Belediyesi tarafından restore edilerek ziyarete açılmıştır. Galata Kulesi 2020 yılında Vakıflar Genel Müdürlüğü tarafından yeniden restore edilmiştir.")],)],
       ),
         
      )

      )]),
     ),
    );
  }

}