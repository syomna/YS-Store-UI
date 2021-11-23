import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/check_out/address.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/check_out/checkout_payment.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/check_out/preview.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/bezier_painer/bezier_painter.dart';
import 'package:timelines/timelines.dart';

const kTileHeight = 50.0;

const completeColor = Color(0xff5ec792);
const inProgressColor = kDefaultColor;
const todoColor = Color(0xffd1d2d7);

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _processIndex = 0;

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  final _processes = [
    'Address',
    'Payment',
    'Preview',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Checkout')),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Timeline.tileBuilder(
              theme: TimelineThemeData(
                direction: Axis.horizontal,
                nodePosition: 0,
                connectorTheme: const ConnectorThemeData(
                  space: 30.0,
                  thickness: 5.0,
                ),
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.before,
                itemExtentBuilder: (_, __) =>
                    MediaQuery.of(context).size.width / _processes.length,
                contentsBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Text(
                          _processes[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: getColor(index),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                indicatorBuilder: (_, index) {
                  Color color;
                  Widget? child;
                  if (index == _processIndex) {
                    color = inProgressColor;
                    child = const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        strokeWidth: 3.0,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    );
                  } else if (index < _processIndex) {
                    color = completeColor;
                    child = const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15.0,
                    );
                  } else {
                    color = todoColor;
                  }

                  if (index <= _processIndex) {
                    return Stack(
                      children: [
                        CustomPaint(
                          size: const Size(30.0, 30.0),
                          painter: BezierPainter(
                            color: color,
                            drawStart: index > 0,
                            drawEnd: index < _processIndex,
                          ),
                        ),
                        DotIndicator(
                          size: 30.0,
                          color: color,
                          child: child,
                        ),
                      ],
                    );
                  } else {
                    return Stack(
                      children: [
                        CustomPaint(
                          size: const Size(15.0, 15.0),
                          painter: BezierPainter(
                            color: color,
                            drawEnd: index < _processes.length - 1,
                          ),
                        ),
                        OutlinedDotIndicator(
                          borderWidth: 4.0,
                          color: color,
                        ),
                      ],
                    );
                  }
                },
                connectorBuilder: (_, index, type) {
                  if (index > 0) {
                    if (index == _processIndex) {
                      final prevColor = getColor(index - 1);
                      final color = getColor(index);
                      List<Color> gradientColors;
                      if (type == ConnectorType.start) {
                        gradientColors = [
                          Color.lerp(prevColor, color, 0.5)!,
                          color
                        ];
                      } else {
                        gradientColors = [
                          prevColor,
                          Color.lerp(prevColor, color, 0.5)!
                        ];
                      }
                      return DecoratedLineConnector(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradientColors,
                          ),
                        ),
                      );
                    } else {
                      return SolidLineConnector(
                        color: getColor(index),
                      );
                    }
                  } else {
                    return null;
                  }
                },
                itemCount: _processes.length,
              ),
            ),
          ),
          Expanded(child: children())
        ],
      ),
      floatingActionButton: _floatingButton(),
    );
  }

  Widget _floatingButton() {
    if (_processIndex == _processes.length - 1) {
      return const SizedBox();
    }
    return FloatingActionButton(
      child: _processIndex == _processes.length - 1
          ? const Icon(Ionicons.checkmark , color: Colors.white,)
          : const Icon(Icons.chevron_right , color: Colors.white,),
      onPressed: () {
        setState(() {
          _processIndex = (_processIndex + 1) % _processes.length;
        });
      },
      backgroundColor: inProgressColor,
    );
  }

  Widget children() {
    if (_processes[_processIndex] == _processes[0]) {
      return const ChooseAddress();
    }
    if (_processes[_processIndex] == _processes[1]) {
      return const CheckOutPayment();
    }
    return const Preview();
  }
}
