package java.lang;

import E2.d;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.invoke.MethodHandles;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.math.DoubleToDecimal;
import jdk.internal.math.FloatingDecimal;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Double.class
 */
@ValueBased
public final class Double extends Number implements Comparable<Double>, Constable, ConstantDesc {
    public static final double POSITIVE_INFINITY = Double.POSITIVE_INFINITY;
    public static final double NEGATIVE_INFINITY = Double.NEGATIVE_INFINITY;
    public static final double NaN = Double.NaN;
    public static final double MAX_VALUE = Double.MAX_VALUE;
    public static final double MIN_NORMAL = Double.MIN_NORMAL;
    public static final double MIN_VALUE = Double.MIN_VALUE;
    public static final int SIZE = 64;
    public static final int PRECISION = 53;
    public static final int MAX_EXPONENT = 1023;
    public static final int MIN_EXPONENT = -1022;
    public static final int BYTES = 8;
    public static final Class<Double> TYPE = Class.getPrimitiveClass("double");
    private final double value;
    private static final long serialVersionUID = -9172774392245257468L;

    @IntrinsicCandidate
    public static native long doubleToRawLongBits(double d10);

    @IntrinsicCandidate
    public static native double longBitsToDouble(long j10);

    public static String toString(double d10) {
        return DoubleToDecimal.toString(d10);
    }

    public static String toHexString(double d10) {
        String replaceFirst;
        int exponent;
        if (!isFinite(d10)) {
            return toString(d10);
        }
        StringBuilder answer = new StringBuilder(24);
        if (Math.copySign(1.0d, d10) == -1.0d) {
            answer.append("-");
        }
        answer.append("0x");
        double d11 = Math.abs(d10);
        if (d11 == 0.0d) {
            answer.append("0.0p0");
        } else {
            boolean subnormal = d11 < Double.MIN_NORMAL;
            long signifBits = (doubleToLongBits(d11) & d.f5375a) | 1152921504606846976L;
            answer.append(subnormal ? "0." : "1.");
            String signif = Long.toHexString(signifBits).substring(3, 16);
            if (signif.equals("0000000000000")) {
                replaceFirst = "0";
            } else {
                replaceFirst = signif.replaceFirst("0{1,12}$", "");
            }
            answer.append(replaceFirst);
            answer.append('p');
            if (subnormal) {
                exponent = MIN_EXPONENT;
            } else {
                exponent = Math.getExponent(d11);
            }
            answer.append(exponent);
        }
        return answer.toString();
    }

    public static Double valueOf(String s10) throws NumberFormatException {
        return new Double(parseDouble(s10));
    }

    @IntrinsicCandidate
    public static Double valueOf(double d10) {
        return new Double(d10);
    }

    public static double parseDouble(String s10) throws NumberFormatException {
        return FloatingDecimal.parseDouble(s10);
    }

    public static boolean isNaN(double v10) {
        return v10 != v10;
    }

    @IntrinsicCandidate
    public static boolean isInfinite(double v10) {
        return Math.abs(v10) > Double.MAX_VALUE;
    }

    @IntrinsicCandidate
    public static boolean isFinite(double d10) {
        return Math.abs(d10) <= Double.MAX_VALUE;
    }

    @Deprecated(since = "9")
    public Double(double value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Double(String s10) throws NumberFormatException {
        this.value = parseDouble(s10);
    }

    public boolean isNaN() {
        return isNaN(this.value);
    }

    public boolean isInfinite() {
        return isInfinite(this.value);
    }

    public String toString() {
        return toString(this.value);
    }

    @Override
    public byte byteValue() {
        return (byte) this.value;
    }

    @Override
    public short shortValue() {
        return (short) this.value;
    }

    @Override
    public int intValue() {
        return (int) this.value;
    }

    @Override
    public long longValue() {
        return (long) this.value;
    }

    @Override
    public float floatValue() {
        return (float) this.value;
    }

    @Override
    @IntrinsicCandidate
    public double doubleValue() {
        return this.value;
    }

    public int hashCode() {
        return hashCode(this.value);
    }

    public static int hashCode(double value) {
        return Long.hashCode(doubleToLongBits(value));
    }

    public boolean equals(Object obj) {
        if (obj instanceof Double) {
            Double d10 = (Double) obj;
            if (doubleToLongBits(d10.value) == doubleToLongBits(this.value)) {
                return true;
            }
        }
        return false;
    }

    @IntrinsicCandidate
    public static long doubleToLongBits(double value) {
        if (!isNaN(value)) {
            return doubleToRawLongBits(value);
        }
        return 9221120237041090560L;
    }

    @Override
    public int compareTo(Double anotherDouble) {
        return compare(this.value, anotherDouble.value);
    }

    public static int compare(double d12, double d22) {
        if (d12 < d22) {
            return -1;
        }
        if (d12 > d22) {
            return 1;
        }
        long thisBits = doubleToLongBits(d12);
        long anotherBits = doubleToLongBits(d22);
        if (thisBits == anotherBits) {
            return 0;
        }
        return thisBits < anotherBits ? -1 : 1;
    }

    public static double sum(double a10, double b10) {
        return a10 + b10;
    }

    public static double max(double a10, double b10) {
        return Math.max(a10, b10);
    }

    public static double min(double a10, double b10) {
        return Math.min(a10, b10);
    }

    @Override
    public Optional<Double> describeConstable() {
        return Optional.of(this);
    }

    @Override
    public Double resolveConstantDesc(MethodHandles.Lookup lookup) {
        return this;
    }
}
