import 'package:flutter/material.dart';
import '../../shared/database_sql/database_sqlite.dart';
import '../../shared/style/color.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

  File ? image;
  bool flag = false;
  final imagePicker = ImagePicker();
  SqlDb sqlDb = SqlDb();
  TextEditingController postTitle = TextEditingController();
  TextEditingController postDescription = TextEditingController();

  uploadImage() async{
    var pickedImageFromCamera = await imagePicker.getImage(source: ImageSource.gallery);
    // var pickedImageFromGallery = await imagePicker.getImage(source: ImageSource.gallery);
    if(pickedImageFromCamera != null){
      setState(() {
        flag = true;
        image = File(pickedImageFromCamera.path);
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(
            252,
            252,
            245,
            1
        ),

        centerTitle: true,
        title: Text(
          'Create New Post',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: (){
                    uploadImage();
                  },
                  child: Container(
                    width: 136,
                    height: 136,
                    child: !flag ? Image.asset(
                      'assets/image/post/add_photo.png',
                    ) : Image.file(image!),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: <BoxShadow> [
                        BoxShadow(color: primaryColor , blurRadius: 4.0 , offset: Offset(0.0,0.0)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Title',
                        style: TextStyle(
                            color: gray6fColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    TextField(
                      controller: postTitle,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2.0 ,
                              color: gray93Color
                          ),
                          borderRadius: BorderRadius.circular(
                              5.0
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: gray6fColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextField(
                      controller: postDescription,
                      minLines: 6,
                      maxLines: 8,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2.0 ,
                              color: gray93Color
                          ),
                          borderRadius: BorderRadius.circular(
                              5.0
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () async{

                          int response = await sqlDb.insertData("""
                            INSERT INTO 'posts' (photo , title , description , userId)
                            VALUES ('${image!.path}' , '${postTitle.text}' , '${postDescription.text}' , 1);
                          """);
                          print(response);
                          List<Map> r = await sqlDb.readData("""SELECT * FROM 'posts'""");
                          print(r);
                        },
                        color: primaryColor,
                        height: 54,
                        child: Text(
                          'Post',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: whiteColor
                          ),
                        ),
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
