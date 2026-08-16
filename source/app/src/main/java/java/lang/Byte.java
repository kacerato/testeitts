package java.lang;

import java.lang.constant.Constable;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DynamicConstantDesc;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.misc.CDS;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Byte.class
 */
@ValueBased
public final class Byte extends Number implements Comparable<Byte>, Constable {
    public static final byte MIN_VALUE = Byte.MIN_VALUE;
    public static final byte MAX_VALUE = Byte.MAX_VALUE;
    public static final Class<Byte> TYPE = Class.getPrimitiveClass("byte");
    private final byte value;
    public static final int SIZE = 8;
    public static final int BYTES = 1;
    private static final long serialVersionUID = -7183698231559129828L;

    public static String toString(byte b10) {
        return Integer.toString(b10);
    }

    @Override
    public Optional<DynamicConstantDesc<Byte>> describeConstable() {
        return Optional.of(DynamicConstantDesc.ofNamed(ConstantDescs.BSM_EXPLICIT_CAST, ConstantDescs.DEFAULT_NAME, ConstantDescs.CD_byte, Integer.valueOf(intValue())));
    }

    public static final class ByteCache {

        @Stable
        static final Byte[] cache;
        static Byte[] archivedCache;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Byte.class.desiredAssertionStatus();
            CDS.initializeFromArchive(ByteCache.class);
            if (archivedCache == null) {
                Byte[] c10 = new Byte[256];
                byte value = Byte.MIN_VALUE;
                for (int i10 = 0; i10 < 256; i10++) {
                    byte b10 = value;
                    value = (byte) (value + 1);
                    c10[i10] = new Byte(b10);
                }
                archivedCache = c10;
            }
            cache = archivedCache;
            if (!$assertionsDisabled && cache.length != 256) {
                throw new AssertionError();
            }
        }

        private ByteCache() {
        }
    }

    @IntrinsicCandidate
    public static Byte valueOf(byte b10) {
        return ByteCache.cache[b10 + 128];
    }

    public static byte parseByte(String s10, int radix) throws NumberFormatException {
        int i10 = Integer.parseInt(s10, radix);
        if (i10 < -128 || i10 > 127) {
            throw new NumberFormatException("Value out of range. Value:\"" + s10 + "\" Radix:" + radix);
        }
        return (byte) i10;
    }

    public static byte parseByte(String s10) throws NumberFormatException {
        return parseByte(s10, 10);
    }

    public static Byte valueOf(String s10, int radix) throws NumberFormatException {
        return valueOf(parseByte(s10, radix));
    }

    public static Byte valueOf(String s10) throws NumberFormatException {
        return valueOf(s10, 10);
    }

    public static Byte decode(String nm2) throws NumberFormatException {
        int i10 = Integer.decode(nm2).intValue();
        if (i10 < -128 || i10 > 127) {
            throw new NumberFormatException("Value " + i10 + " out of range from input " + nm2);
        }
        return valueOf((byte) i10);
    }

    @Deprecated(since = "9")
    public Byte(byte value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Byte(String s10) throws NumberFormatException {
        this.value = parseByte(s10, 10);
    }

    @Override
    @IntrinsicCandidate
    public byte byteValue() {
        return this.value;
    }

    @Override
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

    public static int hashCode(byte value) {
        return value;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Byte)) {
            return false;
        }
        Byte b10 = (Byte) obj;
        return this.value == b10.byteValue();
    }

    @Override
    public int compareTo(Byte anotherByte) {
        return compare(this.value, anotherByte.value);
    }

    public static int compare(byte x10, byte y10) {
        return x10 - y10;
    }

    public static int compareUnsigned(byte x10, byte y10) {
        return toUnsignedInt(x10) - toUnsignedInt(y10);
    }

    public static int toUnsignedInt(byte x10) {
        return x10 & 255;
    }

    public static long toUnsignedLong(byte x10) {
        return x10 & 255;
    }
}
