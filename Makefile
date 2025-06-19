CXX = g++
CXXFLAGS = -std=c++17 -Wall -Ilib/include -Ilib/glm
LDFLAGS = -Llib/lib -lglew32 -lglfw3 -lopengl32 -lgdi32

SRC = src/main.cpp
EXE = bin/main.exe

all: $(EXE)

$(EXE): $(SRC)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

run: all
	./$(EXE)

clean:
	rm -f $(EXE)