import 'package:flutter/material.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({Key? key}) : super(key: key);

  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).primaryColor,
            width: widthCustom * 1,
            height: heightCustom * 1,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  renderLogo(),
                  SizedBox(height: 20),
                  renderStatus(),
                  SizedBox(height: 20),
                  renderStatusSub(),
                  SizedBox(
                    height: 20,
                  ),
                  renderStar(),
                  SizedBox(
                    height: 20,
                  ),
                  renderQuestion(),
                  renderSubmitAndSkip(),
                ]),
          ),
        ),
      ),
    );
  }

  Widget renderLogo() {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: DecorationImage(
            image: AssetImage('assets/food.jpg'),
          ),
          borderRadius: BorderRadius.circular(180)),
    );
  }

  Widget renderStatus() {
    return Container(
      child: Center(
        child: Text(
          'Thank You ! \n EnJoy Your Meal',
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget renderStatusSub() {
    return Container(
      child: Center(
        child: Text(
          'Please Your Rate Restaurant',
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget renderStar() {
    return Container(
      height: 50,
      width: 250,
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget renderQuestion() {
    return Container(
      height: 60,
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 60,
            width: 410,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).accentColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                  hintText: 'What Do You Want Oder ?'),
            ),
          ),
        ],
      ),
    );
  }

  Widget renderSubmitAndSkip() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 5,
        ),
        Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Submit',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            )),
      ],
    );
  }
}
