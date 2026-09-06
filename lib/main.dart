import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const HomePage(),
    );
  }
}

// ---------------- COLORS ----------------

const Color pastelWhite = Color(0xFFFCFAFD);
const Color pastelPurple = Color(0xFFE9DDF2);
const Color lightPurple = Color(0xFFD8C1E5);
const Color purple = Color(0xFF9270B2);
const Color darkPurple = Color(0xFF59416E);
const Color textColor = Color(0xFF403747);
const Color greyText = Color(0xFF746B78);

// ---------------- PAGE HEADER ----------------

class PageHeader extends StatelessWidget {
  final String title;

  const PageHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        color: pastelWhite,
        border: Border(
          bottom: BorderSide(
            color: lightPurple,
            width: 1,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: darkPurple,
          ),
        ),
      ),
    );
  }
}

// ---------------- PORTFOLIO BUTTON ----------------

class PortfolioButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PortfolioButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: purple,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          maxLines: 1,
          softWrap: false,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// ---------------- HOME PAGE ----------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastelWhite,
      body: SafeArea(
        child: Column(
          children: [
            const PageHeader(
              title: 'My Portfolio',
            ),

            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Avatar
                      Container(
                        width: 155,
                        height: 155,
                        decoration: const BoxDecoration(
                          color: pastelPurple,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: const BoxDecoration(
                              color: lightPurple,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.person_outline,
                              size: 65,
                              color: darkPurple,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 28),

                      // Name
                      const Text(
                        'MOUNIKA DEVAKI',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          color: darkPurple,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Course
                      const Text(
                        'B.Tech 3rd Year • Computer Science Engineering',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: greyText,
                        ),
                      ),

                      const SizedBox(height: 30),

                      // About button
                      PortfolioButton(
                        text: 'About Me',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutPage(),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 14),

                      // Projects button
                      PortfolioButton(
                        text: 'My Projects',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProjectsPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- ABOUT PAGE ----------------

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastelWhite,
      body: SafeArea(
        child: Column(
          children: [
            const PageHeader(
              title: 'About Me',
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(28),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 850,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),

                        // Section heading
                        const Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: darkPurple,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Container(
                          width: 40,
                          height: 3,
                          decoration: BoxDecoration(
                            color: purple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // About text
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: pastelWhite,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text(
                            'I am Mounika Devaki, a Computer Science Engineering student '
                            'passionate about software development and web technologies. I focus '
                            'on building scalable web applications, exploring machine learning '
                            'algorithms, and solving complex data problems. I am constantly eager '
                            'to learn modern frameworks and collaborate on impactful technology projects.',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: textColor,
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Skills
                        const Text(
                          'My Skills',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: darkPurple,
                          ),
                        ),

                        const SizedBox(height: 16),

                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: const [
                            SkillChip(text: 'Python'),
                            SkillChip(text: 'HTML'),
                            SkillChip(text: 'CSS'),
                            SkillChip(text: 'JavaScript'),
                            SkillChip(text: 'Machine Learning'),
                          ],
                        ),

                        const SizedBox(height: 35),

                        // Back button
                        SizedBox(
                          height: 44,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text('Back to Home'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: purple,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- SKILL CHIP ----------------

class SkillChip extends StatelessWidget {
  final String text;

  const SkillChip({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        color: pastelWhite,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: lightPurple,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: darkPurple,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

// ---------------- PROJECTS PAGE ----------------

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastelWhite,
      body: SafeArea(
        child: Column(
          children: [
            const PageHeader(
              title: 'My Projects',
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(28),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 850,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),

                        // Section heading
                        const Text(
                          'My Projects',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: darkPurple,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Container(
                          width: 40,
                          height: 3,
                          decoration: BoxDecoration(
                            color: purple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Project 1: Sign Language Interpreter
                        const ProjectCard(
                          icon: Icons.back_hand_outlined,
                          title: 'Sign Language Interpreter',
                          description:
                              'An ML-driven system leveraging computer vision to translate '
                              'hand gesture recognition into readable text and speech output.',
                        ),

                        const SizedBox(height: 18),

                        // Project 2: QuoRix
                        const ProjectCard(
                          icon: Icons.video_library_outlined,
                          title: 'QuoRix',
                          description:
                              'An AI-powered Video-to-Text Intelligence system that '
                              'analyzes videos using speech recognition and image analysis.',
                        ),

                        const SizedBox(height: 18),

                        // Project 3: Portfolio Website
                        const ProjectCard(
                          icon: Icons.web_outlined,
                          title: 'Portfolio Website',
                          description:
                              'A personal portfolio website created using HTML and CSS '
                              'to showcase my skills and projects.',
                        ),

                        const SizedBox(height: 35),

                        // Back button
                        SizedBox(
                          height: 44,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text('Back to Home'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: purple,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- PROJECT CARD ----------------

class ProjectCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ProjectCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: pastelWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: lightPurple,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Project icon
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: pastelPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: darkPurple,
              size: 27,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: darkPurple,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    color: greyText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}