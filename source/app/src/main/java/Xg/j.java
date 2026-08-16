package Xg;

public class j {
    public static i a(i other) {
        return new C3324c(other);
    }

    public static i b(float x10) {
        return new C3324c(x10);
    }

    public static i c(float x10, float y10) {
        return new C3324c(x10, y10);
    }

    public static i d(float x10, float y10, float z10) {
        return new C3324c(x10, y10, z10);
    }

    public static i e(float x10, float y10, float z10, float w10) {
        return new C3324c(x10, y10, z10, w10);
    }

    public static String f(i tuple) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < tuple.getDimensions(); i10++) {
            if (i10 > 0) {
                sb2.append(" ");
            }
            sb2.append(tuple.get(i10));
        }
        return sb2.toString();
    }
}
