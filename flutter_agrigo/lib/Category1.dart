import 'package:flutter/material.dart';

class CatogaryVeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 29.0,
                  vertical: 14.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: Column(
                  children: [
                    Text(
                      "Categories",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 53.0),
                    _buildCategoriesStack(context),
                    SizedBox(height: 53.0),
                  ],
                ),
              ),
              SizedBox(height: 17.0),
              _buildHomeStack(context),
              SizedBox(height: 1.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesStack(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: List.generate(5, (index) => CategoriesstackItemWidget()),
      ),
    );
  }

  Widget _buildHomeStack(BuildContext context) {
    return SizedBox(
      height: 69.0,
      width: 418.0,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 4.0),
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 6.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 26.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 26.0,
                      bottom: 3.0,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(fontSize: 16.0, color: Colors.lightGreen),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      top: 26.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Notifications",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 21.0,
                      bottom: 5.0,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.menu),
                        SizedBox(height: 1.0),
                        Text(
                          "Menu",
                          style: TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 123.0,
            top: 0.0,
            child: Image.asset(
              "assets/images/group_23.png",
              height: 32.0,
              width: 144.0,
            ),
          ),
          Positioned(
            left: 7.0,
            top: 0.0,
            child: Image.asset(
              "assets/images/home.png",
              height: 34.0,
              width: 44.0,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesstackItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text("Category"),
      ),
    );
  }
}