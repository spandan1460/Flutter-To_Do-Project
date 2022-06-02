class Task {
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? color;
  int? remind;
  String? repeat;

  Task({
    this.id,
    this.title,
    this.note,
    this.isCompleted,
    this.date,
    this.startTime,
    this.endTime,
    this.color,
    this.remind,
    this.repeat,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'note': note,
      'isCompleted': isCompleted,
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'color': color,
      'remind': remind,
      'repeat': repeat,
    };
  }

  Task.fromMap(Map<String, dynamic> task) {
    id = task['id'];
    title = task['title'];
    note = task['note'];
    isCompleted = task['isCompleted'];
    date = task['date'];
    startTime = task['startTime'];
    endTime = task['endTime'];
    color = task['color'];
    remind = task['remind'];
    repeat = task['repeat'];
  }
}
