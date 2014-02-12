##########################################################################
##  v      #                  The Coq Proof Assistant                   ##
## <O___,, # CNRS-Ecole Polytechnique-INRIA Futurs-Universite Paris Sud ##
##   \VV/  #                                                            ##
##    //   #   Makefile automagically generated by coq_makefile V8.2    ##
##########################################################################

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

#
# This Makefile was generated by the command line :
# coq_makefile -f Make -o Makefile 
#

#########################
#                       #
# Libraries definition. #
#                       #
#########################

CAMLP4LIB:=$(shell $(CAMLBIN)camlp5 -where 2> /dev/null || $(CAMLBIN)camlp4 -where)
OCAMLLIBS:=-I $(CAMLP4LIB) 
COQLIBS:= -R . LinAlg\
  -R ../../Sophia-Antipolis/Algebra/ Algebra
COQDOCLIBS:=-R . LinAlg\
  -R ../../Sophia-Antipolis/Algebra/ Algebra

##########################
#                        #
# Variables definitions. #
#                        #
##########################

CAMLP4:=$(notdir $(CAMLP4LIB))
COQSRC:=$(COQTOP)
COQSRCLIBS:=-I $(COQTOP)/kernel -I $(COQTOP)/lib \
  -I $(COQTOP)/library -I $(COQTOP)/parsing \
  -I $(COQTOP)/pretyping -I $(COQTOP)/interp \
  -I $(COQTOP)/proofs -I $(COQTOP)/tactics \
  -I $(COQTOP)/toplevel -I $(COQTOP)/contrib/cc \
  -I $(COQTOP)/contrib/dp -I $(COQTOP)/contrib/extraction \
  -I $(COQTOP)/contrib/field -I $(COQTOP)/contrib/firstorder \
  -I $(COQTOP)/contrib/fourier -I $(COQTOP)/contrib/funind \
  -I $(COQTOP)/contrib/interface -I $(COQTOP)/contrib/jprover \
  -I $(COQTOP)/contrib/micromega -I $(COQTOP)/contrib/omega \
  -I $(COQTOP)/contrib/ring -I $(COQTOP)/contrib/romega \
  -I $(COQTOP)/contrib/rtauto -I $(COQTOP)/contrib/setoid_ring \
  -I $(COQTOP)/contrib/subtac -I $(COQTOP)/contrib/xml \
  -I $(CAMLP4LIB)
ZFLAGS:=$(OCAMLLIBS) $(COQSRCLIBS)
OPT:=
COQFLAGS:=-q $(OPT) $(COQLIBS) $(OTHERFLAGS) $(COQ_XML)
COQC:=$(COQBIN)coqc
COQDEP:=$(COQBIN)coqdep -c
GALLINA:=$(COQBIN)gallina
COQDOC:=$(COQBIN)coqdoc
CAMLC:=$(CAMLBIN)ocamlc -rectypes -c
CAMLOPTC:=$(CAMLBIN)ocamlopt -rectypes -c
CAMLLINK:=$(CAMLBIN)ocamlc -rectypes
CAMLOPTLINK:=$(CAMLBIN)ocamlopt -rectypes
GRAMMARS:=grammar.cma
CAMLP4EXTEND:=pa_extend.cmo pa_macro.cmo q_MLast.cmo
PP:=-pp "$(CAMLBIN)$(CAMLP4)o -I . -I $(COQTOP)/parsing $(CAMLP4EXTEND) $(GRAMMARS) -impl"

###################################
#                                 #
# Definition of the "all" target. #
#                                 #
###################################

