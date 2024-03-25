import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/screens/add_task.dart';
import 'package:todos/models/task_data.dart';
import 'package:todos/widget/task_list.dart';
import 'package:todos/models/taskmodel.dart';
import 'package:todos/widget/task_tile.dart';

class Taskpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff25a7a7),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25a7a7),
        elevation: 2,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => {
          showModalBottomSheet(
              context: context, builder: (context) => AddTask()),
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 65, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.list_sharp,
                    color: Color(0xff25a7a7),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Todo Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskCount} task",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              //height: 300,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Tasklist(),
            ),
          ),
        ],
      ),
    );
  }
}
