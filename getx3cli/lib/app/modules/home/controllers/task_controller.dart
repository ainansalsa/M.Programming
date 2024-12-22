import 'package:get/get.dart';
import '../../../data/models/task_model.dart';

class TaskController extends GetxController {

  final tasks = <TaskModel>[].obs;
  
  int get totalTasks => tasks.length;
  
  int get completedTask => tasks.where((task) => task.isCompleted).length;

  void addTask(String title, {String description = ''}) {
    final newTask = TaskModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
      description: description,
    );
    tasks.add(newTask);
  }

  void updateTask (TaskModel updateTask) {
    final index = tasks.indexWhere((task) => task.id == updateTask.id);
    if (index != -1) {
      tasks[index] = updateTask;
    }
  }
  
  void deleteTask(String taskId) {
    tasks.removeWhere((task) => task.id == taskId);
  }
  
  void toggleTaskStatus(String taskId) {
    final index = tasks.indexWhere((task) => task.id == taskId);
    if (index != -1) {
      tasks[index] =
          tasks[index].copyWith(isCompleted: !tasks[index].isCompleted);
    }
  }
}