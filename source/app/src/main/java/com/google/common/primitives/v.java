package com.google.common.primitives;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import sun.misc.Unsafe;
import v2.InterfaceC15800a;
import w2.H;

@f
@v2.c
public final class v {

    public static final byte f67082a = Byte.MIN_VALUE;

    public static final byte f67083b = -1;

    public static final int f67084c = 255;

    @v2.d
    public static class a {

        public static final String f67085a = a.class.getName().concat("$UnsafeComparator");

        public static final Comparator<byte[]> f67086b = a();

        public enum EnumC1009a implements Comparator<byte[]> {
            INSTANCE;

            @Override
            public int compare(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                for (int i10 = 0; i10 < min; i10++) {
                    int b10 = v.b(bArr[i10], bArr2[i10]);
                    if (b10 != 0) {
                        return b10;
                    }
                }
                return bArr.length - bArr2.length;
            }

            @Override
            public String toString() {
                return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
            }
        }

        @v2.d
        public enum b implements Comparator<byte[]> {
            INSTANCE;

            static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
            static final int BYTE_ARRAY_BASE_OFFSET;
            static final Unsafe theUnsafe;

            public class C1010a implements PrivilegedExceptionAction<Unsafe> {
                @Override
                public Unsafe run() throws Exception {
                    for (Field field : Unsafe.class.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        if (Unsafe.class.isInstance(obj)) {
                            return (Unsafe) Unsafe.class.cast(obj);
                        }
                    }
                    throw new NoSuchFieldError("the Unsafe");
                }
            }

            static {
                Unsafe c10 = c();
                theUnsafe = c10;
                int arrayBaseOffset = c10.arrayBaseOffset(byte[].class);
                BYTE_ARRAY_BASE_OFFSET = arrayBaseOffset;
                if (!"64".equals(System.getProperty("sun.arch.data.model")) || arrayBaseOffset % 8 != 0 || c10.arrayIndexScale(byte[].class) != 1) {
                    throw new Error();
                }
            }

            public static Unsafe c() {
                try {
                    try {
                        return Unsafe.getUnsafe();
                    } catch (PrivilegedActionException e10) {
                        throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                    }
                } catch (SecurityException unused) {
                    return (Unsafe) AccessController.doPrivileged(new C1010a());
                }
            }

            @Override
            public int compare(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                int i10 = min & (-8);
                int i11 = 0;
                while (i11 < i10) {
                    Unsafe unsafe = theUnsafe;
                    int i12 = BYTE_ARRAY_BASE_OFFSET;
                    long j10 = i11;
                    long j11 = unsafe.getLong(bArr, i12 + j10);
                    long j12 = unsafe.getLong(bArr2, i12 + j10);
                    if (j11 != j12) {
                        if (BIG_ENDIAN) {
                            return z.a(j11, j12);
                        }
                        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j11 ^ j12) & (-8);
                        return ((int) ((j11 >>> numberOfTrailingZeros) & 255)) - ((int) ((j12 >>> numberOfTrailingZeros) & 255));
                    }
                    i11 += 8;
                }
                while (i11 < min) {
                    int b10 = v.b(bArr[i11], bArr2[i11]);
                    if (b10 != 0) {
                        return b10;
                    }
                    i11++;
                }
                return bArr.length - bArr2.length;
            }

            @Override
            public String toString() {
                return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
            }
        }

        public static Comparator<byte[]> a() {
            try {
                Object[] enumConstants = Class.forName(f67085a).getEnumConstants();
                Objects.requireNonNull(enumConstants);
                return (Comparator) enumConstants[0];
            } catch (Throwable unused) {
                return v.f();
            }
        }
    }

    @I2.a
    public static byte a(long j10) {
        H.p((j10 >> 8) == 0, "out of range: %s", j10);
        return (byte) j10;
    }

    public static int b(byte b10, byte b11) {
        return p(b10) - p(b11);
    }

    public static byte c(byte b10) {
        return (byte) (b10 ^ 128);
    }

    public static String d(String str, byte... bArr) {
        H.E(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(bArr.length * (str.length() + 3));
        sb2.append(p(bArr[0]));
        for (int i10 = 1; i10 < bArr.length; i10++) {
            sb2.append(str);
            sb2.append(q(bArr[i10]));
        }
        return sb2.toString();
    }

    public static Comparator<byte[]> e() {
        return a.f67086b;
    }

    @v2.d
    public static Comparator<byte[]> f() {
        return a.EnumC1009a.INSTANCE;
    }

    public static byte g(byte... bArr) {
        H.d(bArr.length > 0);
        int p10 = p(bArr[0]);
        for (int i10 = 1; i10 < bArr.length; i10++) {
            int p11 = p(bArr[i10]);
            if (p11 > p10) {
                p10 = p11;
            }
        }
        return (byte) p10;
    }

    public static byte h(byte... bArr) {
        H.d(bArr.length > 0);
        int p10 = p(bArr[0]);
        for (int i10 = 1; i10 < bArr.length; i10++) {
            int p11 = p(bArr[i10]);
            if (p11 < p10) {
                p10 = p11;
            }
        }
        return (byte) p10;
    }

    @I2.a
    @InterfaceC15800a
    public static byte i(String str) {
        return j(str, 10);
    }

    @I2.a
    @InterfaceC15800a
    public static byte j(String str, int i10) {
        int parseInt = Integer.parseInt((String) H.E(str), i10);
        if ((parseInt >> 8) == 0) {
            return (byte) parseInt;
        }
        StringBuilder sb2 = new StringBuilder(25);
        sb2.append("out of range: ");
        sb2.append(parseInt);
        throw new NumberFormatException(sb2.toString());
    }

    public static byte k(long j10) {
        if (j10 > p((byte) -1)) {
            return (byte) -1;
        }
        if (j10 < 0) {
            return (byte) 0;
        }
        return (byte) j10;
    }

    public static void l(byte[] bArr) {
        H.E(bArr);
        m(bArr, 0, bArr.length);
    }

    public static void m(byte[] bArr, int i10, int i11) {
        H.E(bArr);
        H.f0(i10, i11, bArr.length);
        for (int i12 = i10; i12 < i11; i12++) {
            bArr[i12] = c(bArr[i12]);
        }
        Arrays.sort(bArr, i10, i11);
        while (i10 < i11) {
            bArr[i10] = c(bArr[i10]);
            i10++;
        }
    }

    public static void n(byte[] bArr) {
        H.E(bArr);
        o(bArr, 0, bArr.length);
    }

    public static void o(byte[] bArr, int i10, int i11) {
        H.E(bArr);
        H.f0(i10, i11, bArr.length);
        for (int i12 = i10; i12 < i11; i12++) {
            bArr[i12] = (byte) (bArr[i12] ^ Byte.MAX_VALUE);
        }
        Arrays.sort(bArr, i10, i11);
        while (i10 < i11) {
            bArr[i10] = (byte) (bArr[i10] ^ Byte.MAX_VALUE);
            i10++;
        }
    }

    public static int p(byte b10) {
        return b10 & 255;
    }

    @InterfaceC15800a
    public static String q(byte b10) {
        return r(b10, 10);
    }

    @InterfaceC15800a
    public static String r(byte b10, int i10) {
        H.k(i10 >= 2 && i10 <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i10);
        return Integer.toString(p(b10), i10);
    }
}
