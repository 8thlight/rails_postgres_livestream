user_1 = User.create(email: "bob@email.com", password: "password", username: "bob1234", bio: "He is a neat guy who loves puppies!")
user_2 = User.create(email: "chris@email.com", password: "password", username: "chris1234", bio: "He is a swell guy who loves kittens!")

article_1 = Article.create(title: "How to Groom Your Puppy", body: "Use a brush, give lots of belly rubs.", description: "Step by step instructions on how to groom your puppy.", user: user_1)
article_1.tag_list.add("dogs", "puppers", "puppies", "belly rubs", "grooming", "love")
article_1.save

article_2 = Article.create(title: "How to Groom Your Kitten", body: "Use a comb, avoid getting scratched.", description: "Step by step instructions on how to groom your kitten.", user: user_1)
article_2.tag_list.add("kittens", "cats", "combs", "grooming", "love")
article_2.save

article_3 = Article.create(title: "How to Groom Your Elephant", body: "Use a hose, give lots of peanuts.", description: "Step by step instructions on how to groom your elephant.", user: user_1)
article_3.tag_list.add("elephants", "peanuts", "grooming")
article_3.save

Favorite.create(article: article_1, user: user_1)
Favorite.create(article: article_2, user: user_1)
Favorite.create(article: article_2, user: user_2)

Comment.create(body: "Very informative, thanks!", user: user_2, article: article_3)
