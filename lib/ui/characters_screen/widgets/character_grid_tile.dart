import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_colors.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/support/localization.dart';
import 'package:lessons2/ui/widgets/avatar.dart';

class CharacterGridTile extends StatelessWidget {
  const CharacterGridTile(this.character, {Key? key, required this.size})
      : super(key: key);

  final Character character;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        SizedBox.square(
          dimension: size.width * 0.32,
          child: Avatar(
            key: key,
            character.avatar,
            radius: const Radius.circular(100),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          Localization.statusLabel(character.status).toUpperCase(),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: _statusColor(character.status),
              ),
        ),
        const SizedBox(height: 4),
        Text(
          character.fullName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          kindAndSexLabel,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        // const SizedBox(height: 4),
      ],
    );
  }

  Color _statusColor(bool status) {
    return status ? AppColors.statusAlive : AppColors.statusDead;
  }

  String get kindAndSexLabel =>
      "${Localization.kindLabel(character.kind)}, ${Localization.sexLabel(character.sex)}";
}
