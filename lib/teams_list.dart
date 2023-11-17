import 'package:flutter/material.dart';
import 'package:liga_1/team.dart';
import 'package:liga_1/team_screen.dart';

class TeamsList extends StatelessWidget {
  const TeamsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: standings.length,
      itemBuilder: (BuildContext context, int index) {
        final Team team = standings[index];
        return ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(team.teamBadge),
          ),
          title: Text(team.name),
          trailing: Text(team.overallLeaguePTS),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TeamScreen(team: team);
            }));
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey.shade200,
          indent: 80.0,
        );
      },
    );
  }
}
