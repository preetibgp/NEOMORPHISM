import 'package:flutter/material.dart';

class ButtonPresed extends StatelessWidget {
  final icon;
  const ButtonPresed({this.icon, Key? key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Icon(
            icon,
            size: 35,
            color: Colors.grey[700],
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              const BoxShadow(
                  color: Colors.white,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade700,
                Colors.grey.shade600,
                Colors.grey.shade500,
                Colors.grey.shade200,
              ],
              stops: [0, 0.1, 0.3, 1],
            ),
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              const BoxShadow(
                  color: Colors.white,
                  offset: const Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade500,
              ],
              stops: [0.1, 0.3, 0.8, 1],
            )),
      ),
    );
  }
}
