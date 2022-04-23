import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final AppBar appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
      ],
    );
    final double _appBarSize = appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      drawer: const Drawer(),
      body: Column(
        children: [
          Container(
            height:
                (MediaQuery.of(context).size.height / 2) - (_appBarSize * 2),
            padding: const EdgeInsets.symmetric(horizontal: 22),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Track\n',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white)),
                        TextSpan(
                            text: 'your ',
                            style: GoogleFonts.montserrat(
                                fontSize: 24, color: Colors.white)),
                        TextSpan(
                            text: 'Shipment',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white)),
                      ],
                    )),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 0)),
                    Image.asset('assets/images/store1.png',
                        width: 40, height: 40),
                    Image.asset(
                      'assets/images/store2.png',
                      width: 60,
                      height: 30,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Tracking Number',
                          // fillColor: Colors.white
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(),
            child: GridView(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 4,
                mainAxisSpacing: 10,
              ),
              children: [
                Card(
                  child: Container(
                    height: 182,
                    width: 181,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    child: Text('SHIPMENT',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff666666))),
                  ),
                ),
                Card(
                  child: Container(
                    height: 182,
                    width: 181,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    child: Text('TRACKING',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff666666))),
                  ),
                ),
                Card(
                  child: Container(
                    height: 182,
                    width: 181,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    child: Text('MESSAGE',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff666666),
                        )),
                  ),
                ),
                Card(
                  child: Container(
                    height: 182,
                    width: 181,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    child: Text('SETTINGS',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff666666),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
