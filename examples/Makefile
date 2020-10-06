# Clear builtin recipes for exe targets
%: %.c
%: %.o

# Intermediate recipe for loadseg hunk targets
.SUFFIXES: .elf
%: %.elf
	elf2hunk $< $@

%.elf: %.o
	$(CC) -o $@ $(LDFLAGS) $<

