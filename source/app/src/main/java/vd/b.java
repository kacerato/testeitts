package Vd;

public final class b {

    public static final boolean f26862a = false;

    public static int a(float f10) {
        int i10 = (int) f10;
        return f10 - ((float) i10) > 0.0f ? i10 + 1 : i10;
    }

    public static int b(double d10) {
        long doubleToLongBits = Double.doubleToLongBits(d10);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public static int c(float f10) {
        return Float.floatToIntBits(f10 * 6.6360896E8f);
    }

    public static int d(int i10) {
        return i10;
    }

    public static int e(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static int f(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}
