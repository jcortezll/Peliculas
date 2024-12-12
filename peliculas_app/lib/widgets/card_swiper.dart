import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height*0.5,
      padding: const EdgeInsets.only(top: 10),
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.6,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/details'),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'), 
                  image: AssetImage('assets/no-image.jpg'), 
                  //image: NetworkImage('https://via.placeholder.com/300x400'),
                  fit: BoxFit.fill,
                ),
            ),
          );
        },
      ),
    );
  }
}