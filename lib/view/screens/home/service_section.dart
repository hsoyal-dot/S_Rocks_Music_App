import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_homepage/core/assets/app_images.dart';
import 'package:s_rocks_music_homepage/view/screens/home/viewmodels/service_view_model.dart';
import 'package:s_rocks_music_homepage/view/screens/home/widgets/service_detail_page.dart';

class ServiceSection extends StatefulWidget {
  const ServiceSection({super.key});


  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  
  @override
void initState(){
  super.initState();

  Future.microtask(() {
    final viewModel = Provider.of<ServiceViewModel>(context, listen: false);
    viewModel.fetchServices().then((_) {
      print("Services fetched successfuly.");
    }).catchError((error) {
      print("Error fetching services: $error");
    });
    
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Consumer<ServiceViewModel>(
      builder: (context, viewModel, child) {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (viewModel.error != null) {
          return Center(child: Text('Error: ${viewModel.error}'));
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            children: viewModel.services.map((service) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceDetailPage(serviceTitle: service.title),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(30, 30, 36, 1),
                    image: DecorationImage(
                      image: AssetImage(service.bgImg),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(47, 47, 57, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SvgPicture.asset(
                          service.iconAsset,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              service.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              service.description,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color.fromRGBO(200, 200, 210, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        AppImages.rightarrow,
                        height: 16,
                        width: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}