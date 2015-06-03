article_1 = Article.create(title: "Black hole glimpsed playing cosmic billiards",
                          online_location: "http://www.bbc.com/news/science-environment-32915126",
                          author_name: "Jonathan Webb")

article_2 = Article.create(title: "Encryption key to free speech, says UN report",
                          online_location: "http://www.bbc.com/news/technology-32916002")

reading_list = ReadingList.create(title: "read it later")

ArticleReadingList.create(article_id: article_1.id, reading_list_id: reading_list.id)

ArticleReadingList.create(article_id: article_2.id, reading_list_id: reading_list.id)