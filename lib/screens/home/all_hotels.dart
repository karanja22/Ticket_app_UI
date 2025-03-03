import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/utils/at_json.dart';
import 'package:ticket_app/screens/home/hotel_detail.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        backgroundColor: AppStyles.bgcolor,
        title: Center(child: Text("All Hotels")),
      ),
      body: GestureDetector(
        onTap:() {
          Navigator.pushNamed(context, AppRoutes.hotelDetail);
        },
        child: Container(
          margin: EdgeInsets.only(left: 8),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: hotelList.length,
              itemBuilder: (context, index){
                var singleHotel = hotelList[index];
                return HotelGridView(hotel: singleHotel);
              },
            ),
          ),
        ),
      ),
    );
  }
}



class HotelGridView extends StatelessWidget {
  final Map <String, dynamic> hotel;
  const HotelGridView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // width: size.width*0.6,
      height: 350,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right:8),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel["image"]}"))
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
           hotel["place"],
           style: AppStyles.headline3.copyWith(color: AppStyles.kakiColor),),
           SizedBox(height: 5,),
          Row(
            children: [
              Text(
           hotel["destination"],
           style: AppStyles.headline3.copyWith(color: AppStyles.secColor),),
           SizedBox(width: 5,),
          Text(
           "\$${hotel["price"]}/night",
           style: AppStyles.headline4.copyWith(color: AppStyles.kakiColor),),
            ],
          )
        ],
      ),
    );
  }
}