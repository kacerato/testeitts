package javax.vecmath;

class VecMathUtil {
    private VecMathUtil() {
    }

    public static long doubleToLongBits(double d10) {
        if (d10 == 0.0d) {
            return 0L;
        }
        return Double.doubleToLongBits(d10);
    }

    public static int floatToIntBits(float f10) {
        if (f10 == 0.0f) {
            return 0;
        }
        return Float.floatToIntBits(f10);
    }
}
