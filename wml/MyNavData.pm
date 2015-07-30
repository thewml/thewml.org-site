package MyNavData;

use strict;
use warnings;

my $hosts =
{
    'thewml' =>
    {
        'base_url' => "http://thewml.org/",
    },
};

my $tree_contents =
{
    'host' => "thewml",
    'text' => "WML Home",
    'title' => "Website META Language Homepage",
    'subs' =>
    [
        {
            'text' => "Title",
            'url' => "",
        },
        {
            'text' => "About",
            'url' => "about/",
            'subs' =>
            [
                {
                    'text' => "Classify",
                    'url' => "about/class.html",
                },
            ],
        },
        {
            'text' => "News",
            'url' => "news/",
            'subs' =>
            [
                {
                    'text' => "Timeline",
                    'url' => "news/timeline.html",
                },
                {
                    'text' => "ChangeLog",
                    'url' => "news/changelog.phtml",
                },
                {
                    'text' => "News",
                    'url' => "news/news.phtml",
                },
                {
                    'text' => "Mailing List",
                    'url' => "news/list.html",
                },
            ],
        },
        {
            'text' => "Docs",
            'url' => "docs/",
            'expand' => { 're' => "^docs/", },
            'subs' =>
            [
                {
                    'url' => "docs/frontend.html",
                    'text' => "Frontends",
                    'subs' =>
                    [
                        {
                           'url' => "docs/frontend/wml.html",
                           'text' => "wml",
                        },
                        {
                           'url' => "docs/frontend/wmk.html",
                           'text' => "wmk",
                        },
                        {
                           'url' => "docs/frontend/wmd.html",
                           'text' => "wmd",
                        },
                        {
                           'url' => "docs/frontend/wmb.html",
                           'text' => "wmb",
                        },
                        {
                           'url' => "docs/frontend/wmu.html",
                           'text' => "wmu",
                        },
                   ],
                },
                {
                    'url' => "docs/backend.html",
                    'text' => "Backends",
                    'subs' =>
                    [
                        {
                           'url' => "docs/backend/wml_p1_ipp.html",
                           'text' => "p1_ipp",
                        },
                        {
                           'url' => "docs/backend/wml_p2_mp4h.html",
                           'text' => "p2_mp4h",
                        },
                        {
                           'url' => "docs/backend/wml_p3_eperl.html",
                           'text' => "p3_eperl",
                        },
                        {
                           'url' => "docs/backend/wml_p4_gm4.html",
                           'text' => "p4_gm4",
                        },
                        {
                           'url' => "docs/backend/wml_p5_divert.html",
                           'text' => "p5_divert",
                        },
                        {
                           'url' => "docs/backend/wml_p6_asubst.html",
                           'text' => "p6_asubst",
                        },
                        {
                           'url' => "docs/backend/wml_p7_htmlfix.html",
                           'text' => "p7_htmlfix",
                        },
                        {
                           'url' => "docs/backend/wml_p8_htmlstrip.html",
                           'text' => "p8_htmlstrip",
                        },
                        {
                           'url' => "docs/backend/wml_p9_slice.html",
                           'text' => "p9_slice",
                        },
                   ],
                },
                {
                    'url' => "docs/incl.html",
                    'text' => "Includes",
                },
                {
                    'url' => "docs/aux.html",
                    'text' => "Auxilliaries",
                },
            ],
        },
        {
            'text' => "Example",
            'url' => "example/",
            'subs' =>
            [
                {
                    'text' => "Demo Pages",
                    'url' => "example/demo.html",
                },
                {
                    'text' => "WML Itself",
                    'url' => "example/myself.html",
                },
                {
                    'text' => "Author Refs",
                    'url' => "example/author.html",
                },
                {
                    'text' => "User Refs",
                    'url' => "example/refs.html",
                },
            ],
        },
        {
            'text' => "Distrib",
            'url' => "distrib/index.phtml",
            'subs' =>
            [
                {
                    'text' => "Patches",
                    'url' => "distrib/patches.phtml",
                },
                {
                    'text' => "Unpacked",
                    'url' => "distrib/unpacked.phtml",
                },
                {
                    'text' => "Binaries",
                    'url' => "distrib/binary.html",
                },
                {
                    'text' => "Bugs",
                    'url' => "distrib/bugs/index.phtml",
                },
                {
                    'text' => "Modules",
                    'url' => "distrib/modules/",
                },
            ],
        },
        {
            'text' => "Related",
            'url' => "related/",
            'subs' =>
            [
                {
                    'text' => "CSS",
                    'url' => "related/css.html",
                },
                {
                    'text' => "DOM",
                    'url' => "related/dom.html",
                },
                {
                    'text' => "JavaScript",
                    'url' => "related/js.html",
                },
                {
                    'text' => "Perl",
                    'url' => "related/perl.html",
                },
                {
                    'text' => "Design",
                    'url' => "related/design.html",
                },
                {
                    'text' => "Tools",
                    'url' => "related/tools.html",
                },
            ],
        },
    ],
};

sub get_params
{
    return
        (
            'hosts' => $hosts,
            'tree_contents' => $tree_contents,
        );
}

1;
