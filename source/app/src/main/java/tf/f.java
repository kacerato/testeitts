package Tf;

import Ef.n;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"})
@InterfaceC14422l0(version = "1.3")
public abstract class f {

    @NotNull
    public static final a f24956b = new a(null);

    @NotNull
    public static final f f24957c = n.f5775a.b();

    public static final class a extends f implements Serializable {

        public static final class C0706a implements Serializable {

            @NotNull
            public static final C0706a f24958b = new C0706a();

            public static final long f24959c = 0;

            public final Object a() {
                return f.f24956b;
            }
        }

        public a(C14026x c14026x) {
            this();
        }

        @Override
        public int b(int i10) {
            return f.f24957c.b(i10);
        }

        @Override
        public boolean c() {
            return f.f24957c.c();
        }

        @Override
        @NotNull
        public byte[] d(int i10) {
            return f.f24957c.d(i10);
        }

        @Override
        @InterfaceC14394D
        @NotNull
        public byte[] e(@NotNull byte[] array) {
            M.p(array, "array");
            return f.f24957c.e(array);
        }

        @Override
        @NotNull
        public byte[] f(@NotNull byte[] array, int i10, int i11) {
            M.p(array, "array");
            return f.f24957c.f(array, i10, i11);
        }

        @Override
        public double h() {
            return f.f24957c.h();
        }

        @Override
        public double i(double d10) {
            return f.f24957c.i(d10);
        }

        @Override
        public double j(double d10, double d11) {
            return f.f24957c.j(d10, d11);
        }

        @Override
        public float k() {
            return f.f24957c.k();
        }

        @Override
        public int l() {
            return f.f24957c.l();
        }

        @Override
        public int m(int i10) {
            return f.f24957c.m(i10);
        }

        @Override
        public int n(int i10, int i11) {
            return f.f24957c.n(i10, i11);
        }

        @Override
        public long o() {
            return f.f24957c.o();
        }

        @Override
        public long p(long j10) {
            return f.f24957c.p(j10);
        }

        @Override
        public long q(long j10, long j11) {
            return f.f24957c.q(j10, j11);
        }

        public final void r(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        public final Object s() {
            return C0706a.f24958b;
        }

        public a() {
        }
    }

    public static byte[] g(f fVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return fVar.f(bArr, i10, i11);
    }

    public abstract int b(int i10);

    public boolean c() {
        return b(1) != 0;
    }

    @NotNull
    public byte[] d(int i10) {
        return e(new byte[i10]);
    }

    @InterfaceC14394D
    @NotNull
    public byte[] e(@NotNull byte[] array) {
        M.p(array, "array");
        return f(array, 0, array.length);
    }

    @InterfaceC14394D
    @NotNull
    public byte[] f(@NotNull byte[] array, int i10, int i11) {
        M.p(array, "array");
        if (i10 < 0 || i10 > array.length || i11 < 0 || i11 > array.length) {
            throw new IllegalArgumentException(("fromIndex (" + i10 + ") or toIndex (" + i11 + ") are out of range: 0.." + array.length + '.').toString());
        }
        if (i10 > i11) {
            throw new IllegalArgumentException(("fromIndex (" + i10 + ") must be not greater than toIndex (" + i11 + ").").toString());
        }
        int i12 = (i11 - i10) / 4;
        for (int i13 = 0; i13 < i12; i13++) {
            int l10 = l();
            array[i10] = (byte) l10;
            array[i10 + 1] = (byte) (l10 >>> 8);
            array[i10 + 2] = (byte) (l10 >>> 16);
            array[i10 + 3] = (byte) (l10 >>> 24);
            i10 += 4;
        }
        int i14 = i11 - i10;
        int b10 = b(i14 * 8);
        for (int i15 = 0; i15 < i14; i15++) {
            array[i10 + i15] = (byte) (b10 >>> (i15 * 8));
        }
        return array;
    }

    public double h() {
        return e.d(b(26), b(27));
    }

    public double i(double d10) {
        return j(0.0d, d10);
    }

    public double j(double d10, double d11) {
        double h10;
        g.d(d10, d11);
        double d12 = d11 - d10;
        if (!Double.isInfinite(d12) || Math.abs(d10) > Double.MAX_VALUE || Math.abs(d11) > Double.MAX_VALUE) {
            h10 = d10 + (h() * d12);
        } else {
            double d13 = 2;
            double h11 = h() * ((d11 / d13) - (d10 / d13));
            h10 = d10 + h11 + h11;
        }
        return h10 >= d11 ? Math.nextAfter(d11, Double.NEGATIVE_INFINITY) : h10;
    }

    public float k() {
        return b(24) / 1.6777216E7f;
    }

    public int l() {
        return b(32);
    }

    public int m(int i10) {
        return n(0, i10);
    }

    public int n(int i10, int i11) {
        int l10;
        int i12;
        int i13;
        g.e(i10, i11);
        int i14 = i11 - i10;
        if (i14 > 0 || i14 == Integer.MIN_VALUE) {
            if (((-i14) & i14) == i14) {
                i13 = b(g.g(i14));
                return i10 + i13;
            }
            do {
                l10 = l() >>> 1;
                i12 = l10 % i14;
            } while ((l10 - i12) + (i14 - 1) < 0);
            i13 = i12;
            return i10 + i13;
        }
        while (true) {
            int l11 = l();
            if (i10 <= l11 && l11 < i11) {
                return l11;
            }
        }
    }

    public long o() {
        return (l() << 32) + l();
    }

    public long p(long j10) {
        return q(0L, j10);
    }

    public long q(long j10, long j11) {
        long o10;
        long j12;
        long j13;
        int l10;
        g.f(j10, j11);
        long j14 = j11 - j10;
        if (j14 > 0) {
            if (((-j14) & j14) == j14) {
                int i10 = (int) j14;
                int i11 = (int) (j14 >>> 32);
                if (i10 != 0) {
                    l10 = b(g.g(i10));
                } else {
                    if (i11 != 1) {
                        j13 = (b(g.g(i11)) << 32) + (l() & 4294967295L);
                        return j10 + j13;
                    }
                    l10 = l();
                }
                j13 = l10 & 4294967295L;
                return j10 + j13;
            }
            do {
                o10 = o() >>> 1;
                j12 = o10 % j14;
            } while ((o10 - j12) + (j14 - 1) < 0);
            j13 = j12;
            return j10 + j13;
        }
        while (true) {
            long o11 = o();
            if (j10 <= o11 && o11 < j11) {
                return o11;
            }
        }
    }
}
