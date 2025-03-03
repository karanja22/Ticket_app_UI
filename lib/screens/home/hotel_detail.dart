import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/appmedia.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotel details"),
              background: Image.asset(AppMedia.hotelroom),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Imagine stepping into a haven of minimalist luxury, a stark contrast to the bustling energy of Dubai. This open-space hotel embraces a sense of airy freedom, where sleek, polished concrete floors meet soaring, exposed ceilings. Natural light floods the expansive lobby, spilling through floor-to-ceiling windows that frame breathtaking panoramic views of the city's iconic skyline.",
                    ),
                    SizedBox(height: 20,),
                    Text("More images", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                  ],
                ),
              ),

              //  Text("Imagine stepping into a haven of minimalist luxury, a stark contrast to the bustling energy of Dubai. This open-space hotel embraces a sense of airy freedom, where sleek, polished concrete floors meet soaring, exposed ceilings. Natural light floods the expansive lobby, spilling through floor-to-ceiling windows that frame breathtaking panoramic views of the city's iconic skyline."),
              // Text("Instead of traditional walls, subtle, semi-transparent partitions or strategically placed greenery create intimate zones within the vast space, offering both privacy and a sense of connection to the surrounding environment. The minimalist aesthetic extends to the furnishings: designer pieces with clean lines, neutral color palettes, and natural materials like wood and leather.")
              // ,Text("The hotel's heart is a central, multi-level atrium, a dynamic space that seamlessly blends a chic lounge, a gourmet dining area, and a curated art gallery. Guests can socialize, work, or simply unwind, all while enjoying the uninterrupted flow of the open layout."),
              // Text("Upstairs, the suites mirror the hotel's overall design philosophy. Each is a spacious, open-plan sanctuary featuring a luxurious sleeping area, a stylish living space, and a spa-like bathroom with a freestanding soaking tub and rain shower. Expansive balconies offer private outdoor retreats, blurring the lines between indoor and outdoor living."),
              // Text("This open-space hotel in Dubai is more than just a place to stay; it's an experience. It's a sanctuary of tranquility, a celebration of minimalist design, and a testament to the power of open space to create a sense of calm and connection in the heart of a vibrant metropolis."),
            ]),
          ),
        ],
      ),
    );
  }
}
