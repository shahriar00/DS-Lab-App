import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 32, 72, 149)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
Path path_0 = Path();
    path_0.moveTo(size.width*0.0011111,size.height*0.0594787);
    path_0.quadraticBezierTo(size.width*0.3809722,size.height*0.1005332,size.width*0.5016667,size.height*0.0952607);
    path_0.cubicTo(size.width*0.5025000,size.height*0.0952607,size.width*0.4997222,size.height*0.0890995,size.width*0.5005556,size.height*0.0962085);
    path_0.quadraticBezierTo(size.width*0.6225000,size.height*0.0964455,size.width*0.9994444,size.height*0.0601896);
    path_0.lineTo(size.width*1.0207778,size.height*1.0068128);
    path_0.lineTo(size.width*0.0025556,size.height*1.0053081);

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
