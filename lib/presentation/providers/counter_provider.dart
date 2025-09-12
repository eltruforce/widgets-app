import 'package:flutter_riverpod/flutter_riverpod.dart';

/* final counterProvider = StateProvider<int>((ref) => 5); */ // riverpod v2

class CounterNotifier extends Notifier<int> {
  @override
  int build() => 5;

  void increment() => state++;
}

final counterProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);
