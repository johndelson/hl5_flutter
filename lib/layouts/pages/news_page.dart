import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:holedo/layouts/pages/news/NewsSingle/jobs_no_jobs.dart';
import 'package:holedo/layouts/pages/news/NewsSingle/news_single_logged_in.dart';
import 'package:holedo/layouts/pages/news/NewsSingle/news_single_logged_out.dart';
import 'package:holedo/main.dart';
import 'package:holedo/models/holedoapi/article.dart';
import 'package:holedo/models/models.dart';
import 'package:holedo/layouts/page_scaffold.dart';

class NewsPage extends StatelessWidget {
  final String? id;
  final String? slug;
  const NewsPage({Key? key, this.id, this.slug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsController = holedoDatabase.news;
    final featuredNews =
        newsController.fetchArticles(context: context, type: 'featured');

    final categories = Get.put(HoledoDatabase())
        .articleCategories
        .where((category) => category.menuItem == true);
    final appState = Provider.of<AppState>(context, listen: false);
    return PageScaffold(
      title: 'Home Page',
      body: !appState.isLoggedIn
          ? NewsSingleLoggedOutScreen()
          : NewsSingleLoggedInScreen(), //NewsSingleJobs(),
    );
  }

  @override
  Widget build2(BuildContext context) {
    return PageScaffold(
      title: 'News Article',
      body: FutureBuilder(
        future: Get.put(HoledoDatabase().news).getArticle(slug: slug),
        builder: (context, AsyncSnapshot<Article> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, index) => Card(
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (snapshot.data!.bannerImage!.length != 0)
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  snapshot.data!.bannerImage.toString()),
                              fit: BoxFit.cover,
                              repeat: ImageRepeat.noRepeat,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          height: 300,
                          child: snapshot.data!.bannerImage != null
                              ? null
                              : Icon(
                                  CupertinoIcons.news,
                                  size: 55,
                                  color: Colors.grey,
                                ),
                        ),
                      SizedBox(height: 20),
                      Text(
                        snapshot.data!.title.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        snapshot.data!.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                          child: Html(
                        data: snapshot.data!.content,
                      )),
                    ],
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}

class NewsPageASD extends StatelessWidget {
  final String? id;
  final String? slug;
  const NewsPageASD({Key? key, this.id, this.slug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('slug:?? ${slug}');

    final featuredNews = holedoDatabase.news.fetchArticles(context: context);
    final tabs = Get.put(HoledoDatabase())
        .articleCategories
        .where((category) => category.menuItem == true);

    print('articles: ${featuredNews.toString()}');

    print('categoriess: ${tabs.toString()}');
    return PageScaffold(
      title: 'ASDASDe',
      body: Text('slug:?? ${slug} '),
    );
  }
}
