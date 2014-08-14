# Book Orbit

[Book Orbit](http://bookorb.it) is a resource database for bookmarking your resources and organizing them by tag. It was originally built with the Sinatra framework. This is the Rails version. View the Sinatra repository [here](http://github.com/astopo/book-orbit).

# Features
1. Create a new library by appending "/libraryname" to end of url. Example: bookorb.it/larry
2. Add bookmarks by url and add optional collection (tag) names to the bookmark.
3. Nokogiri: Bookmarks are automatically scraped for the title, description and keywords for display.
4. Collections are automatically generated if they previously did not exist when added to a bookmark.
5. Collections are automatically deleted if they are empty.
6. A new bookmark with no collection names is automatically added to the "uncategorized" collection.
7. Delete bookmarks from your library.
8. Edit a bookmark's collections after they have been added.
9. Searching bookmarks will return results that matched in the url, title, description and tag names.
