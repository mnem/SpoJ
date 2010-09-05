TARGET	= jukebox
OBJS	= jukebox.o \
		  spotify_appkey.o \
		  openal-audio.o \
		  audio.o

SRC		= src
INCLUDE	= src spotify
BIN		= bin
LIB		= spotify

OUT_OBJS=$(addprefix $(BIN)/,$(OBJS))

CC		= gcc
DEBUG	= -g
CFLAGS	+= -Wall $(DEBUG) -std=c99 $(addprefix -iquote,$(INCLUDE))
LFLAGS	+= -Wall $(DEBUG) -framework OpenAL -L$(LIB) -lspotify


$(TARGET) : $(OUT_OBJS)
	$(CC) $(LFLAGS) $(OUT_OBJS) -o $(BIN)/$(TARGET)

$(BIN)/%.o : $(SRC)/%.c
	$(COMPILE.c) $(OUTPUT_OPTION) $< -o $@

$(BIN)/%.o : $(LIB)/%.c
	$(COMPILE.c) $(OUTPUT_OPTION) $< -o $@

.PHONY : clean
clean :
	-rm $(OUT_OBJS) $(BIN)/$(TARGET)
