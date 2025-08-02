import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logs/colors/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Row(
                children: [
                  // 🌍 Left: Animated GIF
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Image.asset(
                        'assets/vids/globe.gif',
                        width: 450,
                        height: 450,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(width: 40),

                  // 🧾 Right: Welcome Text + Rules + Button
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to Logs',
                          style: GoogleFonts.pressStart2p(
                            color: AppColors.secondary,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 30),

                        Text(
                          'Track your thoughts. Speak freely.\nStay anonymous.',
                          style: GoogleFonts.pressStart2p(
                            color: AppColors.secondary.withOpacity(0.9),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 40),

                        Text(
                          'Rules:',
                          style: GoogleFonts.pressStart2p(
                            color: AppColors.secondary,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(height: 20),

                        ruleBullet("No hate speech or harassment"),
                        ruleBullet("No spamming or flooding threads"),
                        ruleBullet("Stay anonymous. No personal info."),
                        ruleBullet("Keep discussions relevant"),

                        const SizedBox(height: 50),

                        // 🔘 Continue Button
                        SizedBox(
                          width: 220,
                          height: 60,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: AppColors.secondary, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            onPressed: () {
                              // TODO: Navigate to next screen
                            },
                            child: Text(
                              'CONTINUE →',
                              style: GoogleFonts.pressStart2p(
                                fontSize: 12,
                                color: AppColors.secondary,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Bullet point for rules
  Widget ruleBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: GoogleFonts.pressStart2p(
              color: AppColors.secondary,
              fontSize: 12,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.pressStart2p(
                color: AppColors.secondary.withOpacity(0.8),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
