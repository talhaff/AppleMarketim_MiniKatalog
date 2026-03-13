import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GiftStoreScreen extends StatelessWidget {
  const GiftStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Özel Fırsatlar',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          _buildPromoCard(
            context,
            title: "Pro Performans",
            description:
                "Yüksek güç gerektiren profesyonel iş akışları ve ağır render işlemleri için sınırları zorlayın. Tüm Pro modellerinde geçerli %20 indirim fırsatını kaçırmayın.",
            code: "PROJE20",
            color1: const Color(0xFF6366F1),
            color2: const Color(0xFFA855F7),
            icon: Icons.computer_rounded,
          ),
          const SizedBox(height: 20),
          _buildPromoCard(
            context,
            title: "Odak Modu Açık",
            description:
                "Kampüs gürültüsünü engelleyin ve kodunuza odaklanın. AirPods Pro serisinde geçerli net %15 indirim.",
            code: "ODAK15",
            color1: const Color(0xFF11998E),
            color2: const Color(0xFF38EF7D),
            icon: Icons.headphones_rounded,
          ),
          const SizedBox(height: 20),
          _buildPromoCard(
            context,
            title: "Akıllı Kurulum",
            description:
                "Herhangi bir MacBook alımında çalışma masanız için bedava HomePod Mini kazanın.",
            code: "BEDAVASES",
            color1: const Color(0xFFFF416C),
            color2: const Color(0xFFFF4B2B),
            icon: Icons.speaker_rounded,
          ),
        ],
      ),
    );
  }

  Widget _buildPromoCard(
    BuildContext context, {
    required String title,
    required String description,
    required String code,
    required Color color1,
    required Color color2,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: color1.withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    code,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: color1,
                      letterSpacing: 2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: code));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 10),
                              Text('$code kodu kopyalandı!'),
                            ],
                          ),
                          backgroundColor: Colors.green.shade600,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F6FF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.copy_rounded,
                        color: Colors.black87,
                        size: 18,
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
  }
}
