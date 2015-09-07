# Bend Perl Mongers website

Install the Template CPAN module.

### Deploy to GitHub Pages

You must be an authorized user on the repository, or else you can send pull requests.

#### First time deploying:
```
bin/build -a
cd output
git init
git remote add upstream git@github.com:BendPerlMongers/bend.pm.org.git
git fetch upstream
git reset upstream/gh-pages
touch .
git add -A .
git commit -m "rebuild pages"
git push upstream HEAD:gh-pages
```

#### Subsequent deploys:
```
bin/build -a
cd output
git add -A .
git commit -m "rebuild pages"
git push upstream HEAD:gh-pages  (may need first: git pull upstream gh-pages)
```

## Web Server Setup

It works best to have a local web server running to point to the
output directory...

If you have something like "local.bend.pm" in your /etc/hosts
file, you can have a minimal lighttpd config:

    $HTTP["host"] == "local.bend.pm" {
      server.document-root = "/home/me/bend.pm.org/output"
    }

Or for nginx:

    server {
        server_name  local.bend.pm;
        root  /home/me/bend.pm.org/output;
    }

The build script can be expanded to include stuff like a markdown
processing step or something, but at that point I start to think
we should have a makefile.
