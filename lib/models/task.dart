class Task {
  String title;
  bool isDone;
  DateTime timestamp;

  Task({
    required this.title,
    this.isDone = false,
    required this.timestamp,
  });

  // Convert Task to Map to save in Hive
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isDone': isDone,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  // Create Task from Hive Map
  factory Task.fromMap(Map<dynamic, dynamic> map) {
    return Task(
      title: map['title'],
      isDone: map['isDone'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}
