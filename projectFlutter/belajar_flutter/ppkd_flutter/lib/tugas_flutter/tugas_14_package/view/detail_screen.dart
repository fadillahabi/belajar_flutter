import 'package:flutter/material.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/api/ghibli_data.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/models/data_api_model.dart';

class DetailScreen extends StatefulWidget {
  final DataGhibli movie;

  const DetailScreen({super.key, required this.movie});
  static const String id = "/detail_screen";

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late DataGhibli _movie;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _movie = widget.movie;
  }

  Future<void> _refreshData() async {
    setState(() => _isLoading = true);
    try {
      final freshData = await fetchUsers(); // Fetch all movies again
      final updatedMovie = freshData.firstWhere(
        (movie) => movie.id == _movie.id,
        orElse: () => _movie,
      );
      setState(() {
        _movie = updatedMovie;
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Failed to refresh: $e")));
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                // tooltip: 'Refresh',
                onPressed: _isLoading ? null : _refreshData,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    _movie.movieBanner ?? '',
                    fit: BoxFit.cover,
                    errorBuilder:
                        (_, __, ___) => Container(
                          color: Colors.grey,
                          child: const Center(
                            child: Icon(Icons.broken_image, size: 50),
                          ),
                        ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black45, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _movie.title ?? 'No Title',
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    if (_movie.originalTitle != null)
                      Text(
                        '${_movie.originalTitle} (${_movie.originalTitleRomanised ?? ''})',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[600],
                        ),
                      ),
                    const SizedBox(height: 12),
                    Text(
                      _movie.description ?? 'No description',
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 12),
                    _infoItem("🎬 Director", _movie.director),
                    _infoItem("🎥 Producer", _movie.producer),
                    _infoItem("📅 Release", _movie.releaseDate),
                    _infoItem("⏱ Duration", "${_movie.runningTime ?? '-'} min"),
                    _infoItem("⭐ Score", _movie.rtScore),
                    if (_isLoading)
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoItem(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label: ",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          Expanded(
            child: Text(
              value ?? '-',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
