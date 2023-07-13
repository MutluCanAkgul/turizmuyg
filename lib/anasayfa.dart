import 'package:turizmuyg/allianoi.dart';
import 'package:turizmuyg/bodrum.dart';
import 'package:turizmuyg/didim.dart';
import 'package:turizmuyg/dilekyarimada.dart';
import 'package:turizmuyg/efes.dart';
import 'package:turizmuyg/fethiye.dart';
import 'package:turizmuyg/kaleici.dart';
import 'package:flutter/material.dart';
import 'package:turizmuyg/ayasofya.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turizmuyg/galata.dart';
import 'package:turizmuyg/kusadas%C4%B1.dart';
import 'package:turizmuyg/milasuyku.dart';
import 'package:turizmuyg/nebiler.dart';
import 'package:turizmuyg/olimpos.dart';
import 'package:turizmuyg/pitane.dart';
import 'package:turizmuyg/sakligol.dart';
import 'package:turizmuyg/saklikentkaynon.dart';
import 'package:turizmuyg/side.dart';
import 'package:turizmuyg/topkapi.dart';
import 'package:turizmuyg/kizkulesi.dart';
import 'package:turizmuyg/sultanahmet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';
import 'package:turizmuyg/konyalti.dart';
import 'package:turizmuyg/duden.dart';
import 'package:turizmuyg/cesmeilica.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Home();
}

class _Home extends State<Home>{
 final db=FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(backgroundColor: Colors.lightBlue,
      centerTitle: true,
      title: Text('Star Tourism',style:TextStyle(color: Colors.white)),
     

      
    ),body:StreamBuilder<QuerySnapshot>(
    stream: db.collection("Sehirler").snapshots(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        
        return SingleChildScrollView(
         child:Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children:
      [Text("Şehirler",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 30),),
        SizedBox(height: 15,),Text("İstanbul",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),PhotoPicture(),SizedBox(height: 15,),
        Text("Antalya",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),AntalyaHomePage(),SizedBox(height: 15,),
        Text("İzmir",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),IzmirHomePage(),SizedBox(height: 15,),
        Text("Muğla",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),MuglaHomePage(),SizedBox(height: 15,),
        Text("Aydın",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),AydinHomePage(),SizedBox(height: 11,)]),),
    
        );
      } else if (snapshot.hasError) {
        return Text("Veriler alınırken bir hata oluştu.");
      } else {
        return Center(child: CircularProgressIndicator(),);
      }
    },
  ),bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
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

class PhotoPicture extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _PhotoPicture();

}
class _PhotoPicture extends State<PhotoPicture>{


  @override
  Widget build(BuildContext context) {
    
      return Container(margin: const EdgeInsets.symmetric(vertical: 5),height: 220.0, child: ListView(
        scrollDirection: Axis.horizontal,children:<Widget> [
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  YanPage(
              
            )));
          },child: Container(child: Stack(
            children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/ayasofya3.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Ayasofya",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),  ],
                ),)
        ],),),),SizedBox(width:5 ,),GestureDetector(onTap:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>Galataa() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/galata2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Galata Kulesi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 5,),GestureDetector(onTap:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage1() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/topkapı3.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Topkapı Sarayı",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),GestureDetector(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage2() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/kızkulesi1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Kız Kulesi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),GestureDetector(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage3() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/sultanahmet3.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Sultanahmet",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
        
      );
    }
    
  
    


  }


class AntalyaHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _AntalyaHomePage();


}
class _AntalyaHomePage extends State<AntalyaHomePage>{

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical: 5),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage4() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/konyalti1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Konyaltı Plajı",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage5() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/kaleici3.jfif",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Kaleiçi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage6() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/düden2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Düden Şelalesi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage7() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/olimpos1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Olimpos",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage8() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/side1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Side",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
    );


  }
}

class IzmirHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _IzmirHomePage();


}

class _IzmirHomePage extends State<IzmirHomePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage9() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/efes1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Efes Antik Kenti",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage10() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/cesmeılıca2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 141, 134, 134)),child: Text("Çeşme Ilıcaları",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage11() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/nebiler1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 141, 133, 133)),child: Text("Nebiler Şelalesi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage12() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/allianoi1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 167, 150, 150)),child: Text("Alliano Antik Kenti",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage13() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/pitane1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Pitane Kalesi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
    );



  }
}
class MuglaHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MuglaHomePage();
}
class _MuglaHomePage extends State<MuglaHomePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage14() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/fethiye2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Fethiye",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage15() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/Saklikent-Kanyonu1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Muğla Saklıkent Kanyonu",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage16() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/bodrum1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 114, 104, 104)),child: Text("Bodrum",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPage17() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/marmaris-saklıgöl2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Marmaris Saklıgöl",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> YanPage18() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/milasuykuvadisi1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Milas Uyku Vadisi",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
    );

  }
}
class AydinHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _AydinHomePage();

}
class _AydinHomePage extends State<AydinHomePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 220.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> YanPage19() ) );
            },
              child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/kusadası2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Kuşadası",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),
                  ],
                ),)
              ],),
            ),SizedBox(width: 10,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> YanPage20() ) );
            },
              child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/didim.jfif",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Didim",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),
                  ],
                ),)
              ],),
            ),SizedBox(width: 10,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> YanPage21() ) );
            },
              child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/dilekyarımada1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Dilek Yarımadası",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),
                  ],
                ),)
              ],),
            ),
          ], ));


  }
}