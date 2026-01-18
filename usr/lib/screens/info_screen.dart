import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Varicose Veins'),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'What are Varicose Veins?'),
            const Text(
              'Varicose veins are twisted, enlarged veins. Any superficial vein may become varicosed, but the veins most commonly affected are those in your legs. That\'s because standing and walking upright increases the pressure in the veins of your lower body.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'How Herbal Gels Help'),
            const Text(
              'Topical herbal remedies can provide symptomatic relief and support vein health through several mechanisms:',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 10),
            _buildBulletPoint('Anti-inflammatory action reduces swelling and pain.'),
            _buildBulletPoint('Venotonic properties help strengthen vein walls.'),
            _buildBulletPoint('Improved circulation prevents blood pooling.'),
            _buildBulletPoint('Cooling effects soothe heavy, tired legs.'),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Key Herbs to Look For'),
            _buildHerbCard(
              context,
              'Horse Chestnut',
              'Contains aescin, which helps seal leaking capillaries and improve elasticity of veins.',
            ),
            _buildHerbCard(
              context,
              'Witch Hazel',
              'A natural astringent that can shrink blood vessels and reduce inflammation.',
            ),
            _buildHerbCard(
              context,
              'Gotu Kola',
              'Stimulates production of collagen and elastin, essential for healthy vessel walls.',
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber[200]!),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: Colors.amber),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Disclaimer: These products are for supportive care. Always consult a healthcare professional for severe cases or if you have underlying health conditions.',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.green[800],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16, height: 1.4))),
        ],
      ),
    );
  }

  Widget _buildHerbCard(BuildContext context, String herb, String desc) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(herb, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green[700])),
            const SizedBox(height: 4),
            Text(desc, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
