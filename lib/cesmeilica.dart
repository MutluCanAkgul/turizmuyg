import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';



class YanPage10 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPage10>{
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
        image: DecorationImage(image: AssetImage("images/cesmeılıca2.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Çeşme Ilıcaları",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Çeşme/İzmir",
        style: TextStyle(fontSize: 14),),

        ],),SizedBox(height: 5,),Row(
          children: [Text("Tanım",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 2,),Column(children: [Text("Çeşme Kaplıcaları arasında Şifne ve Ilıca kaplıcaları yer almaktadır. Bu iki grup arasından Şifne Kaplıcaları, Çeşme yarımadasının kuzeyinde yer alan Şifne Körfezi’nde konumlanmaktadır. Kaplıcalara İzmir şehir merkezinden 80 km’lik bir yoldan sonra Çeşme’ye ulaşarak kolaylıkla varmak mümkündür. Bu kaplıcaların termal su özellikleri 42 ve 49 derece, berrak, sodyum klorür ve kalsiyumlu olmasıdır. Şifne Kaplıcalarının suları ise romatizma, kadın hastalıkları, idrar yolu rahatsızlıkları, mide ve bağırsak rahatsızlıkları, raşitizm ve egzama ya da sedef gibi deri rahatsızlıklarına da iyi geldiği bilinmektedir. Burada pek çok konaklama tesisi, restoran ve kafe hizmeti de bulunmaktadır.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
