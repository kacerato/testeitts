package kotlin.time;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import w2.C15883c;

public final class K {

    @NotNull
    public static final a f95839h = new a(null);

    public final int f95840a;

    public final int f95841b;

    public final int f95842c;

    public final int f95843d;

    public final int f95844e;

    public final int f95845f;

    public final int f95846g;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final K a(@NotNull q instant) {
            long j10;
            M.p(instant, "instant");
            long d10 = instant.d();
            long j11 = d10 / 86400;
            if ((d10 ^ 86400) < 0 && j11 * 86400 != d10) {
                j11--;
            }
            long j12 = d10 % 86400;
            int i10 = (int) (j12 + (86400 & (((j12 ^ 86400) & ((-j12) | j12)) >> 63)));
            long j13 = (j11 + y.f95900f) - 60;
            if (j13 < 0) {
                long j14 = y.f95899e;
                long j15 = ((j13 + 1) / j14) - 1;
                j10 = 400 * j15;
                j13 += (-j15) * j14;
            } else {
                j10 = 0;
            }
            long j16 = 400;
            long j17 = ((j16 * j13) + 591) / y.f95899e;
            long j18 = 365;
            long j19 = 4;
            long j20 = 100;
            long j21 = j13 - ((((j18 * j17) + (j17 / j19)) - (j17 / j20)) + (j17 / j16));
            if (j21 < 0) {
                j17--;
                j21 = j13 - ((((j18 * j17) + (j17 / j19)) - (j17 / j20)) + (j17 / j16));
            }
            int i11 = (int) j21;
            int i12 = ((i11 * 5) + 2) / 153;
            int i13 = (i11 - (((i12 * 306) + 5) / 10)) + 1;
            int i14 = i10 / 3600;
            int i15 = i10 - (i14 * 3600);
            int i16 = i15 / 60;
            return new K((int) (j17 + j10 + (i12 / 10)), ((i12 + 2) % 12) + 1, i13, i14, i16, i15 - (i16 * 60), instant.e());
        }

        public a() {
        }
    }

    public K(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f95840a = i10;
        this.f95841b = i11;
        this.f95842c = i12;
        this.f95843d = i13;
        this.f95844e = i14;
        this.f95845f = i15;
        this.f95846g = i16;
    }

    public final int a() {
        return this.f95842c;
    }

    public final int b() {
        return this.f95843d;
    }

    public final int c() {
        return this.f95844e;
    }

    public final int d() {
        return this.f95841b;
    }

    public final int e() {
        return this.f95846g;
    }

    public final int f() {
        return this.f95845f;
    }

    public final int g() {
        return this.f95840a;
    }

    public final <T> T h(int i10, @NotNull Mf.p<? super Long, ? super Integer, ? extends T> buildInstant) {
        M.p(buildInstant, "buildInstant");
        long g10 = g();
        long j10 = 365 * g10;
        long d10 = (g10 >= 0 ? j10 + (((3 + g10) / 4) - ((99 + g10) / 100)) + ((g10 + 399) / 400) : j10 - (((g10 / (-4)) - (g10 / (-100))) + (g10 / (-400)))) + (((d() * 367) - 362) / 12) + (a() - 1);
        if (d() > 2) {
            d10 = !y.p(g()) ? d10 - 2 : (-1) + d10;
        }
        return buildInstant.invoke(Long.valueOf((((d10 - y.f95900f) * 86400) + (((b() * 3600) + (c() * 60)) + f())) - i10), Integer.valueOf(e()));
    }

    @NotNull
    public String toString() {
        return "UnboundLocalDateTime(" + this.f95840a + '-' + this.f95841b + '-' + this.f95842c + C15883c.f126249O + this.f95843d + ':' + this.f95844e + ':' + this.f95845f + '.' + this.f95846g + ')';
    }
}
