import 'package:flutter/material.dart';
import 'package:shoes/detail_produk.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Cari Produk',
          ),
          Image.asset(
            'assets/search2.png',
            width: 30,
            height: 30,
          ),
        ],
      );
    }

    Widget produkCard() {
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
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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

    Widget produkCard2() {
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
                  'assets/swervo_bola.jpg',
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
                        'SPECS SWERVO HYDRA MARBLE PRO FG',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Ciwidey, Jawabarat',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '\$550,00',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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

    Widget produkCard3() {
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
                  'assets/running_specs.jpg',
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
                        'SKYFLEET-BLACK/LAPIS BLUE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Soreang, Jawabarat',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '\$Rp.359.840',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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

    return Scaffold(
      appBar: AppBar(
        title: title(),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          produkCard(),
          produkCard2(),
          produkCard3(),
          produkCard(),
          produkCard2(),
          produkCard(),
        ],
      ),
    );
  }
}
