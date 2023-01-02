import 'package:flutter/material.dart';

import '../widgets/icon_botton.dart';

class DetailsScreen extends StatefulWidget {
  static const screenRoute='/details';
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    int count;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Container(
                  height: 43,
                  width: 43,
                  padding: EdgeInsets.only(left: 5),
                  child: IconButton(icon: Icon(Icons.arrow_back_ios,
                  color: Colors.blue,),onPressed: (){
                    Navigator.pop(context);
                  },),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue,width: 2)
                  ),
                  
                ),
                Spacer(),
              
                Text('Details',style: TextStyle(color: Colors.grey,fontSize: 30),),
                Spacer(),
                 Container(
                  height: 43,
                  width: 43,
                  padding: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.greenAccent,width: 2)
                  ),
                  child: IconButton(icon: Icon(Icons.segment,
                  color: Colors.greenAccent , size: 29 ,),onPressed : (){},),
                ),
                SizedBox(width: 30,)
              ],),
              SizedBox(height: 30,),
        
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Stack(children: [
           
            Container(
              child: Image.asset('images/lona.png'),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blue,
            borderRadius: BorderRadius.circular(10)),
          ), Padding(
            padding: const EdgeInsets.only(left: 270,top: 20),
            child:   Container(
            child: IconButton(icon: Icon(Icons.favorite_border,size: 29,color: Colors.greenAccent,),onPressed: (){},),
                height: 43,
            
                width: 43,
            
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
            
              ),
          ),],),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text('Best food lona',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        ),
        Text('Luna always strives to develop its products in order to meet your needs ... Luna Strawberry Flavored Milk 190 g ... For more information about Lunas various products.',style: TextStyle(fontSize: 17,color: Colors.grey),)
        , Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      size: 33,
                      color: Colors.greenAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 33,
                      color: Colors.greenAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 33,
                      color: Colors.greenAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 33,
                      color: Colors.greenAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 33,
                      color: Color.fromARGB(255, 166, 236, 233),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      '4.0',
                      style: TextStyle( fontSize: 24,color: Colors.black38),
                    ),
                    
                    Spacer()
                  ],
                ),
        ),
               Container(
                 
                    height: 60,
                    
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        IconBotton(
                            icon: Icon(
                              Icons.star,
                              color: Colors.lightBlueAccent,
                              size: 29,
                            ),
                            title: 'star'),
                        IconBotton(
                            icon: Icon(
                              Icons.food_bank,
                              color: Colors.lightBlueAccent,
                              size: 29,
                            ),
                            title: 'foof bank'),
                        IconBotton(
                            icon: Icon(
                              Icons.help,
                              color: Colors.lightBlueAccent,
                              size: 29,
                            ),
                            title: 'help'),
                        IconBotton(
                            icon: Icon(
                              Icons.liquor,
                              color: Colors.lightBlueAccent,
                              size: 29,
                            ),
                            title: 'crogrey'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 2)
                        ,borderRadius: BorderRadius.circular(10)),
                        child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [InkWell(
                            onTap: () {
                              
                            },
                            child: InkWell(
                              onTap: () {
                              
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  width: 17,
                                  height: 0,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                                ),
                              ),
                            ),
                          ),
                        Text('2',style: TextStyle(fontSize: 20),) ,InkWell(onTap: () {
                     
                        },
                          child: Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                              child: Icon(Icons.add,size: 29,color: Colors.blue,),
                            ),
                        ),
                        ],),
                      ),
                      Row(
                      children: [
                        SizedBox(width: 17,),
                        Text(
                          '\$10.00',
                          style: TextStyle(fontSize: 20),
                        ),
                         SizedBox(width: 12,),
                        TextButton(
                            onPressed: () {},
                            child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  'Add to card',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),

                            )),
                         
                      ],
                    ),
                   Spacer() ],),
                  ),
                  SizedBox(height: 30,)
            ],),
          ),
        ),
      ),
      
    );
  }
}