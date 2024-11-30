import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/constant/fonts.dart';
import '../../feature/notification/notification_service.dart';

void showMessageDialog(BuildContext context) {
  TextEditingController messageController = TextEditingController();
  final PushNotificationService notificationService = PushNotificationService();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Message Seller', style: fBlackSemiBold20),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: messageController,
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: cSilver,
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  messageController.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: cRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Cancel', style: fWhiteSemiBold14),
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await notificationService.showNotification(
                      title: 'Message Sent',
                      body: 'Thank you for contacting us!',
                    );

                    Navigator.pop(context);
                    messageController.clear();
                  } catch (e) {
                    print('Notification error: $e');
                    // Show fallback message using SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Thank you for contacting us!'),
                        backgroundColor: cBlue,
                      ),
                    );
                    Navigator.pop(context);
                    messageController.clear();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: cBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Send', style: fWhiteSemiBold14),
              ),
            ],
          ),
        ],
      );
    },
  );
}
