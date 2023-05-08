import 'package:flutter/material.dart';

class CBButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool? loading;
  const CBButton(
      {super.key, required this.text, required this.onTap, this.loading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: loading == true
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
