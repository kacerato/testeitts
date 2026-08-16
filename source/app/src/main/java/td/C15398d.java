package td;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import qd.InterfaceRunnableC15067j;
import qd.z;
import sun.misc.Unsafe;

public final class C15398d {

    public static final Unsafe f117331a;

    public static class a implements PrivilegedExceptionAction<Unsafe> {
        @Override
        public Unsafe run() throws Exception {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return (Unsafe) declaredField.get(null);
        }
    }

    static {
        try {
            f117331a = (Unsafe) AccessController.doPrivileged(new a());
        } catch (Exception e10) {
            throw new RuntimeException("Unable to load unsafe", e10);
        }
    }

    public static int a(int i10) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i10 - 1));
    }

    public static long b(ByteBuffer byteBuffer) {
        try {
            Field declaredField = Buffer.class.getDeclaredField("address");
            declaredField.setAccessible(true);
            return declaredField.getLong(byteBuffer);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to address field from ByteBuffer", e10);
        }
    }

    public static long c(z[] zVarArr) {
        return d(zVarArr, Long.MAX_VALUE);
    }

    public static long d(z[] zVarArr, long j10) {
        for (z zVar : zVarArr) {
            j10 = Math.min(j10, zVar.c());
        }
        return j10;
    }

    public static z[] e(InterfaceRunnableC15067j... interfaceRunnableC15067jArr) {
        int length = interfaceRunnableC15067jArr.length;
        z[] zVarArr = new z[length];
        for (int i10 = 0; i10 < length; i10++) {
            zVarArr[i10] = interfaceRunnableC15067jArr[i10].R();
        }
        return zVarArr;
    }

    public static Unsafe f() {
        return f117331a;
    }

    public static int g(int i10) {
        int i11 = 0;
        while (true) {
            i10 >>= 1;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }
}
