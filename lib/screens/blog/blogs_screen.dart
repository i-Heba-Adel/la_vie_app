import 'package:flutter/material.dart';
import 'package:la_vie/screens/blog/one_blog_screen.dart';
import 'package:la_vie/shared/database_sql/database_sqlite.dart';

import '../../shared/style/color.dart';

class BlogsScreen extends StatefulWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {

  SqlDb sqlDb = SqlDb();

  Future <List<Map>> readData() async{
    List<Map> response = await sqlDb.readData(
      """
        SELECT * FROM 'blogs'
      """
    );
    return response;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(
          252,
          252,
          245,
          1
      ),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
          backgroundColor: Color.fromRGBO(
              252,
              252,
              245,
              1
          ),
        title: Text(
            'Blogs',
          style: TextStyle(
            color: blackColor
          ),
        ),
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: readData(),
            builder: (BuildContext context , AsyncSnapshot<List<Map>> snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context ,i){
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context ,
                          MaterialPageRoute(
                            builder: (cont)=> OneBlogScreen(
                                imagePath: '${snapshot.data![i]['image']}',
                                nameOfBlog: '${snapshot.data![i]['name']}',
                                descriptionOfBlog: '${snapshot.data![i]['description']}'
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20 , right: 20, left: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: <BoxShadow> [
                              BoxShadow(color: gray6fColor , blurRadius: 4.0 ,offset: Offset(1 , 1)),
                            ],
                            color: whiteColor,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                    '${snapshot.data![i]['image']}'
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Text(
                                        '2 days ago',
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 6.0),
                                      child: Text(
                                        '${snapshot.data![i]['name']}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: blackColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${snapshot.data![i]['description']}',
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: gray6fColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
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
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
