package B2;

import b2.AbstractC3834c;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;

@v2.c
@k
public abstract class I extends Number {

    public static final ThreadLocal<int[]> f1383e = new ThreadLocal<>();

    public static final Random f1384f = new Random();

    public static final int f1385g = Runtime.getRuntime().availableProcessors();

    public static final Unsafe f1386h;

    public static final long f1387i;

    public static final long f1388j;

    @CheckForNull
    public volatile transient b[] f1389b;

    public volatile transient long f1390c;

    public volatile transient int f1391d;

    public class a implements PrivilegedExceptionAction<Unsafe> {
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

    public static final class b {

        public static final Unsafe f1392p;

        public static final long f1393q;

        public volatile long f1394a;

        public volatile long f1395b;

        public volatile long f1396c;

        public volatile long f1397d;

        public volatile long f1398e;

        public volatile long f1399f;

        public volatile long f1400g;

        public volatile long f1401h;

        public volatile long f1402i;

        public volatile long f1403j;

        public volatile long f1404k;

        public volatile long f1405l;

        public volatile long f1406m;

        public volatile long f1407n;

        public volatile long f1408o;

        static {
            try {
                Unsafe a10 = I.a();
                f1392p = a10;
                f1393q = a10.objectFieldOffset(b.class.getDeclaredField("h"));
            } catch (Exception e10) {
                throw new Error(e10);
            }
        }

        public b(long j10) {
            this.f1401h = j10;
        }

        public final boolean a(long j10, long j11) {
            return f1392p.compareAndSwapLong(this, f1393q, j10, j11);
        }
    }

    static {
        try {
            Unsafe e10 = e();
            f1386h = e10;
            f1387i = e10.objectFieldOffset(I.class.getDeclaredField(AbstractC3834c.f32824b1));
            f1388j = e10.objectFieldOffset(I.class.getDeclaredField("d"));
        } catch (Exception e11) {
            throw new Error(e11);
        }
    }

    public static Unsafe a() {
        return e();
    }

    public static Unsafe e() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new a());
        }
    }

    public final boolean b(long j10, long j11) {
        return f1386h.compareAndSwapLong(this, f1387i, j10, j11);
    }

    public final boolean c() {
        return f1386h.compareAndSwapInt(this, f1388j, 0, 1);
    }

    public abstract long d(long j10, long j11);

    public final void f(long j10) {
        b[] bVarArr = this.f1389b;
        this.f1390c = j10;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                if (bVar != null) {
                    bVar.f1401h = j10;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0023 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(long j10, @CheckForNull int[] iArr, boolean z10) {
        int i10;
        int[] iArr2;
        boolean z11;
        int length;
        boolean z12;
        int length2;
        if (iArr == null) {
            iArr2 = new int[1];
            f1383e.set(iArr2);
            i10 = f1384f.nextInt();
            if (i10 == 0) {
                i10 = 1;
            }
            iArr2[0] = i10;
        } else {
            i10 = iArr[0];
            iArr2 = iArr;
        }
        boolean z13 = false;
        int i11 = i10;
        boolean z14 = z10;
        while (true) {
            b[] bVarArr = this.f1389b;
            if (bVarArr != null && (length = bVarArr.length) > 0) {
                b bVar = bVarArr[(length - 1) & i11];
                if (bVar == null) {
                    if (this.f1391d == 0) {
                        b bVar2 = new b(j10);
                        if (this.f1391d == 0 && c()) {
                            try {
                                b[] bVarArr2 = this.f1389b;
                                if (bVarArr2 != null && (length2 = bVarArr2.length) > 0) {
                                    int i12 = (length2 - 1) & i11;
                                    if (bVarArr2[i12] == null) {
                                        bVarArr2[i12] = bVar2;
                                        z12 = true;
                                        if (!z12) {
                                            return;
                                        }
                                    }
                                }
                                z12 = false;
                                if (!z12) {
                                }
                            } finally {
                            }
                        }
                    }
                    z13 = false;
                } else if (z14) {
                    long j11 = bVar.f1401h;
                    if (bVar.a(j11, d(j11, j10))) {
                        return;
                    }
                    if (length < f1385g && this.f1389b == bVarArr) {
                        if (!z13) {
                            z13 = true;
                        } else if (this.f1391d == 0 && c()) {
                            try {
                                if (this.f1389b == bVarArr) {
                                    b[] bVarArr3 = new b[length << 1];
                                    for (int i13 = 0; i13 < length; i13++) {
                                        bVarArr3[i13] = bVarArr[i13];
                                    }
                                    this.f1389b = bVarArr3;
                                }
                                this.f1391d = 0;
                                z13 = false;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    z13 = false;
                } else {
                    z14 = true;
                }
                int i14 = i11 ^ (i11 << 13);
                int i15 = i14 ^ (i14 >>> 17);
                i11 = i15 ^ (i15 << 5);
                iArr2[0] = i11;
            } else if (this.f1391d == 0 && this.f1389b == bVarArr && c()) {
                try {
                    if (this.f1389b == bVarArr) {
                        b[] bVarArr4 = new b[2];
                        bVarArr4[i11 & 1] = new b(j10);
                        this.f1389b = bVarArr4;
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        return;
                    }
                } finally {
                }
            } else {
                long j12 = this.f1390c;
                if (b(j12, d(j12, j10))) {
                    return;
                }
            }
        }
    }
}
