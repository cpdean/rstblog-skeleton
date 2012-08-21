This is a skeleton template for making rstblog easier to use.

I don't really know how rstblog is supposed to be used, but
for now I just want to get it a default installer working.

#Install it

    # checkout this repo
    git clone git://github.com/cpdean/rstblog-skeleton.git sweet-blog
    # install dependencies and everything else
    make install

Now add blog posts by creating .rst files.

Tell `rstblog` to generate the site with

    make build

Now edit `blog-host` to contain the path to where your files are hosted.  For me it's `~/blog/public/` but for you it might be `webmaster@brosblogging.com:~/public/`.  Any valid rsync target should do, just be sure to have the trailing directory slash at the end!

upload the built site with:
    
    make upload

Or if you're lazy, do the build and upload in one shot:

    make all
