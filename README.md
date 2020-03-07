# konachan100.github.io
View most recent 100 posts from Konachan.net:    https://konachan100.github.io/

## Why this project
- Konachan.net index page may unavaliable due to your ISP but its posts still accessable. 
- I always need a quick look of new posts.
- Mobile device users want a suitable HTML layout

## How does it work
Page updating is done by a cloud server that can access Konachan web API, and post content updates once per 5 min, see shell script for detail. during each update, the program fetches post.json and generate static web pages, then git-push to this repo.

Since the static pages update much more frequently than the page generation program source code, I split gh-pages and building program into 2 repos, the other one is *konachan100-src*.

## Post ratings
By default, the questionable and explicit rating is locked by JS. If an user agent tries to access them, it will be set-window-location to root.
When unlocked, "Q", "E" buttons will appear at right bottom corner of the window.

## Dev Requirement
- Python 3.x
- Python Library
  - Jinja2
