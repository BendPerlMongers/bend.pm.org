# Bend Perl Mongers website

Install the Template CPAN module.

From within the dotcom directory, run "bin/build -a".

The output directory will have what should go in the web root.

It works best to have a local web server running to point to the
output directory...

If you have something like "local.bend.pm" in your /etc/hosts
file, you can have a minimal lighttpd config:

$HTTP["host"] == "local.bend.pm" {
  server.document-root = "/home/me/bend.pm.org/output"
}

The build script can be expanded to include stuff like a markdown
processing step or something, but at that point I start to think
we should have a makefile.

