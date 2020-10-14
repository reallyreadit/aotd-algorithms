# Readup Article of the Day Algorithms
## Purpose
The purpose of this repository is to take a step in the direction of making the article scoring and ranking algorithms on Readup more transparent to our users. We believe that users have a right to know why they are served certain pieces of content and not others on the apps and platforms that they use. 

This initial version is simply the raw source code of the Article of the Day (AOTD) scoring and selection algorithms. Our goal is to not only make the algorithms better and the source code more readable, but to eventually incorporate additional user interface elements within the app to help users better understand how the platform functions.

## Article of the Day
Article scores are used to facilitate the Article of the Day (AOTD) game on Readup. Reading, commenting and rating activity all contribute to an article's score. Currently `article_api.score_articles()` is run every five minutes to update the scores and `community_reads.set_aotd()` is run at midnight PST to set the new AOTD.

## TODO: Short Term Cleanup
- [ ] Add comments to existing scoring algorithms.
- [ ] Add documentation for objects referenced by these algorithms.

## TODO: Long Term Improvements
- [ ] Create tests for modeling scoring algorithm results over time given some generalized, configurable input activity.
- [ ] Create an improved scoring algorithm that meets the criteria established by the above tests.
- [ ] Design UI components that explain an article's current ranking to the user.

## Contributing
We'd love some help with the long term improvements! There is currently no formal process in place. If you have experience with this sort of thing please reach out to me at jeff@readup.com to discuss before submitting a pull request.