VFILES:=first_page.v\
  support/equal_syntax.v\
  support/more_syntax.v\
  LinAlg/vecspaces_verybasic.v\
  support/finite.v\
  examples/vecspace_Fn.v\
  support/Map2.v\
  examples/vecspace_functionspace.v\
  examples/Matrices.v\
  examples/vecspace_Mmn.v\
  LinAlg/alt_build_vecsp.v\
  examples/infinite_sequences.v\
  support/algebra_omissions.v\
  support/arb_intersections.v\
  LinAlg/subspaces.v\
  examples/antisymmetric_matrices.v\
  examples/symmetric_matrices.v\
  examples/up_lo_triang_mat.v\
  support/seq_set.v\
  support/seq_set_seq.v\
  support/empty.v\
  support/conshdtl.v\
  support/concat.v\
  support/const.v\
  support/omit.v\
  support/pointwise.v\
  support/modify_seq.v\
  support/mult_by_scalars.v\
  support/Map_embed.v\
  support/subseqs.v\
  support/sums.v\
  support/sums2.v\
  support/distinct.v\
  support/cast_seq_lengths.v\
  support/seq_equality.v\
  support/concat_facts.v\
  support/seq_equality_facts.v\
  support/distribution_lemmas.v\
  support/seq_set_facts.v\
  support/omit_facts.v\
  support/distinct_facts.v\
  support/cast_between_subsets.v\
  LinAlg/lin_combinations.v\
  LinAlg/spans.v\
  LinAlg/algebraic_span_facts.v\
  LinAlg/lin_comb_facts.v\
  LinAlg/direct_sum.v\
  LinAlg/lin_dependence.v\
  LinAlg/lin_dep_facts.v\
  support/random_facts.v\
  support/finite_subsets.v\
  support/has_n_elements.v\
  support/counting_elements.v\
  LinAlg/bases.v\
  LinAlg/bases_from_generating_sets.v\
  LinAlg/replacement_theorem.v\
  LinAlg/replacement_corollaries.v\
  LinAlg/bases_finite_dim.v\
  LinAlg/maxlinindepsubsets.v\
  LinAlg/subspace_dim.v\
  LinAlg/subspace_bases.v\
  LinAlg/Linear_Algebra_by_Friedberg_Insel_Spence.v\
  LinAlg/Lin_trafos.v\
  examples/trivial_spaces.v\
  examples/Matrix_multiplication.v\
  extras/ring_module.v\
  extras/Inter_intersection.v\
  extras/finite_misc.v\
  extras/restrict.v\
  extras/Matrix_related_defs.v\
  extras/before_after.v\
  extras/matrix_algebra.v\
  extras/Equality_structures.v
VOFILES:=$(VFILES:.v=.vo)
GLOBFILES:=$(VFILES:.v=.glob)
VIFILES:=$(VFILES:.v=.vi)
GFILES:=$(VFILES:.v=.g)
HTMLFILES:=$(VFILES:.v=.html)
GHTMLFILES:=$(VFILES:.v=.g.html)

all: $(VOFILES) 
spec: $(VIFILES)

gallina: $(GFILES)

html: $(GLOBFILES) $(VFILES)
	- mkdir html
	$(COQDOC) -toc -html $(COQDOCLIBS) -d html $(VFILES)

gallinahtml: $(GLOBFILES) $(VFILES)
	- mkdir html
	$(COQDOC) -toc -html -g $(COQDOCLIBS) -d html $(VFILES)

all.ps: $(VFILES)
	$(COQDOC) -toc -ps $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`

all-gal.ps: $(VFILES)
	$(COQDOC) -toc -ps -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`



####################
#                  #
# Special targets. #
#                  #
####################

.PHONY: all opt byte archclean clean install depend html

%.vo %.glob: %.v
	$(COQC) $(COQDEBUG) $(COQFLAGS) $*

%.vi: %.v
	$(COQC) -i $(COQDEBUG) $(COQFLAGS) $*

%.g: %.v
	$(GALLINA) $<

%.tex: %.v
	$(COQDOC) -latex $< -o $@

%.html: %.v %.glob
	$(COQDOC) -html $< -o $@

%.g.tex: %.v
	$(COQDOC) -latex -g $< -o $@

%.g.html: %.v %.glob
	$(COQDOC) -html -g $< -o $@

%.v.d: %.v
	$(COQDEP) -slash $(COQLIBS) "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

byte:
	$(MAKE) all "OPT:=-byte"

opt:
	$(MAKE) all "OPT:=-opt"

install:
	mkdir -p `$(COQC) -where`/user-contrib
	cp -f $(VOFILES) `$(COQC) -where`/user-contrib

Makefile: Make
	mv -f Makefile Makefile.bak
	$(COQBIN)coq_makefile -f Make -o Makefile


clean:
	rm -f *.cmo *.cmi *.cmx *.o $(VOFILES) $(VIFILES) $(GFILES) *~
	rm -f all.ps all-gal.ps all.glob $(VFILES:.v=.glob) $(HTMLFILES) $(GHTMLFILES) $(VFILES:.v=.tex) $(VFILES:.v=.g.tex) $(VFILES:.v=.v.d)
	- rm -rf html

archclean:
	rm -f *.cmx *.o


-include $(VFILES:.v=.v.d)
.SECONDARY: $(VFILES:.v=.v.d)

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

