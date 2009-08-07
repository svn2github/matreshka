UNIDATA = unicode/5.1.0/ucd
UCADATA = unicode/UCA/5.1.0
CLDR = unicode/cldr/1.7.1

all:
	gprbuild -p -Pgnat/matreshka_league.gpr

ucd:
	gprbuild -p -Pgnat/tools.gpr
	.objs/gen_ucd $(UNIDATA) $(UCADATA) source/league/ucd
#	.objs/gen_segments $(CLDR)

check: all
	gprbuild -p -Pgnat/matreshka_league_tests.gpr
	.objs/character_cursor_test
	.objs/grapheme_cluster_cursor_test $(UNIDATA)
	.objs/case_conversion_test
	.objs/case_folding_test
	.objs/normalization_test $(UNIDATA)
	.objs/additional_normalization_test
	.objs/collation_test $(UCADATA)

#all:
#	gprbuild -p -Pmatreshka
#
#init:
#	sqlite3 -batch -init source/opm/sqlite/schema.sql person.db ''
#	sqlite3 -batch -init demo/person.sql person.db ''

clean:
	rm -rf .objs
