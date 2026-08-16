package Tl;

public class g {

    public static final int f25448a = 5;

    public static final int f25449b = 6;

    public static String a(int i10) {
        if (i10 == 5) {
            return "qTESLA-p-I";
        }
        if (i10 == 6) {
            return "qTESLA-p-III";
        }
        throw new IllegalArgumentException("unknown security category: " + i10);
    }

    public static int b(int i10) {
        if (i10 == 5) {
            return i.f25480y;
        }
        if (i10 == 6) {
            return j.f25513x;
        }
        throw new IllegalArgumentException("unknown security category: " + i10);
    }

    public static int c(int i10) {
        if (i10 == 5) {
            return i.f25481z;
        }
        if (i10 == 6) {
            return j.f25514y;
        }
        throw new IllegalArgumentException("unknown security category: " + i10);
    }

    public static int d(int i10) {
        if (i10 == 5) {
            return i.f25479x;
        }
        if (i10 == 6) {
            return j.f25512w;
        }
        throw new IllegalArgumentException("unknown security category: " + i10);
    }

    public static void e(int i10) {
        if (i10 == 5 || i10 == 6) {
            return;
        }
        throw new IllegalArgumentException("unknown security category: " + i10);
    }
}
