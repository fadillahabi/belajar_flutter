import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/api/ghibli_data.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/models/data_api_model.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/view/login_screen.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/view/profile_screen.dart';

import 'detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String id = "/main_screen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  bool isExpanded = false;
  List<DataGhibli> _allData = [];
  List<DataGhibli> _filteredData = [];
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;

  void _setScreen(Widget screen, int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigasi ke screen baru jika diperlukan
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => screen));
  }

  void _searchMovies(String query) {
    final filtered =
        _allData.where((movie) {
          final titleLower = movie.title?.toLowerCase() ?? '';
          return titleLower.contains(query.toLowerCase());
        }).toList();

    setState(() {
      _filteredData = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchInitialData();
  }

  Future<void> _fetchInitialData() async {
    setState(() => _isLoading = true);
    final data = await fetchUsers();
    data.sort(
      (a, b) =>
          int.parse(b.rtScore ?? '0').compareTo(int.parse(a.rtScore ?? '0')),
    );
    setState(() {
      _allData = data;
      _filteredData = data;
      _isLoading = false;
    });
  }

  Future<void> _refreshData() async {
    setState(() => _isLoading = true);
    final data = await fetchUsers();
    data.sort(
      (a, b) =>
          int.parse(b.rtScore ?? '0').compareTo(int.parse(a.rtScore ?? '0')),
    );
    setState(() {
      _allData = data;
      _filteredData =
          _searchController.text.isEmpty
              ? data
              : data.where((movie) {
                final titleLower = movie.title?.toLowerCase() ?? '';
                return titleLower.contains(
                  _searchController.text.toLowerCase(),
                );
              }).toList();
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayData =
        isExpanded ? _filteredData : _filteredData.take(5).toList();

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: AppColor.pinkMain,
        title: Text('Browse Ghibli'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh Data',
            onPressed: _isLoading ? null : _refreshData,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 230,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Color(0xffC65D7B)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor:
                            Colors
                                .grey[300], // opsional, untuk latar belakang ikon
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color:
                              Colors.white, // atau warna lain sesuai kebutuhan
                        ),
                      ),
                    ),
                    Text(
                      "Fadillah Abi Prayogo",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Navigation Menu Input",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Profile Menu"),
              selected: _selectedIndex == 0,
              onTap: () => _setScreen(ProfileScreenGhibli(), 0),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
              selected: _selectedIndex == 0,
              onTap: () => _setScreen(LoginScreenGhibli(), 1),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Ghibli movie...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: _searchMovies,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Text(
                  "Top Ghibli",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    isExpanded ? "Less" : "More",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.gray88,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child:
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _filteredData.isEmpty
                    ? const Center(child: Text('No data found.'))
                    : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: displayData.length,
                      itemBuilder: (context, index) {
                        final movie = displayData[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailScreen(movie: movie),
                              ),
                            );
                          },
                          child: Card(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            color: AppColor.pinkSecunder,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    movie.image ?? '',
                                    height: 120,
                                    width: 100,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Icon(Icons.broken_image, size: 60),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          movie.title ?? 'No Title',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Row(
                                          children: [
                                            const Text(
                                              "Score: ",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 6,
                                                    vertical: 2,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: Color(0xffE78989),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                movie.rtScore ?? '-',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          "Time: ${movie.runningTime ?? '-'} min",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
