// lib/waiting_room_timestamp.dart
import 'dart:async';
import 'package:flutter/material.dart';

class WaitingRoomTimestamp extends StatefulWidget {
  const WaitingRoomTimestamp({super.key});

  @override
  State<WaitingRoomTimestamp> createState() => _WaitingRoomTimestampState();
}

class _WaitingRoomTimestampState extends State<WaitingRoomTimestamp> {
  late String _timestamp;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timestamp = _formatDateTime(DateTime.now());
    // Update the timestamp every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timestamp = _formatDateTime(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  String _formatDateTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final second = dateTime.second.toString().padLeft(2, '0');
    final day = dateTime.day.toString().padLeft(2, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final year = dateTime.year;
    return '$hour:$minute:$second - $day/$month/$year';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timestamp,
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
