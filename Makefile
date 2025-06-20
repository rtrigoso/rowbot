test:
ACTUAL := $(shell ./rowbot)
EXPECTED := 'missing required inputs'
ifneq (,$(findstring $(EXPECTED),$(ACTUAL)))
  $(error missing required inputs, actual output is "$(ACTUAL)")
endif

$(info everything passes)
