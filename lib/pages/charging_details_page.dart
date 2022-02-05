import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class ChargingDetails extends StatefulWidget {
  const ChargingDetails({Key? key}) : super(key: key);

  @override
  _ChargingDetailsState createState() => _ChargingDetailsState();
}

class _ChargingDetailsState extends State<ChargingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop(true);
              }),
          title: Text("Charging",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ))),
      body: Column(children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 30),
            child: const RadialProgress()),
        Container(
            padding: const EdgeInsets.only(left: 10),
            height: MediaQuery.of(context).size.height / 1.8,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Distance",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black45,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text("115.50 km",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Duration",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black45,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text("2hr 45m",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Cost",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black45,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text("80.20₹",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ]),
                      ]),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: Image.asset(
                          'assets/images/pngpix-com-front-view-of-jaguar-f-type-r-car-image-vehicle-transportation-automobile-sports-car-transparent-png-2312920.png',
                          fit: BoxFit.fill)),
                ])),
      ]),
    );
  }
}

class RadialProgress extends StatefulWidget {
  final double goalCompleted = 0.7;

  const RadialProgress({Key? key}) : super(key: key);

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _radialProgressAnimationController;
  late Animation<double> _progressAnimation;
  final Duration fadeInDuration = const Duration(milliseconds: 500);
  final Duration fillDuration = const Duration(seconds: 2);

  double progressDegrees = 0;
  var count = 0;

  @override
  void initState() {
    super.initState();
    _radialProgressAnimationController =
        AnimationController(vsync: this, duration: fillDuration);
    _progressAnimation = Tween(begin: 0.0, end: 360.0).animate(CurvedAnimation(
        parent: _radialProgressAnimationController, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {
          progressDegrees = widget.goalCompleted * _progressAnimation.value;
        });
      });

    _radialProgressAnimationController.forward();
  }

  @override
  void dispose() {
    _radialProgressAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: SizedBox(
          height: 200.0,
          width: 200.0,
          child: AnimatedOpacity(
              opacity: progressDegrees > 30 ? 1.0 : 0.0,
              duration: fadeInDuration,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/icons/flash.png',
                        scale: 9.0, color: Colors.green),
                    Text("70%",
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.w600)),
                  ]))),
      painter: RadialPainter(progressDegrees),
    );
  }
}

class RadialPainter extends CustomPainter {
  double progressInDegrees;

  RadialPainter(this.progressInDegrees);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15.0;

    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.width / 2, paint);

    Paint progressPaint = Paint()
      ..shader = const LinearGradient(colors: [Colors.green, Colors.lightGreen])
          .createShader(Rect.fromCircle(center: center, radius: size.width / 2))
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15.0;

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-180),
        math.radians(progressInDegrees),
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
