package B2;

import B2.C2347g;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import javax.annotation.CheckForNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@k
public abstract class EnumC2348h implements C2347g.c {
    public static final EnumC2348h MURMUR128_MITZ_32 = new a("MURMUR128_MITZ_32", 0);
    public static final EnumC2348h MURMUR128_MITZ_64 = new EnumC2348h("MURMUR128_MITZ_64", 1) {
        {
            a aVar = null;
        }

        @Override
        public <T> boolean Qb(@F T t10, n<? super T> nVar, int i10, c cVar) {
            long b10 = cVar.b();
            byte[] l10 = s.x().e(t10, nVar).l();
            long b11 = b(l10);
            long c10 = c(l10);
            for (int i11 = 0; i11 < i10; i11++) {
                if (!cVar.e((Long.MAX_VALUE & b11) % b10)) {
                    return false;
                }
                b11 += c10;
            }
            return true;
        }

        @Override
        public <T> boolean Qd(@F T t10, n<? super T> nVar, int i10, c cVar) {
            long b10 = cVar.b();
            byte[] l10 = s.x().e(t10, nVar).l();
            long b11 = b(l10);
            long c10 = c(l10);
            boolean z10 = false;
            for (int i11 = 0; i11 < i10; i11++) {
                z10 |= cVar.h((Long.MAX_VALUE & b11) % b10);
                b11 += c10;
            }
            return z10;
        }

        public final long b(byte[] bArr) {
            return com.google.common.primitives.n.j(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        public final long c(byte[] bArr) {
            return com.google.common.primitives.n.j(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }
    };
    private static final EnumC2348h[] $VALUES = a();

    public enum a extends EnumC2348h {
        public a(String str, int i10) {
            super(str, i10, null);
        }

        @Override
        public <T> boolean Qb(@F T t10, n<? super T> nVar, int i10, c cVar) {
            long b10 = cVar.b();
            long c10 = s.x().e(t10, nVar).c();
            int i11 = (int) c10;
            int i12 = (int) (c10 >>> 32);
            for (int i13 = 1; i13 <= i10; i13++) {
                int i14 = (i13 * i12) + i11;
                if (i14 < 0) {
                    i14 = ~i14;
                }
                if (!cVar.e(i14 % b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public <T> boolean Qd(@F T t10, n<? super T> nVar, int i10, c cVar) {
            long b10 = cVar.b();
            long c10 = s.x().e(t10, nVar).c();
            int i11 = (int) c10;
            int i12 = (int) (c10 >>> 32);
            boolean z10 = false;
            for (int i13 = 1; i13 <= i10; i13++) {
                int i14 = (i13 * i12) + i11;
                if (i14 < 0) {
                    i14 = ~i14;
                }
                z10 |= cVar.h(i14 % b10);
            }
            return z10;
        }
    }

    public EnumC2348h(String str, int i10) {
    }

    public static EnumC2348h[] a() {
        return new EnumC2348h[]{MURMUR128_MITZ_32, MURMUR128_MITZ_64};
    }

    public static EnumC2348h valueOf(String str) {
        return (EnumC2348h) Enum.valueOf(EnumC2348h.class, str);
    }

    public static EnumC2348h[] values() {
        return (EnumC2348h[]) $VALUES.clone();
    }

    public EnumC2348h(String str, int i10, a aVar) {
        this(str, i10);
    }

    public static final class c {

        public static final int f1428c = 6;

        public final AtomicLongArray f1429a;

        public final y f1430b;

        public c(long j10) {
            w2.H.e(j10 > 0, "data length is zero!");
            this.f1429a = new AtomicLongArray(com.google.common.primitives.l.d(E2.h.g(j10, 64L, RoundingMode.CEILING)));
            this.f1430b = z.a();
        }

        public static long[] i(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                jArr[i10] = atomicLongArray.get(i10);
            }
            return jArr;
        }

        public long a() {
            return this.f1430b.o();
        }

        public long b() {
            return this.f1429a.length() * 64;
        }

        public c c() {
            return new c(i(this.f1429a));
        }

        public int d() {
            return this.f1429a.length();
        }

        public boolean e(long j10) {
            return ((1 << ((int) j10)) & this.f1429a.get((int) (j10 >>> 6))) != 0;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(i(this.f1429a), i(((c) obj).f1429a));
            }
            return false;
        }

        public void f(c cVar) {
            w2.H.m(this.f1429a.length() == cVar.f1429a.length(), "BitArrays must be of equal length (%s != %s)", this.f1429a.length(), cVar.f1429a.length());
            for (int i10 = 0; i10 < this.f1429a.length(); i10++) {
                g(i10, cVar.f1429a.get(i10));
            }
        }

        public void g(int i10, long j10) {
            long j11;
            long j12;
            do {
                j11 = this.f1429a.get(i10);
                j12 = j11 | j10;
                if (j11 == j12) {
                    return;
                }
            } while (!this.f1429a.compareAndSet(i10, j11, j12));
            this.f1430b.M0(Long.bitCount(j12) - Long.bitCount(j11));
        }

        public boolean h(long j10) {
            long j11;
            long j12;
            if (e(j10)) {
                return false;
            }
            int i10 = (int) (j10 >>> 6);
            long j13 = 1 << ((int) j10);
            do {
                j11 = this.f1429a.get(i10);
                j12 = j11 | j13;
                if (j11 == j12) {
                    return false;
                }
            } while (!this.f1429a.compareAndSet(i10, j11, j12));
            this.f1430b.N0();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(i(this.f1429a));
        }

        public c(long[] jArr) {
            w2.H.e(jArr.length > 0, "data length is zero!");
            this.f1429a = new AtomicLongArray(jArr);
            this.f1430b = z.a();
            long j10 = 0;
            for (long j11 : jArr) {
                j10 += Long.bitCount(j11);
            }
            this.f1430b.M0(j10);
        }
    }
}
