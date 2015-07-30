
all: dummy

DOCS_DOCS_FILES = faq intro macros tags tutorial
DOCS_FRONTEND_FILES = wmb wmd wmk wml wmu
DOCS_BACKEND_FILES = p1_ipp p2_mp4h p3_eperl p4_gm4 p5_divert p6_asubst p7_htmlfix p8_htmlstrip p9_slice
DOCS_AUX_FILES = freetable htmlinfo iselect linklint map2html tidy txt2html weblint
DOCS_FILES = index frontend backend incl aux \
	$(patsubst %,docs/wml_%,$(DOCS_DOCS_FILES)) \
	$(patsubst %,frontend/%,$(DOCS_FRONTEND_FILES)) \
	$(patsubst %,backend/wml_%,$(DOCS_BACKEND_FILES)) \
	$(patsubst %,aux/wml_aux_%,$(DOCS_AUX_FILES))

ABOUT_FILES = class index
NEWS_FILES = index timeline list
EXAMPLE_FILES = index demo myself author success
RELATED_FILES = index css dom js perl design tools
DISTRIB_FILES = binary modules/index
HTMLS_NO_EXT = index $(patsubst %,docs/%,$(DOCS_FILES)) \
	$(patsubst %,about/%,$(ABOUT_FILES)) \
	$(patsubst %,news/%,$(NEWS_FILES)) \
	$(patsubst %,example/%,$(EXAMPLE_FILES)) \
	$(patsubst %,related/%,$(RELATED_FILES)) \
	$(patsubst %,distrib/%,$(DISTRIB_FILES))

FINAL_HTMLS = $(patsubst %,%.html,$(HTMLS_NO_EXT))
FINAL_PHTMLS = news/news.phtml news/changelog.phtml distrib/index.phtml \
	distrib/patches.phtml distrib/unpacked.phtml \
	distrib/bugs/index.phtml

COMMON_DEPS = com/tmpl/swpage.wml MyNavData.pm com/tmpl/subnavbar.wml com/misc/distrib.wml

dummy: $(FINAL_HTMLS) $(FINAL_PHTMLS) example/refs.html

COMMON_FLAGS = -DROOT~. -DSERVER=thewml --passoption=2,-X3074 -Icom

$(FINAL_HTMLS) :: %.html: %.wml $(COMMON_DEPS)
	wml $(COMMON_FLAGS) -DFILENAME=$@ -DPHTML=0 -o $@ $<

$(FINAL_PHTMLS) :: %.phtml: %.wml $(COMMON_DEPS)
	wml $(COMMON_FLAGS) -DFILENAME=$@ -DPHTML=1 -o $@ $<

example/refs.html: example/refs.wml example/refs.db
	wml $(COMMON_FLAGS) -DFILENAME=$@ -oALL-PHTML:example/refs.html -oALL-HTML:example/refs.phtml $<

incls:
	perl gen-incls.pl

%.show:
	@echo "$* = $($*)"

