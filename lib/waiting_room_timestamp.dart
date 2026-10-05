// lib/waiting_room_timestamp.dart
import 'package:flutter/material.dart';

class WaitingRoomTimestamp extends StatelessWidget {
  const WaitingRoomTimestamp({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final formattedTime =
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    final formattedDate =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year}';

    return Text(
      'Arrived at $formattedTime on $formattedDate',
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
