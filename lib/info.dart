import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:tvprogram/program.dart';
import 'package:provider/provider.dart';
class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        Container(
          padding: EdgeInsets.all(10),

        ),
        Container(
          child: ImageSlideshow(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkabEOUB1Tr_dNRtks1tOMiFuXhDIGy25XA&usqp=CAU"),
              Image.network("https://images.blz-contentstack.com/v3/assets/bltc965041283bac56c/blt25d472f4aa3951e6/5eebd59169a03212218fdc2e/logo.png"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkabEOUB1Tr_dNRtks1tOMiFuXhDIGy25XA&usqp=CAU"),
              Image.network("https://images.blz-contentstack.com/v3/assets/bltc965041283bac56c/blt25d472f4aa3951e6/5eebd59169a03212218fdc2e/logo.png"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkabEOUB1Tr_dNRtks1tOMiFuXhDIGy25XA&usqp=CAU"),
            ],
          ),
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  Provider.of<programProvider>(context,listen:false).name.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  Provider.of<programProvider>(context,listen:false).genre.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  Provider.of<programProvider>(context,listen:false).schedule.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  Provider.of<programProvider>(context,listen:false).summary.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Expanded(
                child:Container(

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.bookmark_border,size: 32,),

                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}