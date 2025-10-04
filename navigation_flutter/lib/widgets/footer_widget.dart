import 'package:flutter/material.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget footer yang ditampilkan di bagian bawah setiap halaman
/// Menampilkan informasi aplikasi dan developer
class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.paddingLarge,
        horizontal: AppConstants.spacingXLarge,
      ),
      decoration: _buildDecoration(),
      child: Column(
        children: [
          _buildAppName(),
          const SizedBox(height: AppConstants.spacingMedium),
          _buildDivider(),
          const SizedBox(height: AppConstants.spacingMedium),
          _buildDeveloperInfo(),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue[700]!, Colors.blue[900]!],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withValues(alpha: 0.3),
          blurRadius: 10,
          offset: const Offset(0, -3),
        ),
      ],
    ); 
  }

  Widget _buildAppName() {
    return const Text(
      'Shopping App',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      width: 1000,
      color: Colors.white.withValues(alpha: 0.3),
    );
  }

  Widget _buildDeveloperInfo() {
    return const Column(
      children: [
        Text(
          'Erfin Jauhari Dwi Brian',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '2341760088',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
