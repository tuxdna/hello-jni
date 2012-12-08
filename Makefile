JDK_HOME=/usr/lib/jvm/java-openjdk
SRC_DIR = .
INCLUDES = -I$(SRC_DIR) -I$(JDK_HOME)/include -I$(JDK_HOME)/include/linux

all: headers shared class

headers:
	javah -jni HelloWorld

class:
	javac HelloWorld.java

shared: 
	g++  $(INCLUDES) -fPIC -c -g -Wall HelloWorld.c
	g++ -shared -o libHelloWorld.so HelloWorld.o


clean:
	rm -f *.o *.so *.class *~
