import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/section_card.dart';
import '../widgets/info_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HydraFacial: Complete Guide',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              _showAboutDialog(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Icon(
                    Icons.spa_outlined,
                    size: 80,
                    color: Colors.white.withOpacity(0.9),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'HydraFacial Treatment',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'A comprehensive guide to understanding the revolutionary skincare treatment',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Content Sections
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Introduction
                  SectionCard(
                    title: '1. Introduction',
                    icon: Icons.article_outlined,
                    children: [
                      const Text(
                        'HydraFacial is a non-invasive, multi-step facial treatment that has revolutionized the skincare industry. '
                        'It combines cleansing, exfoliation, extraction, hydration, and antioxidant protection simultaneously, '
                        'resulting in clearer, more beautiful skin with no discomfort or downtime.',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Developed by Edge Systems (now part of The Beauty Health Company), HydraFacial has become one of the most '
                        'popular facial treatments worldwide, performed every 15 seconds globally.',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                    ],
                  ),

                  // What is HydraFacial
                  SectionCard(
                    title: '2. What is HydraFacial?',
                    icon: Icons.water_drop_outlined,
                    children: [
                      const Text(
                        'HydraFacial is a patented skin treatment available in medical spas and dermatology offices. '
                        'It is also known as "hydradermabrasion" - a process that uses water to gently remove dead skin cells '
                        'while simultaneously delivering moisturizing serums to the skin.',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Key Characteristics:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      InfoTile(
                        icon: Icons.check_circle_outline,
                        title: 'Non-invasive',
                        description: 'No needles, no surgery, no recovery time',
                      ),
                      InfoTile(
                        icon: Icons.check_circle_outline,
                        title: 'Multi-step process',
                        description: 'Combines multiple treatments in one session',
                      ),
                      InfoTile(
                        icon: Icons.check_circle_outline,
                        title: 'Suitable for all skin types',
                        description: 'Can be customized for sensitive, oily, or dry skin',
                      ),
                      InfoTile(
                        icon: Icons.check_circle_outline,
                        title: 'Immediate results',
                        description: 'Visible improvements right after treatment',
                      ),
                    ],
                  ),

                  // The HydraFacial Process
                  SectionCard(
                    title: '3. The HydraFacial Process',
                    icon: Icons.settings_outlined,
                    children: [
                      const Text(
                        'The HydraFacial treatment consists of three main steps, each designed to work synergistically:',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 16),
                      _buildProcessStep(
                        context,
                        '1',
                        'Cleanse + Peel',
                        'Uncover a new layer of skin with gentle exfoliation and relaxing resurfacing. '
                        'This step removes dead skin cells and opens up pores using a gentle chemical peel solution.',
                        Colors.blue,
                      ),
                      const SizedBox(height: 12),
                      _buildProcessStep(
                        context,
                        '2',
                        'Extract + Hydrate',
                        'Remove debris from pores with painless suction while simultaneously nourishing the skin with '
                        'intense moisturizers. The Vortex-Fusion technology uses a vacuum-like tip to extract impurities.',
                        Colors.teal,
                      ),
                      const SizedBox(height: 12),
                      _buildProcessStep(
                        context,
                        '3',
                        'Fuse + Protect',
                        'Saturate the skin\'s surface with antioxidants and peptides to maximize your glow. '
                        'Serums containing hyaluronic acid, peptides, and antioxidants are infused into the skin.',
                        Colors.cyan,
                      ),
                    ],
                  ),

                  // Benefits
                  SectionCard(
                    title: '4. Benefits of HydraFacial',
                    icon: Icons.star_outline,
                    children: [
                      InfoTile(
                        icon: Icons.face_outlined,
                        title: 'Improves Skin Texture',
                        description: 'Smooths rough skin and reduces the appearance of fine lines',
                      ),
                      InfoTile(
                        icon: Icons.wb_sunny_outlined,
                        title: 'Brightens Complexion',
                        description: 'Evens skin tone and reduces hyperpigmentation',
                      ),
                      InfoTile(
                        icon: Icons.water_outlined,
                        title: 'Deep Hydration',
                        description: 'Infuses skin with moisture for a plump, healthy glow',
                      ),
                      InfoTile(
                        icon: Icons.cleaning_services_outlined,
                        title: 'Deep Pore Cleansing',
                        description: 'Removes blackheads and reduces enlarged pores',
                      ),
                      InfoTile(
                        icon: Icons.healing_outlined,
                        title: 'Reduces Acne',
                        description: 'Helps clear congested pores and reduces breakouts',
                      ),
                      InfoTile(
                        icon: Icons.shield_outlined,
                        title: 'Antioxidant Protection',
                        description: 'Protects skin from environmental damage and aging',
                      ),
                    ],
                  ),

                  // Who Should Get HydraFacial
                  SectionCard(
                    title: '5. Who Should Get HydraFacial?',
                    icon: Icons.people_outline,
                    children: [
                      const Text(
                        'HydraFacial is suitable for almost everyone and can address various skin concerns:',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 12),
                      _buildSkinConcernChip('Fine lines and wrinkles'),
                      _buildSkinConcernChip('Elasticity and firmness'),
                      _buildSkinConcernChip('Even tone and vibrancy'),
                      _buildSkinConcernChip('Skin texture'),
                      _buildSkinConcernChip('Brown spots'),
                      _buildSkinConcernChip('Oily and congested skin'),
                      _buildSkinConcernChip('Enlarged pores'),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.amber.shade200),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.info_outline, color: Colors.amber.shade700),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Text(
                                'Note: Pregnant women and those with active rashes, sunburns, or rosacea should consult a dermatologist first.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Treatment Duration and Frequency
                  SectionCard(
                    title: '6. Duration & Frequency',
                    icon: Icons.schedule_outlined,
                    children: [
                      InfoTile(
                        icon: Icons.timer_outlined,
                        title: 'Treatment Duration',
                        description: '30-45 minutes per session',
                      ),
                      InfoTile(
                        icon: Icons.repeat_outlined,
                        title: 'Recommended Frequency',
                        description: 'Once a month for optimal results',
                      ),
                      InfoTile(
                        icon: Icons.trending_up_outlined,
                        title: 'Initial Series',
                        description: '4-6 treatments for significant improvements',
                      ),
                      InfoTile(
                        icon: Icons.event_repeat_outlined,
                        title: 'Maintenance',
                        description: 'Monthly sessions to maintain results',
                      ),
                    ],
                  ),

                  // Before and After Care
                  SectionCard(
                    title: '7. Before & After Care',
                    icon: Icons.medical_services_outlined,
                    children: [
                      const Text(
                        'Before Treatment:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildCareItem('Avoid sun exposure and tanning beds for 48 hours'),
                      _buildCareItem('Stop using retinol products 2-3 days before'),
                      _buildCareItem('Arrive with clean, makeup-free skin'),
                      const SizedBox(height: 16),
                      const Text(
                        'After Treatment:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildCareItem('Avoid direct sun exposure for 24-48 hours'),
                      _buildCareItem('Apply SPF 30+ sunscreen daily'),
                      _buildCareItem('Keep skin hydrated with recommended products'),
                      _buildCareItem('Avoid harsh exfoliants for 48 hours'),
                      _buildCareItem('Do not use hot water or steam rooms for 24 hours'),
                    ],
                  ),

                  // Cost and Availability
                  SectionCard(
                    title: '8. Cost & Availability',
                    icon: Icons.payment_outlined,
                    children: [
                      const Text(
                        'HydraFacial pricing varies based on location, provider, and customization:',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 12),
                      InfoTile(
                        icon: Icons.attach_money_outlined,
                        title: 'Standard Treatment',
                        description: '\$150 - \$300 per session',
                      ),
                      InfoTile(
                        icon: Icons.workspace_premium_outlined,
                        title: 'Deluxe Treatment',
                        description: '\$200 - \$350 (includes LED therapy or boosters)',
                      ),
                      InfoTile(
                        icon: Icons.diamond_outlined,
                        title: 'Platinum Treatment',
                        description: '\$300 - \$450 (includes lymphatic drainage and advanced serums)',
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Available at medical spas, dermatology offices, and luxury spas worldwide.',
                        style: TextStyle(fontSize: 15, height: 1.5, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),

                  // Comparison with Other Treatments
                  SectionCard(
                    title: '9. HydraFacial vs Other Treatments',
                    icon: Icons.compare_arrows_outlined,
                    children: [
                      _buildComparisonItem(
                        'HydraFacial vs Traditional Facial',
                        'HydraFacial uses patented technology for deeper cleansing and hydration, '
                        'while traditional facials rely mainly on manual extraction and massage.',
                      ),
                      const SizedBox(height: 12),
                      _buildComparisonItem(
                        'HydraFacial vs Microdermabrasion',
                        'HydraFacial is gentler and adds hydration, while microdermabrasion only '
                        'exfoliates and can be harsh on sensitive skin.',
                      ),
                      const SizedBox(height: 12),
                      _buildComparisonItem(
                        'HydraFacial vs Chemical Peel',
                        'HydraFacial has no downtime and is less aggressive, while chemical peels '
                        'can cause peeling and require recovery time but may offer deeper results.',
                      ),
                    ],
                  ),

                  // Conclusion
                  SectionCard(
                    title: '10. Conclusion',
                    icon: Icons.summarize_outlined,
                    children: [
                      const Text(
                        'HydraFacial represents a significant advancement in non-invasive skincare treatments. '
                        'Its unique combination of cleansing, exfoliation, extraction, hydration, and antioxidant '
                        'protection delivers immediate and noticeable results with no downtime.',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Whether you\'re dealing with specific skin concerns or simply want to maintain healthy, '
                        'glowing skin, HydraFacial offers a safe, effective, and customizable solution suitable for '
                        'all skin types and ages. Its growing popularity and proven results make it one of the most '
                        'sought-after facial treatments in modern skincare.',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.primary.withOpacity(0.1),
                              Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.spa,
                              size: 48,
                              color: Color(0xFF00BCD4),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Consult with a licensed skincare professional to determine if HydraFacial is right for you.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProcessStep(
    BuildContext context,
    String stepNumber,
    String title,
    String description,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                stepNumber,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkinConcernChip(String concern) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          const Icon(Icons.check, color: Colors.green, size: 20),
          const SizedBox(width: 8),
          Text(
            concern,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _buildCareItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 20, height: 1.2)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonItem(String title, String description) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            style: const TextStyle(fontSize: 14, height: 1.4),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('About This Assignment'),
        content: const SingleChildScrollView(
          child: Text(
            'This comprehensive guide covers all aspects of HydraFacial treatment, '
            'including its process, benefits, costs, and comparisons with other skincare treatments.\n\n'
            'HydraFacial is a revolutionary non-invasive treatment that has transformed modern skincare.',
            style: TextStyle(height: 1.5),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
