package java.lang.runtime;

public final class ExactConversionsSupport {
    private ExactConversionsSupport() {
    }

    public static boolean isIntToByteExact(int n10) {
        return n10 == ((byte) n10);
    }

    public static boolean isIntToShortExact(int n10) {
        return n10 == ((short) n10);
    }

    public static boolean isIntToCharExact(int n10) {
        return n10 == ((char) n10);
    }

    public static boolean isIntToFloatExact(int n10) {
        return n10 == ((int) ((float) n10)) && n10 != Integer.MAX_VALUE;
    }

    public static boolean isLongToByteExact(long n10) {
        return n10 == ((long) ((byte) ((int) n10)));
    }

    public static boolean isLongToShortExact(long n10) {
        return n10 == ((long) ((short) ((int) n10)));
    }

    public static boolean isLongToCharExact(long n10) {
        return n10 == ((long) ((char) ((int) n10)));
    }

    public static boolean isLongToIntExact(long n10) {
        return n10 == ((long) ((int) n10));
    }

    public static boolean isLongToFloatExact(long n10) {
        return n10 == ((long) ((float) n10)) && n10 != Long.MAX_VALUE;
    }

    public static boolean isLongToDoubleExact(long n10) {
        return n10 == ((long) ((double) n10)) && n10 != Long.MAX_VALUE;
    }

    public static boolean isFloatToByteExact(float n10) {
        return n10 == ((float) ((byte) ((int) n10))) && !isNegativeZero(n10);
    }

    public static boolean isFloatToShortExact(float n10) {
        return n10 == ((float) ((short) ((int) n10))) && !isNegativeZero(n10);
    }

    public static boolean isFloatToCharExact(float n10) {
        return n10 == ((float) ((char) ((int) n10))) && !isNegativeZero(n10);
    }

    public static boolean isFloatToIntExact(float n10) {
        return (n10 != ((float) ((int) n10)) || n10 == 2.1474836E9f || isNegativeZero(n10)) ? false : true;
    }

    public static boolean isFloatToLongExact(float n10) {
        return (n10 != ((float) ((long) n10)) || n10 == 9.223372E18f || isNegativeZero(n10)) ? false : true;
    }

    public static boolean isDoubleToByteExact(double n10) {
        return n10 == ((double) ((byte) ((int) n10))) && !isNegativeZero(n10);
    }

    public static boolean isDoubleToShortExact(double n10) {
        return n10 == ((double) ((short) ((int) n10))) && !isNegativeZero(n10);
    }

    public static boolean isDoubleToCharExact(double n10) {
        return n10 == ((double) ((char) ((int) n10))) && !isNegativeZero(n10);
    }

    public static boolean isDoubleToIntExact(double n10) {
        return n10 == ((double) ((int) n10)) && !isNegativeZero(n10);
    }

    public static boolean isDoubleToLongExact(double n10) {
        return (n10 != ((double) ((long) n10)) || n10 == 9.223372036854776E18d || isNegativeZero(n10)) ? false : true;
    }

    public static boolean isDoubleToFloatExact(double n10) {
        return n10 == ((double) ((float) n10)) || n10 != n10;
    }

    private static boolean isNegativeZero(float n10) {
        return Float.floatToRawIntBits(n10) == Integer.MIN_VALUE;
    }

    private static boolean isNegativeZero(double n10) {
        return Double.doubleToRawLongBits(n10) == Long.MIN_VALUE;
    }
}
