package java.lang;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.invoke.MethodHandles;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.math.FloatToDecimal;
import jdk.internal.math.FloatingDecimal;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Float.class
 */
@ValueBased
public final class Float extends Number implements Comparable<Float>, Constable, ConstantDesc {
    public static final float POSITIVE_INFINITY = Float.POSITIVE_INFINITY;
    public static final float NEGATIVE_INFINITY = Float.NEGATIVE_INFINITY;
    public static final float NaN = Float.NaN;
    public static final float MAX_VALUE = Float.MAX_VALUE;
    public static final float MIN_NORMAL = Float.MIN_NORMAL;
    public static final float MIN_VALUE = Float.MIN_VALUE;
    public static final int SIZE = 32;
    public static final int PRECISION = 24;
    public static final int MAX_EXPONENT = 127;
    public static final int MIN_EXPONENT = -126;
    public static final int BYTES = 4;
    public static final Class<Float> TYPE;
    private final float value;
    private static final long serialVersionUID = -2671257302660747028L;
    static final boolean $assertionsDisabled;

    @IntrinsicCandidate
    public static native int floatToRawIntBits(float f10);

    @IntrinsicCandidate
    public static native float intBitsToFloat(int i10);

    static {
        $assertionsDisabled = !Float.class.desiredAssertionStatus();
        TYPE = Class.getPrimitiveClass(TypedValues.Custom.S_FLOAT);
    }

    public static String toString(float f10) {
        return FloatToDecimal.toString(f10);
    }

    public static String toHexString(float f10) {
        if (Math.abs(f10) < Float.MIN_NORMAL && f10 != 0.0f) {
            String s10 = Double.toHexString(Math.scalb(f10, -896));
            return s10.replaceFirst("p-1022$", "p-126");
        }
        return Double.toHexString(f10);
    }

    public static Float valueOf(String s10) throws NumberFormatException {
        return new Float(parseFloat(s10));
    }

    @IntrinsicCandidate
    public static Float valueOf(float f10) {
        return new Float(f10);
    }

    public static float parseFloat(String s10) throws NumberFormatException {
        return FloatingDecimal.parseFloat(s10);
    }

    public static boolean isNaN(float v10) {
        return v10 != v10;
    }

    @IntrinsicCandidate
    public static boolean isInfinite(float v10) {
        return Math.abs(v10) > Float.MAX_VALUE;
    }

    @IntrinsicCandidate
    public static boolean isFinite(float f10) {
        return Math.abs(f10) <= Float.MAX_VALUE;
    }

    @Deprecated(since = "9")
    public Float(float value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Float(double value) {
        this.value = (float) value;
    }

    @Deprecated(since = "9")
    public Float(String s10) throws NumberFormatException {
        this.value = parseFloat(s10);
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
        return this.value;
    }

    @Override
    @IntrinsicCandidate
    public float floatValue() {
        return this.value;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public int hashCode() {
        return hashCode(this.value);
    }

    public static int hashCode(float value) {
        return floatToIntBits(value);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Float) {
            Float f10 = (Float) obj;
            if (floatToIntBits(f10.value) == floatToIntBits(this.value)) {
                return true;
            }
        }
        return false;
    }

    @IntrinsicCandidate
    public static int floatToIntBits(float value) {
        if (!isNaN(value)) {
            return floatToRawIntBits(value);
        }
        return 2143289344;
    }

    @IntrinsicCandidate
    public static float float16ToFloat(short floatBinary16) {
        int bin16SignBit = 32768 & floatBinary16;
        int bin16ExpBits = 31744 & floatBinary16;
        int bin16SignifBits = 1023 & floatBinary16;
        float sign = bin16SignBit != 0 ? -1.0f : 1.0f;
        int bin16Exp = (bin16ExpBits >> 10) - 15;
        if (bin16Exp == -15) {
            return sign * 5.9604645E-8f * bin16SignifBits;
        }
        if (bin16Exp == 16) {
            if (bin16SignifBits == 0) {
                return sign * Float.POSITIVE_INFINITY;
            }
            return intBitsToFloat((bin16SignBit << 16) | 2139095040 | (bin16SignifBits << 13));
        }
        if (!$assertionsDisabled && (-15 >= bin16Exp || bin16Exp >= 16)) {
            throw new AssertionError();
        }
        int floatExpBits = (bin16Exp + 127) << 23;
        return intBitsToFloat((bin16SignBit << 16) | floatExpBits | (bin16SignifBits << 13));
    }

    @IntrinsicCandidate
    public static short floatToFloat16(float f10) {
        int doppel = floatToRawIntBits(f10);
        short sign_bit = (short) ((doppel & Integer.MIN_VALUE) >> 16);
        if (isNaN(f10)) {
            return (short) (sign_bit | 31744 | ((doppel & 8380416) >> 13) | ((doppel & 8176) >> 4) | (doppel & 15));
        }
        float abs_f = Math.abs(f10);
        if (abs_f >= 65520.0f) {
            return (short) (sign_bit | 31744);
        }
        if (abs_f <= 2.9802322E-8f) {
            return sign_bit;
        }
        int exp = Math.getExponent(f10);
        if (!$assertionsDisabled && (-25 > exp || exp > 15)) {
            throw new AssertionError();
        }
        int expdelta = 0;
        int msb = 0;
        if (exp < -14) {
            expdelta = (-14) - exp;
            exp = -15;
            msb = 8388608;
        }
        int f_signif_bits = (doppel & 8388607) | msb;
        short signif_bits = (short) (f_signif_bits >> (13 + expdelta));
        int lsb = f_signif_bits & (1 << (13 + expdelta));
        int round = f_signif_bits & (1 << (12 + expdelta));
        int sticky = f_signif_bits & ((1 << (12 + expdelta)) - 1);
        if (round != 0 && (lsb | sticky) != 0) {
            signif_bits = (short) (signif_bits + 1);
        }
        if ($assertionsDisabled || (63488 & signif_bits) == 0) {
            return (short) (sign_bit | (((exp + 15) << 10) + signif_bits));
        }
        throw new AssertionError();
    }

    @Override
    public int compareTo(Float anotherFloat) {
        return compare(this.value, anotherFloat.value);
    }

    public static int compare(float f12, float f22) {
        if (f12 < f22) {
            return -1;
        }
        if (f12 > f22) {
            return 1;
        }
        int thisBits = floatToIntBits(f12);
        int anotherBits = floatToIntBits(f22);
        if (thisBits == anotherBits) {
            return 0;
        }
        return thisBits < anotherBits ? -1 : 1;
    }

    public static float sum(float a10, float b10) {
        return a10 + b10;
    }

    public static float max(float a10, float b10) {
        return Math.max(a10, b10);
    }

    public static float min(float a10, float b10) {
        return Math.min(a10, b10);
    }

    @Override
    public Optional<Float> describeConstable() {
        return Optional.of(this);
    }

    @Override
    public Float resolveConstantDesc(MethodHandles.Lookup lookup) {
        return this;
    }
}
