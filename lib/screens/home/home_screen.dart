import 'package:flutter/material.dart';
import '../../bloc/counter/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_test/bloc/counter/counter_bloc.dart';
import 'package:block_test/bloc/counter/counter_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    /// [Scaffold]
    return  Scaffold(
        body: Center(

          /// [Column]
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              /// [Bloc Builder]
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    state.counter.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  );
                },
              ),

              /// [Row]
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Increment Button
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementEvent());
                    },
                    child: Text('Tap + Bloc'),
                  ),

                  // Gap
                  SizedBox(width: 16),

                  // Decrement Button
                  ElevatedButton(onPressed: () {
                    context.read<CounterBloc>().add(DecrementEvent());
                  }, child: Text('Tap - Bloc')),

                ],
              ),
            ],
          ),
        ),
      );

  }
}
