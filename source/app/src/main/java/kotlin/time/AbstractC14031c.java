package kotlin.time;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.I;
import kotlin.time.InterfaceC14035g;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "1.9")
public abstract class AbstractC14031c implements I.c {

    @NotNull
    public final EnumC14039k f95852b;

    @NotNull
    public final nf.I f95853c;

    @t0({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:211\n*E\n"})
    public static final class a implements InterfaceC14035g {

        public final long f95854b;

        @NotNull
        public final AbstractC14031c f95855c;

        public final long f95856d;

        public a(long j10, AbstractC14031c abstractC14031c, long j11, C14026x c14026x) {
            this(j10, abstractC14031c, j11);
        }

        @Override
        public long a() {
            return C14036h.V(C.h(this.f95855c.d(), this.f95854b, this.f95855c.e()), this.f95856d);
        }

        @Override
        public boolean b() {
            return InterfaceC14035g.a.b(this);
        }

        @Override
        public boolean c() {
            return InterfaceC14035g.a.c(this);
        }

        @Override
        public boolean equals(@Nullable Object obj) {
            return (obj instanceof a) && M.g(this.f95855c, ((a) obj).f95855c) && C14036h.u(p((InterfaceC14035g) obj), C14036h.f95864c.W());
        }

        @Override
        public int hashCode() {
            return (C14036h.O(this.f95856d) * 37) + Long.hashCode(this.f95854b);
        }

        @Override
        @NotNull
        public InterfaceC14035g l(long j10) {
            return InterfaceC14035g.a.d(this, j10);
        }

        @Override
        public int compareTo(@NotNull InterfaceC14035g interfaceC14035g) {
            return InterfaceC14035g.a.a(this, interfaceC14035g);
        }

        @Override
        public long p(@NotNull InterfaceC14035g other) {
            M.p(other, "other");
            if (other instanceof a) {
                a aVar = (a) other;
                if (M.g(this.f95855c, aVar.f95855c)) {
                    return C14036h.W(C.h(this.f95854b, aVar.f95854b, this.f95855c.e()), C14036h.V(this.f95856d, aVar.f95856d));
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) this) + " and " + ((Object) other));
        }

        @NotNull
        public String toString() {
            return "LongTimeMark(" + this.f95854b + n.i(this.f95855c.e()) + " + " + ((Object) C14036h.h0(this.f95856d)) + ", " + ((Object) this.f95855c) + ')';
        }

        public a(long j10, AbstractC14031c timeSource, long j11) {
            M.p(timeSource, "timeSource");
            this.f95854b = j10;
            this.f95855c = timeSource;
            this.f95856d = j11;
        }

        @Override
        @NotNull
        public InterfaceC14035g f(long j10) {
            EnumC14039k e10 = this.f95855c.e();
            if (C14036h.S(j10)) {
                return new a(C.d(this.f95854b, e10, j10), this.f95855c, C14036h.f95864c.W(), null);
            }
            long k02 = C14036h.k0(j10, e10);
            long W10 = C14036h.W(C14036h.V(j10, k02), this.f95856d);
            long d10 = C.d(this.f95854b, e10, k02);
            long k03 = C14036h.k0(W10, e10);
            long d11 = C.d(d10, e10, k03);
            long V10 = C14036h.V(W10, k03);
            long D10 = C14036h.D(V10);
            if (d11 != 0 && D10 != 0 && (d11 ^ D10) < 0) {
                long O10 = C14038j.O(Rf.d.V(D10), e10);
                d11 = C.d(d11, e10, O10);
                V10 = C14036h.V(V10, O10);
            }
            if ((1 | (d11 - 1)) == Long.MAX_VALUE) {
                V10 = C14036h.f95864c.W();
            }
            return new a(d11, this.f95855c, V10, null);
        }
    }

    public AbstractC14031c(@NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        this.f95852b = unit;
        this.f95853c = nf.K.a(new Mf.a() {
            @Override
            public final Object invoke() {
                long h10;
                h10 = AbstractC14031c.h(AbstractC14031c.this);
                return Long.valueOf(h10);
            }
        });
    }

    public static final long h(AbstractC14031c abstractC14031c) {
        return abstractC14031c.g();
    }

    public final long d() {
        return g() - f();
    }

    @NotNull
    public final EnumC14039k e() {
        return this.f95852b;
    }

    public final long f() {
        return ((Number) this.f95853c.getValue()).longValue();
    }

    public abstract long g();

    @Override
    @NotNull
    public InterfaceC14035g a() {
        return new a(d(), this, C14036h.f95864c.W(), null);
    }
}
