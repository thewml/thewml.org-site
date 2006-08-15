#!/sw/bin/perl
##
##  update.pl -- update .wml files
##  Copyright (c) 1997 Ralf S. Engelschall, All Rights Reserved. 
##

#$modroot = "/sw/pkg/wml/src/wml_include";
$modroot = "../../distrib/latest/wml_include";
foreach $file (glob("$modroot/*.src"), 
               glob("$modroot/[a-z]*/*.src"),
               glob("$modroot/sys/*.src.in")) {
    $to = $file;
    $to =~ s|$modroot/||;
    $to =~ s|\.src(\.in)?$||;
    $to =~ s|/|::|g;
    $to =~ s|^|wml::|;

    @IS = stat($file);
    @OS = stat("$to.pod");
    if ($IS[9] > $OS[9] || not -f "$to.pod") {
        print "updating $to\n";
		system("cp -p $file $to.pod");
        open(TO, ">$to.wml");
        print TO <<"EOT";
#use wml::tmpl::swpage area=docs subarea
<page_title name=\"Documentation: Include File $to\">
#use wml::fmt::pod

<p>
#include "docs/SNB" area=incl subarea

EOT
        print TO <<'EOT';
{: [[s|(wml::.+?)\(([1-7])\)|<a href="$1.html">$1</a>($2)|g]]
#   Fixes for pod2html-5.005.  IT SUCKS
[[s|&lt;(/?STRONG)&gt;|<$1>|g]]
[[s|&lt;(/?CODE)&gt;|<$1>|g]]
[[s|\n(<FONT SIZE=)|$1|sg]]
[[s|\&amp;amp;lt;|\&lt;|g]]
[[s|\&amp;lt;|\&lt;|g]]
[[s|\&amp;amp;gt;|\&gt;|g]]
[[s|\&amp;gt;|\&gt;|g]]
[[s|\&amp;amp;|\&amp;|g]]
EOT
        print TO <<"EOT";
<: print &wml_fmt_pod({
        FILE => "docs/incl/$to.pod",
        KEEPINDEX  => 1,
        NONETSCAPE => 1,
   }); :>
:}
EOT
        close(TO);
    }
}

##EOF##
