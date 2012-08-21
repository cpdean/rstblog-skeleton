This is a skeleton template for making rstblog easier to use.

I don't really know how rstblog is supposed to be used, but
for now I just want to get it a default installer working.

I really like how rst is being used to generate flask documentation,
and I like the idea of having a static site/document generator.

#Install it

Download this repo, and checkout the dependency rstblog.

    # checkout this repo
    git clone git://github.com/cpdean/rstblog-skeleton.git sweet-blog
    # pull in dependencies
    cd sweet-blog/
    git submodule init
    git submodule upgrade


Then use virtualenv to house the installation, and install rstblog to the virtualenv.

    # make the virtualenv for now the name is important
    # because rstblog will be configured to ignore building
    # and serving its contents
    virtualenv e
    source e/bin/activate
    pushd rstblog
    python setup.py install
    popd
    deactivate

Now add blog posts by creating .rst files.

Tell `rstblog` to generate the site with

    make build

#todo
add the dir where your blog is located for serving on the internet

implement upload script, with easy config
