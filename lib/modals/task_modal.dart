class Task {
  final int? id;
  final String content;
  final int queueOrder;
  final int stackOrder;
  final int priorityOrder;
  final String createdAt;

  const Task(
      {required this.id,
      required this.content,
      required this.stackOrder,
      required this.queueOrder,
      required this.priorityOrder,
      required this.createdAt});

  factory Task.fromJson(Map<String, dynamic> json) => Task(
      id: json['id'],
      content: json['content'],
      queueOrder: json['queueOrder'],
      stackOrder: json['stackOrder'],
      priorityOrder: json['priorityOrder'],
      createdAt: json['createdAt']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'content': content,
        'queueOrder': queueOrder,
        'stackOrder': stackOrder,
        'priorityOrder': priorityOrder,
        'createdAt': createdAt,
      };
}
