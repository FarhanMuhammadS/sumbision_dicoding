import 'package:flutter/material.dart';
import 'package:shoes/detail_produk.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right: 30,),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
            Text(
              'Selamat datang di farstore',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            Text(
              'Nikmati promo', 
            style: TextStyle(
              fontSize: 16, 
              color: Colors.black,
            ),
           ),
          ],
         )
        ],
      ),
    );
  }

  Widget category() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 25,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10,),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
              ),
              child: Text(
                'All Shoes',
                style: TextStyle(
                  fontSize: 13,
                   color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10,),
               margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              ),
              child: Text(
                'Running',
                style: TextStyle(
                  fontSize: 13,
                   color: Colors.blueGrey,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10,),
               margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              ),
              child: Text(
                'SepakBola',
                style: TextStyle(
                  fontSize: 13,
                   color: Colors.blueGrey,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10,),
               margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              ),
              child: Text(
                'Casual',
                style: TextStyle(
                  fontSize: 13,
                   color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget produkCard () {
    return Card(
      shadowColor: Colors.white,
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Image.asset(
                'assets/swervo1.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'SPECS SWERVO HYDRA MARBLE PRO IN ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Bandung, Jawabarat',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$450,00',
                    style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }


    return ListView(
       children: [
         header(),
         category(),
         produkCard(),
         SizedBox(height: 6,),
         produkCard(),
         SizedBox(height: 6,),
         produkCard(),
       ],
    );
  }
}