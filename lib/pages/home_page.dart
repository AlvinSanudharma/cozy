import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(height: edge),
              // NOTE: HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  // NOTE: POPULAR
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24),
                    CityCard(City(
                        id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png')),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 3,
                        name: 'Surabaya,',
                        imageUrl: 'assets/city3.png')),
                    SizedBox(width: 24),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE: RECOMMENDED
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Recommended Space',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                          id: 1,
                          name: 'Kuretakeso Hott',
                          imageUrl: 'assets/space1.png',
                          price: 52,
                          country: 'Germany',
                          city: 'Bandung',
                          rating: 4),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                          id: 2,
                          name: 'Roemah Nenek',
                          imageUrl: 'assets/space2.png',
                          price: 11,
                          country: 'Bogor',
                          city: 'Seattle',
                          rating: 5),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                          id: 3,
                          name: 'Darrling How',
                          imageUrl: 'assets/space3.png',
                          price: 20,
                          country: 'Indonesia',
                          city: 'Jakarta',
                          rating: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Tips & Guidance',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(Tips(
                        id: 1,
                        imageUrl: 'assets/tips1.png',
                        title: 'City Guidelines',
                        updatedAt: '20 Apr')),
                    SizedBox(height: 20),
                    TipsCard(Tips(
                        id: 2,
                        imageUrl: 'assets/tips2.png',
                        title: 'Jakarta Fairship',
                        updatedAt: '11 Dec')),
                  ],
                ),
              ),
              SizedBox(height: 50 + edge),
            ],
          )),
      // NOTE: Bottom Navigator
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * edge),
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_favorite.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
