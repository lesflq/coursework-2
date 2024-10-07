CXX = g++
CXXFLAGS = -Iinclude -Wall -Wextra
LDFLAGS = -Llib -lcalc

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
LIB_DIR = lib

SRC = $(wildcard $(SRC_DIR)/*.cpp)
OBJ = $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

EXEC = $(BIN_DIR)/calculator
LIB = $(LIB_DIR)/libcalc.a

.PHONY: all clean

all: $(EXEC)

$(EXEC): $(OBJ) $(LIB)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $@ $(LDFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(LIB): $(OBJ)
	@mkdir -p $(LIB_DIR)
	ar rcs $@ $^

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(LIB_DIR)