
CC = gcc


PROCESS = process_creation
OUTPUT = output_program
SIMPLE = simple_program
PROCESS_SRC = process_creation.c
LINKER_SRC = file1.c file2.c
LOADER_SRC = simple_program.c


all: $(PROCESS) $(OUTPUT) $(SIMPLE)


$(PROCESS): $(PROCESS_SRC)
	$(CC) $(PROCESS_SRC) -o $(PROCESS)


$(OUTPUT): $(LINKER_SRC)
	$(CC) $(LINKER_SRC) -o $(OUTPUT)


$(SIMPLE): $(LOADER_SRC)
	$(CC) $(LOADER_SRC) -o $(SIMPLE)


clean:
	rm -f $(PROCESS) $(OUTPUT) $(SIMPLE)
