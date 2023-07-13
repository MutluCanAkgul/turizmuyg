import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';



class YanPage4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPage4>{
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
        image: DecorationImage(image: AssetImage("images/konyalti1.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Konyaaltı Plajı",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Meltem Mh., 07030 Muratpaşa/Konyaaltı/Antalya",
        style: TextStyle(fontSize: 12),),

        ],),SizedBox(height: 1,),Row(
          children: [Text("Tanım",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 2,),Column(children: [Text("Dünyanın en büyük tatlı su traverteni olan Antalya Traverten Platosu'nun güneybatısında, falezlerin geriye çekildiği Konyaaltı Varyantı'ndan Antalya limanına kadar uzanan 7 km uzunluğundaki sahil, Konyaaltı plajıdır. Bu çakıllı sahilin; 4,5 km uzunluk, 70 m genişliğe sahip kısmı mavi bayrak sahibi halk plajıdır. Plajda ücretli ve ücretsiz bölümler bulunur.  Antik devirlerde dağlık alanda yaşayan Termessosluların kullandığı liman kenti Olbia bu sahilde yer alır. Tarihi Olbia kentinin kalıntıları Boğa Çayı'ndan Arapsuyu'na kadar dağılmıştır. Konyaaltı Plajı ve arka planda Bey Dağları Plajın, Antalya kıyılarındaki falezlerin alt tarafında kaldığından koy-altı denildiği, zamanla konyaaltına dönüştüğüne inanılır.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
