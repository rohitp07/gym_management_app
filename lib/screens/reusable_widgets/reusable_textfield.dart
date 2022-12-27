import 'package:flutter/material.dart';

SizedBox reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return SizedBox(
    height: 65,
    width: 400,
    child: TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white70,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Color(0xFFC4C4C4)),
        filled: true,

        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor:  Color(0xFF62417E),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    ),
  );
}
SizedBox reusableTextField1(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return SizedBox(
    height: 15,
    child: SizedBox(
      height: 65,
      width: 400,
      child: TextField(
        controller: controller,
        obscureText: isPasswordType,
        enableSuggestions: !isPasswordType,
        autocorrect: !isPasswordType,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white.withOpacity(0.9)),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white70,
          ),
          labelText: text,
          labelStyle: TextStyle(color: Color(0xFFC4C4C4)),
          filled: true,

          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor:  Color(0xFF62417E),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
        keyboardType: isPasswordType
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
      ),
    ),
  );
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: 550,
    height: 50,

    decoration: BoxDecoration(
      color: Color(0xFF674882),

    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFF2CB41),
        )

    ),
  );
}