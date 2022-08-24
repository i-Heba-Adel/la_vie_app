import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(
          252,
          252,
          245,
          1
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF8F8F8),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF979797),
                    size: 24,
                  ),
                  label: Text(
                    'Search',
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0 ,
                        color: Colors.cyan
                    ),
                    borderRadius: BorderRadius.circular(
                        5.0
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent searchs',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/image/search/clock.png'
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'GARDENIA PLANT',
                              style: TextStyle(
                                color: Color(0xFF979797),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Image.asset(
                              'assets/image/search/x_icon.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        children: [
                          Image.asset(
                              'assets/image/search/clock.png'
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'GARDENIA PLANT',
                              style: TextStyle(
                                color: Color(0xFF979797),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Image.asset(
                              'assets/image/search/x_icon.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        children: [
                          Image.asset(
                              'assets/image/search/clock.png'
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'GARDENIA PLANT',
                              style: TextStyle(
                                color: Color(0xFF979797),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Image.asset(
                              'assets/image/search/x_icon.png',
                            ),
                          ),
                        ],
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
}
