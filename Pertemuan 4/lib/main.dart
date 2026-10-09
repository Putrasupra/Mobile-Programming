import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'widgets/app_button.dart';


// Padding card     : 16 + 5 = 21
// Rounded card     : 8  + 5 = 13
// Tinggi tombol    : 40 + 5 = 45
// Rounded tombol   : 4  + 5 = 9
// Ukuran avatar    : 40 + (2×5) = 50
// Jarak nama & NIM : 8  + 5 = 13

const double _cardPadding = 21;
const double _cardRadius = 13;
const double _buttonHeight = 45;
const double _buttonRadius = 9;
const double _avatarSize = 50;
const double _nameNimSpacing = 13;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card'),
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_cardRadius),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(_cardPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Foto profil / avatar
                  CircleAvatar(
                    radius: _avatarSize / 2,
                    backgroundColor: const Color(0xFF1565C0),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Nama lengkap
                  const Text('Ase Ananda Putra'),

                  // Jarak antara nama dan NIM
                  SizedBox(height: _nameNimSpacing),

                  // NIM
                  const Text('20230801145'),

                  const SizedBox(height: 8),

                  // Program studi
                  const Text('Teknik Informatika'),

                  const SizedBox(height: 16),

                  // Deskripsi
                  const Text(
                    'Saya adalah mahasiswa Esa Unggul cabang Bekasi, '
                    'berumur 21 tahun saat ini sedang belajar mobile programming.',
                  ),

                  const SizedBox(height: 24),

                  // Tombol GitHub
                  AppButton(
                    label: 'Kunjungi GitHub Saya',
                    icon: Icons.open_in_new,
                    url: 'https://github.com/Putrasupra/Mobile-Programming/tree/main/Pertemuan%204',
                    height: _buttonHeight,
                    borderRadius: _buttonRadius,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
