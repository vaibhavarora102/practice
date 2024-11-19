import 'package:flutter/material.dart';
import 'package:to_do_app/utils/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
    });
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            // TextField 
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a New Task",
              ),
            ),

            // button  
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save
                MyButton(text: "Save",onPressed: onSave,),
                
                const SizedBox(width: 10),
                // Cancel
                MyButton(text: "Cancel",onPressed: onCancel,)
              ],
            )

          ],
        ),
      )
    );
  }
}