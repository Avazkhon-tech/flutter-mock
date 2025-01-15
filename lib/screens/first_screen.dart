import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan in Your City'),
        backgroundColor: Colors.pink[400],
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink[400]!,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      'FOR YOU',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.pink[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Text(
                    'TRENDING',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.location_on, color: Colors.pink[400]),
                title: const Text(
                  'See All Event Around You - 10km',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.all(10).copyWith(top: 0),
              itemBuilder: (context, index) => Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/london.jpg',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red[400],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '#date',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'NY Single Party Events',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\$20',
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                5,
                                (index) => Icon(
                                  index < 4 ? Icons.star : Icons.star_half,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                              ),
                              const Text(' 1.3k'),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.location_on, size: 16),
                              Text(' 93, Bayport Ave South..'),
                              Spacer(),
                              Text(
                                '8.0km',
                                style: TextStyle(color: Colors.pink),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.people_outline, size: 16),
                              Text(' 19/5k attending'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
