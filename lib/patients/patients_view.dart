import 'package:flutter/material.dart';

class PatientsView extends StatefulWidget {
  const PatientsView({super.key});

  @override
  State<PatientsView> createState() => _PatientsViewState();
}

class _PatientsViewState extends State<PatientsView> {
  bool _isActivePatientsEnabled = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'PATIENTS',
              style: TextStyle(
                letterSpacing: 1.25,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: colorScheme.primary,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Show inactive',
                style: TextStyle(fontSize: 12, color: colorScheme.primary),
              ),
              SizedBox(width: 10),
              Switch(
                value: _isActivePatientsEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _isActivePatientsEnabled = value;
                  });
                },
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(child: Icon(Icons.person)),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'John Doe',
                                  style: TextStyle(
                                    color: colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '+1-555-000-1234',
                                  style: TextStyle(
                                    color: colorScheme.inverseSurface,
                                  ),
                                ),
                                Text(
                                  '9 Street',
                                  style: TextStyle(
                                    color: colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            // Text(
            //   _isActivePatientsEnabled ? 'All' : 'Active',
            //   style: TextStyle(fontSize: 12, color: colorScheme.primary),
            //   textAlign: TextAlign.center,
            // ),
          ),
        ],
      ),
    );
  }
}
