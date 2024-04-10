import 'package:flutter/material.dart';

class PopupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[200], // Ash color background
          ),
          child: SizedBox(
            width: 429,
            child: Column(
              children: [
                const SizedBox(height: 247),
                Expanded(
                  child: SingleChildScrollView(
                    child: _buildFour(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(
        left: 11,
        right: 11,
        bottom: 220,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 37),
              child: Text(
                "විද්‍යුත් ලිපිනය තහවුරු කිරීම",
                style: theme.textTheme.headline6, // Changed to headline6
              ),
            ),
          ),
          SizedBox(height: 39),
          SizedBox(
            width: 381,
            child: Text(
              "කරුණාකර ඔබේ විද්යුත් ලිපිනයට එවන ලද OTP අංකය ඇතුළත් කරන්න",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.subtitle1,
            ),
          ),
          SizedBox(height: 53),
          Divider(
            indent: 22,
            endIndent: 20,
          ),
          SizedBox(height: 23),
          Text(
            "කාලය නැවත සකස් වීම : 01:06",
            style: theme.textTheme.subtitle2,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text("තහවුරු කරන්න"),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
              textStyle: TextStyle(fontSize: 16),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
          SizedBox(height: 51),
          Text(
            "විද්යුත් ලිපිනය වෙනස් කිරීමට අවශ්‍ය ද?",
            style: theme.textTheme.subtitle1,
          ),
          SizedBox(height: 28),
          Text(
            "සංස්කරණය කරන්න",
            style: theme.textTheme.subtitle2,
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
