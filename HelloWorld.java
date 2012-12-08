public class HelloWorld
{
    public native void print();

    static {
	System.out.println("Loading shared lib");
        System.loadLibrary("HelloWorld");
    }

    public static void main(String[] args) {
	System.out.println("Hello World!");
	HelloWorld hw = new HelloWorld();
	hw.print();
    }
}
