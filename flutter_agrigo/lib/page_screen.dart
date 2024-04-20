import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildThree(context),
                const SizedBox(height: 3),
                SizedBox(
                  height: 557,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.blueGrey, // Change to desired color
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildForty(context),
                              const SizedBox(height: 10),
                              _buildSeven(context),
                              const SizedBox(height: 13),
                              _buildFive(context),
                              const SizedBox(height: 86),
                            ],
                          ),
                        ),
                      ),
                      _buildOne(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent, // Change to desired color
      child: Column(
        children: [
          const SizedBox(height: 19),
          const Padding(
            padding: EdgeInsets.only(
              left: 8,
              right: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "ඔබ සොයන්නේ කුමක් ද ?",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 293,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  color: Colors.white, // Change to desired color
                  height: 293,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 10,
                    margin: const EdgeInsets.only(
                      left: 161,
                      bottom: 21,
                    ),
                    child: const SizedBox(
                      width: 100,
                      child: Placeholder(), // Placeholder for AnimatedSmoothIndicator
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return SizedBox(
      height: 118,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
                vertical: 4,
              ),
              color: Colors.white, // Change to desired color
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 71),
                  Text(
                    "රු 950.00/1kg",
                    style: TextStyle(fontSize: 16), // Adjust the style as needed
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 319,
              margin: const EdgeInsets.only(left: 8),
              child: const Text(
                "නුවරඑළියේ හොඳම කැරට්    අඩුම මිලට...",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16), // Adjust the style as needed
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      height: 126,
      width: double.maxFinite,
      color: Colors.white, // Change to desired color
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 107,
            width: 107,
            color: Colors.white, // Change to desired color
            alignment: Alignment.topLeft,
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 19),
              child: SizedBox(
                width: 330,
                child: Divider(
                  endIndent: 52,
                ),
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            color: Colors.white, // Change to desired color
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(
              top: 21,
              right: 3,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 124,
                top: 27,
                right: 67,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 32,
                    width: 237,
                    margin: const EdgeInsets.only(left: 1),
                    child: const Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "Senarathna & Sons",
                          style: TextStyle(fontSize: 16), // Adjust the style as needed
                        ),
                        Text(
                          "Senarathna & Sons",
                          style: TextStyle(fontSize: 16), // Adjust the style as needed
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    "Dambulla, SriLanka",
                    style: TextStyle(fontSize: 16), // Adjust the style as needed
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 17,
      ),
      color: Colors.white, // Change to desired color
      child: Column(
        children: [
          const SizedBox(height: 36),
          Container(
            width: 406,
            margin: const EdgeInsets.only(right: 5),
            child: const Text(
              "දුරකතන අංකය : 0765695214\n\nලිපිනය          : 45/B, අනුරාධපුර පාර,\r\n                  කැකිරාව\n\nඅප ගැන        : ඔබට අවශ්‍ය සියලුම එළවලු තොග සහ\n                  සිල්ලර මිලට අප වෙතින් ලබා ගත හැක.",
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16), // Adjust the style as needed
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 78,
        width: 429,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 6,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 36,
                      bottom: 1,
                    ),
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 16), // Adjust the style as needed
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Column(
                      children: [
                        Container(
                          height: 32,
                          width: 39,
                          color: Colors.white, // Change to desired color
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Categories",
                          style: TextStyle(fontSize: 16), // Adjust the style as needed
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 3,
                      bottom: 1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 29,
                          width: 29,
                          margin: const EdgeInsets.only(left: 27),
                          color: Colors.white, // Change to desired color
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Notifications",
                          style: TextStyle(fontSize: 16), // Adjust the style as needed
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 37,
                      top: 10,
                      bottom: 1,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.white, // Change to desired color
                        ),
                        const SizedBox(height: 1),
                        const Text(
                          "Menu",
                          style: TextStyle(fontSize: 16), // Adjust the style as needed
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 34,
              width: 34,
              color: Colors.white, // Change to desired color
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
