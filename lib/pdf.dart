import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:typed_data';

Future<Uint8List> generateResumePdf(PdfPageFormat format) async {
  final pdf = pw.Document();

  // Page 1
  pdf.addPage(
    pw.Page(
      pageFormat: format,
      build: (pw.Context context) {
        return pw.Container(
          padding: const pw.EdgeInsets.all(24),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Header
              pw.Text(
                'Sugun Pandu Raju Akula',
                style: pw.TextStyle(
                  fontSize: 28,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 4),
              pw.Text(
                'Computer Science Engineering Student',
                style: pw.TextStyle(fontSize: 16, color: PdfColors.grey600),
              ),
              pw.SizedBox(height: 12),
              pw.Text(
                'Email: akulasugunpanduraju@gmail.com  |  Phone: 701-351-1169',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey600),
              ),
              pw.Text(
                'LinkedIn: linkedin.com/in/sugun-pandu-raju-akula  |  GitHub: github.com/sugunakula',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey600),
              ),
              pw.Divider(),

              // Summary
              pw.SizedBox(height: 16),
              pw.Text(
                'Summary',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Text(
                'Dedicated and detail-oriented Computer Science Engineering student with a strong software development background. '
                    'Proficient in programming languages including Python, Java, and Dart, with hands-on experience in developing '
                    'cross-platform applications using Flutter. Demonstrated analytical and problem-solving skills through various projects and '
                    'internships. Excellent communication and teamwork abilities, with a proactive approach to learning and self-improvement.',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey800),
              ),
              pw.Divider(),

              // Education Section
              pw.SizedBox(height: 16),
              pw.Text(
                'Education',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Bullet(
                text: 'B.Tech in Computer Science Engineering, Seshadri Rao Gudlavalleru Engineering College, AP (CGPA: 7.8/10.0, 2025)',
                style: pw.TextStyle(fontSize: 12),
              ),

              // Technical Skills Section
              pw.SizedBox(height: 16),
              pw.Text(
                'Technical Skills',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Text(
                'Programming Languages: HTML, CSS, JavaScript, Python, Java, Dart (Flutter)\n'
                    'Frameworks: Flutter, React\n'
                    'Cloud/Databases: MongoDB, Firebase, Relational Databases\n'
                    'Tools: VS Code, Eclipse, Node.js, GitHub, Android Studio\n'
                    'Soft Skills: Adaptability, Time Management, Teamwork, Problem Solving, Communication',
                style: pw.TextStyle(fontSize: 12),
              ),
            ],
          ),
        );
      },
    ),
  );

  // Page 2
  pdf.addPage(
    pw.Page(
      pageFormat: format,
      build: (pw.Context context) {
        return pw.Container(
          padding: const pw.EdgeInsets.all(24),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Experience Section
              pw.Text(
                'Experience',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Bullet(
                text: 'Android Development Intern, Paritripti Jewels Pvt Ltd (July 2024 – Oct 2024)',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.Text(
                '- Developed cross-platform applications using Flutter, ensuring responsiveness across multiple devices.\n'
                    '- Integrated APIs to enhance functionality, including real-time updates and secure authentication.\n'
                    '- Collaborated with cross-functional teams to deliver robust software solutions and participated in sprint planning.\n'
                    '- Performed debugging and testing to improve app performance and user experience, reducing crash rates significantly.',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey800),
              ),
              pw.Divider(),

              // Projects Section
              pw.SizedBox(height: 16),
              pw.Text(
                'Projects',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Bullet(
                text: 'Clean Bin - Smart Waste Management App (Java, XML)',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.Text(
                '- Developed an app to track, sort, and reduce waste, featuring sorting guidance and pickup schedules.',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey800),
              ),
              pw.Bullet(
                text: 'AI Chat App - Interactive Agent with Voice Support and Image Generation (Java, XML, API)',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.Text(
                '- Built an AI-powered chat app using GPT-3.5 for text-based conversations and visual content generation.',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey800),
              ),
              pw.Bullet(
                text: 'E-Commerce App - Android App with Admin Panel and Customer App (Java, XML, Firebase)',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.Text(
                '- Implemented product browsing, order management, and secure payment processes using Firebase Authentication.',
                style: pw.TextStyle(fontSize: 12, color: PdfColors.grey800),
              ),
              pw.Divider(),

              // Certifications Section
              pw.SizedBox(height: 16),
              pw.Text(
                'Certifications',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Text(
                '- Android App Development - Cisco thingQbator\n'
                    '- CCNAv7: Introduction to Networks - Cisco Networking Academy\n'
                    '- Core Java - Internshala Trainings\n'
                    '- SQL (Basic) - HackerRank\n'
                    '- HackerRank - Java\n'
                    '- HackerRank - Python',
                style: pw.TextStyle(fontSize: 12),
              ),
            ],
          ),
        );
      },
    ),
  );

  pdf.addPage(
    pw.Page(
      pageFormat: format,
      build: (pw.Context context) {
        return pw.Container(
          padding: const pw.EdgeInsets.all(24),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Achievements Section
              pw.SizedBox(height: 16),
              pw.Text(
                'Achievements',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Text(
                '- Published an app on Google Play Store',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.Divider(),


              // Languages Section
              pw.SizedBox(height: 16),
              pw.Text(
                'Languages',
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 8),
              pw.Text(
                '- Telugu, English, Hindi',
                style: pw.TextStyle(fontSize: 12),
              ),
            ],
          ),
        );
      },
    ),
  );
  return pdf.save();
}
