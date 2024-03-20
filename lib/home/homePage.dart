import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/home/bloc/counter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Bloc"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.counter.toString(),
                  style: const TextStyle(fontSize: 60),
                ),
              );
            },
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
ElevatedButton(onPressed: (){

  context.read<CounterBloc>().add(CounterIncrementEvent());
}, child: const Text("Increment")),
const SizedBox( width: 20,),
ElevatedButton(onPressed: (){
  context.read<CounterBloc>().add(CounterDecrementEvent());
}, child: const Text("Decrement")),

            ],
          )
        ],
      ),
    );
  }
}
