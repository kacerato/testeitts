package java.lang;

import Sg.b;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DynamicConstantDesc;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.misc.CDS;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Short.class
 */
@ValueBased
public final class Short extends Number implements Comparable<Short>, Constable {
    public static final short MIN_VALUE = Short.MIN_VALUE;
    public static final short MAX_VALUE = Short.MAX_VALUE;
    public static final Class<Short> TYPE = Class.getPrimitiveClass("short");
    private final short value;
    public static final int SIZE = 16;
    public static final int BYTES = 2;
    private static final long serialVersionUID = 7515723908773894738L;

    public static String toString(short s10) {
        return Integer.toString(s10);
    }

    public static short parseShort(String s10, int radix) throws NumberFormatException {
        int i10 = Integer.parseInt(s10, radix);
        if (i10 < -32768 || i10 > 32767) {
            throw new NumberFormatException("Value out of range. Value:\"" + s10 + "\" Radix:" + radix);
        }
        return (short) i10;
    }

    public static short parseShort(String s10) throws NumberFormatException {
        return parseShort(s10, 10);
    }

    public static Short valueOf(String s10, int radix) throws NumberFormatException {
        return valueOf(parseShort(s10, radix));
    }

    public static Short valueOf(String s10) throws NumberFormatException {
        return valueOf(s10, 10);
    }

    @Override
    public Optional<DynamicConstantDesc<Short>> describeConstable() {
        return Optional.of(DynamicConstantDesc.ofNamed(ConstantDescs.BSM_EXPLICIT_CAST, ConstantDescs.DEFAULT_NAME, ConstantDescs.CD_short, Integer.valueOf(intValue())));
    }

    public static final class ShortCache {

        @Stable
        static final Short[] cache;
        static Short[] archivedCache;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Short.class.desiredAssertionStatus();
            CDS.initializeFromArchive(ShortCache.class);
            if (archivedCache == null) {
                Short[] c10 = new Short[256];
                short value = -128;
                for (int i10 = 0; i10 < 256; i10++) {
                    short s10 = value;
                    value = (short) (value + 1);
                    c10[i10] = new Short(s10);
                }
                archivedCache = c10;
            }
            cache = archivedCache;
            if (!$assertionsDisabled && cache.length != 256) {
                throw new AssertionError();
            }
        }

        private ShortCache() {
        }
    }

    @IntrinsicCandidate
    public static Short valueOf(short s10) {
        if (s10 >= -128 && s10 <= 127) {
            return ShortCache.cache[s10 + 128];
        }
        return new Short(s10);
    }

    public static Short decode(String nm2) throws NumberFormatException {
        int i10 = Integer.decode(nm2).intValue();
        if (i10 < -32768 || i10 > 32767) {
            throw new NumberFormatException("Value " + i10 + " out of range from input " + nm2);
        }
        return valueOf((short) i10);
    }

    @Deprecated(since = "9")
    public Short(short value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Short(String s10) throws NumberFormatException {
        this.value = parseShort(s10, 10);
    }

    @Override
    public byte byteValue() {
        return (byte) this.value;
    }

    @Override
    @IntrinsicCandidate
    public short shortValue() {
        return this.value;
    }

    @Override
    public int intValue() {
        return this.value;
    }

    @Override
    public long longValue() {
        return this.value;
    }

    @Override
    public float floatValue() {
        return this.value;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public String toString() {
        return Integer.toString(this.value);
    }

    public int hashCode() {
        return hashCode(this.value);
    }

    public static int hashCode(short value) {
        return value;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Short)) {
            return false;
        }
        Short s10 = (Short) obj;
        return this.value == s10.shortValue();
    }

    @Override
    public int compareTo(Short anotherShort) {
        return compare(this.value, anotherShort.value);
    }

    public static int compare(short x10, short y10) {
        return x10 - y10;
    }

    public static int compareUnsigned(short x10, short y10) {
        return toUnsignedInt(x10) - toUnsignedInt(y10);
    }

    @IntrinsicCandidate
    public static short reverseBytes(short i10) {
        return (short) (((i10 & 65280) >> 8) | (i10 << 8));
    }

    public static int toUnsignedInt(short x10) {
        return x10 & 65535;
    }

    public static long toUnsignedLong(short x10) {
        return x10 & b.f23266s;
    }
}
