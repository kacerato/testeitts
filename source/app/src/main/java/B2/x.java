package B2;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

@k
public final class x {

    public static final c f1477a;

    public static final boolean f1478b = false;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b implements c {
        public static final b INSTANCE = new a("INSTANCE", 0);
        private static final b[] $VALUES = c();

        public enum a extends b {
            public a(String str, int i10) {
                super(str, i10);
            }

            @Override
            public long a(byte[] bArr, int i10) {
                return com.google.common.primitives.n.j(bArr[i10 + 7], bArr[i10 + 6], bArr[i10 + 5], bArr[i10 + 4], bArr[i10 + 3], bArr[i10 + 2], bArr[i10 + 1], bArr[i10]);
            }

            @Override
            public void b(byte[] bArr, int i10, long j10) {
                long j11 = 255;
                for (int i11 = 0; i11 < 8; i11++) {
                    bArr[i10 + i11] = (byte) ((j10 & j11) >> (i11 * 8));
                    j11 <<= 8;
                }
            }
        }

        public b(String str, int i10) {
        }

        public static b[] c() {
            return new b[]{INSTANCE};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public interface c {
        long a(byte[] bArr, int i10);

        void b(byte[] bArr, int i10, long j10);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class d implements c {
        private static final int BYTE_ARRAY_BASE_OFFSET;
        private static final Unsafe theUnsafe;
        public static final d UNSAFE_LITTLE_ENDIAN = new a("UNSAFE_LITTLE_ENDIAN", 0);
        public static final d UNSAFE_BIG_ENDIAN = new b("UNSAFE_BIG_ENDIAN", 1);
        private static final d[] $VALUES = c();

        public enum a extends d {
            public a(String str, int i10) {
                super(str, i10);
            }

            @Override
            public long a(byte[] bArr, int i10) {
                return d.theUnsafe.getLong(bArr, i10 + d.BYTE_ARRAY_BASE_OFFSET);
            }

            @Override
            public void b(byte[] bArr, int i10, long j10) {
                d.theUnsafe.putLong(bArr, i10 + d.BYTE_ARRAY_BASE_OFFSET, j10);
            }
        }

        public enum b extends d {
            public b(String str, int i10) {
                super(str, i10);
            }

            @Override
            public long a(byte[] bArr, int i10) {
                return Long.reverseBytes(d.theUnsafe.getLong(bArr, i10 + d.BYTE_ARRAY_BASE_OFFSET));
            }

            @Override
            public void b(byte[] bArr, int i10, long j10) {
                d.theUnsafe.putLong(bArr, i10 + d.BYTE_ARRAY_BASE_OFFSET, Long.reverseBytes(j10));
            }
        }

        public class c implements PrivilegedExceptionAction<Unsafe> {
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
            Unsafe g10 = g();
            theUnsafe = g10;
            BYTE_ARRAY_BASE_OFFSET = g10.arrayBaseOffset(byte[].class);
            if (g10.arrayIndexScale(byte[].class) != 1) {
                throw new AssertionError();
            }
        }

        public d(String str, int i10) {
        }

        public static d[] c() {
            return new d[]{UNSAFE_LITTLE_ENDIAN, UNSAFE_BIG_ENDIAN};
        }

        public static Unsafe g() {
            try {
                try {
                    return Unsafe.getUnsafe();
                } catch (PrivilegedActionException e10) {
                    throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                }
            } catch (SecurityException unused) {
                return (Unsafe) AccessController.doPrivileged(new c());
            }
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) $VALUES.clone();
        }
    }

    static {
        c cVar = b.INSTANCE;
        try {
            if ("amd64".equals(System.getProperty("os.arch"))) {
                cVar = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN) ? d.UNSAFE_LITTLE_ENDIAN : d.UNSAFE_BIG_ENDIAN;
            }
        } catch (Throwable unused) {
        }
        f1477a = cVar;
    }

    public static int a(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static long b(byte[] bArr, int i10) {
        return f1477a.a(bArr, i10);
    }

    public static long c(byte[] bArr, int i10, int i11) {
        long j10 = 0;
        for (int i12 = 0; i12 < Math.min(i11, 8); i12++) {
            j10 |= (bArr[i10 + i12] & 255) << (i12 * 8);
        }
        return j10;
    }

    public static void d(byte[] bArr, int i10, long j10) {
        f1477a.b(bArr, i10, j10);
    }

    public static boolean e() {
        return f1477a instanceof d;
    }
}
