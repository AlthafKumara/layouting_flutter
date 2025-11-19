import 'dart:async';
import 'package:flutter/material.dart';

class Lifecycle extends StatefulWidget {
  const Lifecycle({super.key});

  @override
  State<Lifecycle> createState() => _LifecycleState();
}

class _LifecycleState extends State<Lifecycle> {
  int step = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lifecycle Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  step++;
                });
              },
              child: const Text("Ubah STEP"),
            ),

            const SizedBox(height: 20),

            MyInherited(
              counter: step,
              child: AutoWidget(step: step),
            ),
          ],
        ),
      ),
    );
  }
}

class AutoWidget extends StatefulWidget {
  final int step;

  const AutoWidget({super.key, required this.step});

  @override
  State<AutoWidget> createState() => _AutoWidgetState();
}

class _AutoWidgetState extends State<AutoWidget> {
  int value = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    print("initState dipanggil");

    // timer untuk memicu rebuild
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => value += widget.step);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print(
      "didChangeDependencies: inherited counter = ${MyInherited.of(context).counter}",
    );
  }

  @override
  void didUpdateWidget(covariant AutoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget: step ${oldWidget.step} → ${widget.step}");

    if (oldWidget.step != widget.step) {
      setState(() => value = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build() dipanggil");

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Value: $value", style: const TextStyle(fontSize: 28)),
        Text("STEP (props): ${widget.step}"),
        Text("Inherited counter: ${MyInherited.of(context).counter}"),

        const SizedBox(height: 20),
      ],
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate() dipanggil");
  }

  @override
  void dispose() {
    print(" dispose() dipanggil, timer dihentikan");
    timer?.cancel();
    super.dispose();
  }
}

class MyInherited extends InheritedWidget {
  final int counter;
  const MyInherited({required this.counter, required super.child, super.key});

  @override
  bool updateShouldNotify(covariant MyInherited oldWidget) {
    return oldWidget.counter != counter;
  }

  static MyInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInherited>()!;
  }
}
