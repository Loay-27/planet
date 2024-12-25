import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPress, });
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20,right: 12,left: 12),
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: const [
                Text(
                  "Explore",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
