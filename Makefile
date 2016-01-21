CC = g++
CFLAGS = -g -Wall -Wextra

# This configuration assumes a privately built copy of CppUTest
CPPUTEST_HOME = /home/tpalohei/libraries/cpputest
CPPFLAGS += -I$(CPPUTEST_HOME)/include
LD_LIBRARIES = -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

TARGET = test_binary

all: $(TARGET)

$(TARGET): Tests.cpp AllTests.cpp
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $(TARGET) Tests.cpp AllTests.cpp $(LD_LIBRARIES)

clean:
	$(RM) $(TARGET)
