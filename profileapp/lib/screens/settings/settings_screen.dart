import 'package:flutter/material.dart';
import 'package:profileapp/screens/settings/widgets/danger_zone.dart';
import 'package:profileapp/screens/settings/widgets/profile_header.dart';
import 'package:profileapp/screens/settings/widgets/section_tile.dart';
import 'package:profileapp/screens/settings/widgets/settings_group_card.dart';
import 'package:profileapp/screens/settings/widgets/settings_tile.dart';
import 'package:profileapp/theme/theme_provider.dart';
import 'package:profileapp/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final themeProvider = Provider.of<ThemeProvider>(
      context,
    );

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 3,
      ),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              'More',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 24),

            //Profile Card
            ProfileHeader(),

            const SizedBox(height: 10),

            //Account section
            const SectionTile(title: 'Account'),
            SettingsGroupCard(
              children: [
                SettingsTile(
                  title: 'Notifications',
                  icon: Image.asset(
                    'lib/assets/icons/notification.png',
                    color: Colors.blue,
                  ),
                ),
                SettingsTile(
                  title: 'Analytics',
                  icon: Image.asset(
                    'lib/assets/icons/pie-chart.png',
                    color: Colors.blue,
                  ),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(.15),
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/assets/icons/caret-arrow-up.png',
                          height: 12,
                          width: 12,
                          color: Colors.green,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '+20%',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SettingsTile(
                  title: 'Help & Support',
                  icon: Image.asset(
                    'lib/assets/icons/chat.png',
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            //security section
            SectionTile(title: 'Security'),
            SettingsGroupCard(
              children: [
                SettingsTile(
                  title: 'Change your PIN',
                  icon: Image.asset(
                    'lib/assets/icons/key.png',
                    color: Colors.blue,
                  ),
                ),
                SettingsTile(
                  title: 'Dark Mode',
                  icon: Image.asset(
                    'lib/assets/icons/fingerprint-scan.png',
                    color: Colors.blue,
                  ),
                  trailing: Switch(
                    // activeColor: Colors.blue,
                    activeTrackColor: Colors.blue,
                    value: themeProvider.isDark,
                    onChanged: (_) =>
                        themeProvider.toggleTheme(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            //other
            SectionTile(title: 'Other'),
            SettingsGroupCard(
              children: [
                SettingsTile(
                  title: 'About Us',
                  icon: Image.asset(
                    'lib/assets/icons/globe.png',
                    color: Colors.blue,
                  ),
                ),
                SettingsTile(
                  title: 'Sign Out',
                  icon: Image.asset(
                    'lib/assets/icons/log-out.png',
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const DangerZone(),
            const SizedBox(height: 10),
            SettingsTile(
              title: 'Delete Account',
              icon: Image.asset(
                'lib/assets/icons/trash-bin.png',
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
