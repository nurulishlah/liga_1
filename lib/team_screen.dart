import 'package:flutter/material.dart';
import 'package:liga_1/favorite_widget.dart';
import 'package:liga_1/team.dart';

class TeamScreen extends StatefulWidget {
  final Team team;

  const TeamScreen({Key? key, required this.team}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.team.name} Statistics'),
        actions: const [FavoriteWidget()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.network(widget.team.teamBadge),
            const SizedBox(height: 20),
            Text(
              widget.team.name,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'Position ${widget.team.overallLeaguePosition}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),

            // Overall Statistics
            const Text(
              'Overall Statistics',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('Played'),
              trailing: Text(widget.team.overallLeaguePayed),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Win'),
              trailing: Text(widget.team.overallLeagueW),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Draw'),
              trailing: Text(widget.team.overallLeagueD),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Lose'),
              trailing: Text(widget.team.overallLeagueL),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Total Point'),
              trailing: Text(widget.team.overallLeaguePTS),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Goals'),
              trailing: Text(
                  '${widget.team.overallLeagueGA} / ${widget.team.overallLeagueGF}'),
              dense: true,
            ),

            const SizedBox(height: 30),

            // Home Game
            const Text(
              'Home Game Statistics',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('Game Played'),
              trailing: Text(widget.team.homeLeaguePayed),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Game Winned'),
              trailing: Text(widget.team.homeLeagueW),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Draw'),
              trailing: Text(widget.team.homeLeagueD),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Lose'),
              trailing: Text(widget.team.homeLeagueL),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Game Points'),
              trailing: Text(widget.team.homeLeaguePTS),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Goals'),
              trailing: Text(
                  '${widget.team.homeLeagueGA} / ${widget.team.homeLeagueGF}'),
              dense: true,
            ),

            const SizedBox(height: 30),
            // Away Game
            const Text(
              'Away Game Statistics',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('Game Played'),
              trailing: Text(widget.team.awayLeaguepayed),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Game Winned'),
              trailing: Text(widget.team.awayLeagueW),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Draw'),
              trailing: Text(widget.team.awayLeagueD),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Lose'),
              trailing: Text(widget.team.awayLeagueL),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Game Points'),
              trailing: Text(widget.team.awayLeaguePTS),
              dense: true,
            ),
            const Divider(),
            ListTile(
              title: const Text('Goals'),
              trailing: Text(
                  '${widget.team.awayLeagueGA} / ${widget.team.awayLeagueGF}'),
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
