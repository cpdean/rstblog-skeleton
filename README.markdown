This is a skeleton template for making rstblog easier to use.

I don't really know how rstblog is supposed to be used, but
for now I just want to get it a default installer working.

#Install it

    # checkout this repo
    git clone git://github.com/cpdean/rstblog-skeleton.git sweet-blog
    # install dependencies and everything else
    make install


Now edit `blog-host` to contain the path to where your files are hosted.  For me it's `~/blog/public/` but for you it might be `webmaster@brosblogging.com:~/public/`.  Any valid rsync target should do, just be sure to have the trailing directory slash at the end!

Use it
------

Now add blog posts by creating .rst files, and mark their creation date by putting them in folders structured like
    
    rstblog-skeleton/2012/08/20/what.rst

Rstblog will read directories like that and tag them with the correct date in your archives and in the front page's list of posts.

You can also put .rst files in the top level directory and it'll make individual pages for them that you can link to from anywhere.

    rstblog-skeleton/about.rst
    rstblog-skeleton/resume.rst

Tell `rstblog` to generate the site with

    make build

Upload the built site with:
    
    make upload

Or if you're lazy, do the build and upload in one shot:

    make all
