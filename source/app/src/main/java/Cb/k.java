package cb;

public final class k {
    public static long a(double value) {
        return Double.doubleToLongBits(value);
    }

    public static int b(float value) {
        return Float.floatToIntBits(value);
    }

    public static int c(float value) {
        return Float.floatToRawIntBits(value) | (((int) ((r2 >>> 24) * 1.003937f)) << 24);
    }

    public static int d(float value) {
        return Float.floatToRawIntBits(value);
    }

    public static float e(int value) {
        return Float.intBitsToFloat(value);
    }

    public static float f(int value) {
        return Float.intBitsToFloat(value & (-16777217));
    }

    public static double g(long value) {
        return Double.longBitsToDouble(value);
    }
}
