TARGET   := __PROJECT_NAME__

# directories
SRCDIR   := src
BUILDDIR := build

# compiler flags
CC       := cc
CFLAGS   := -Wall -Wextra

# list of files being handled.
SRC      := $(shell find $(SRCDIR) -name "*.c")
OBJ      := $(patsubst $(SRCDIR)/%.c, $(BUILDDIR)/%.o, $(SRC))
DEP      := $(patsubst $(SRCDIR)/%.c, $(BUILDDIR)/%.d, $(SRC))

all: $(BUILDDIR)/$(TARGET)

-include $(DEP)

$(BUILDDIR)/$(TARGET): $(OBJ)
	$(CC) $^ -o $@

$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	mkdir -p $(@D)
	$(CC) -MMD -MP -c $< -o $@ $(CFLAGS)

run: $(BUILDDIR)/$(TARGET)
	$(BUILDDIR)/./$(TARGET)

clean:
	rm -rf $(BUILDDIR)

.PHONY: all clean run
