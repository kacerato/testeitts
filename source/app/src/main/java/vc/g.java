package Vc;

public class g {
    public static void a() {
        try {
            throw new RuntimeException("Dump stack trace!");
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void b(String str) {
        try {
            throw new RuntimeException(str);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void c() {
        J4.d.V1(new RuntimeException("Dump stack trace!"));
    }
}
