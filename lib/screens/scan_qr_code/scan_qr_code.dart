import 'package:flutter/material.dart';
import 'package:la_vie/shared/style/color.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQRCodeScreen extends StatefulWidget {
  const ScanQRCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScanQRCodeScreen> createState() => _ScanQRCodeScreenState();
}

class _ScanQRCodeScreenState extends State<ScanQRCodeScreen> {

  var height, width;
  var qrStr = 'Can read this';

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;


    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: (){
            // scanQr();
          },
        )
        ),
    );
  }
  // Future <void> scanQr() async {
  //   try{
  //     FlutterBarcodeScanner.scanBarcode(whiteColor , 'cancel' , true , ScanMode.QR).then(value){
  //       setState(() {
  //         qrStr = value;
  //       });
  //     }
  //   }catch(e){
  //     setState(() {
  //       qrStr = "Can't read this QR Code";
  //       print(qrStr);
  //     });
  //   }
  // }


}
