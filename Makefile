TARGETS=atsc3rate dvbs2rate dvbt2rate dvbtrate
LIBS=-lm
CFLAGS=-Wall --std=c99

null  :=
space := $(null) $(null)

%: %.c
	gcc $(CFLAGS) $(foreach f,$^,-g $(f)) $(LIBS) -o $@

all:
	$(MAKE) $(TARGETS)

clean:
	@rm ${TARGETS}
