import 'package:flutter/material.dart';


class DetailProduk extends StatelessWidget {
  const DetailProduk({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Image.asset(
                    'assets/swerpo2.png',
                    width: MediaQuery.of(context).size.width / 1.7,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      'SPECS SWERVO',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'HYDRA MARBLE PRO IN - BLACK / BRIGHT RED / VIBRANT YELLOW',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Poin & Shot',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Futsal shoes for pro athlete recommended for midfilder / winger.\nUPPER : Lightweight syntetic upper with hi quality print INSOLE : die cut EVA Sockliner with textile cover for dry & fit feeling \nOUTSOLE : high grip rubber with cushioning dirrect injection EVA OTHERS : Burito construction with lace for fit and comfort',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Poin & Shot',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Nam vitae eros ut nibh ornare commodo. \nNullam cursus venenatis magna, et porta mauris. Mauris consectetur rhoncus justo. Vivamus luctus mauris nec molestie egestas. Sed eu porttitor erat, id facilisis orci.',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border(
                  top: BorderSide.none,
                ),
              ),
               width: 394,
              height: 53,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$49.00',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xfff8FCEB4),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff8FCEB4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                          Navigator.pushNamed(context, '/itemket-details');
                      },
                      child: Text(
                        'Buy',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
  }
}