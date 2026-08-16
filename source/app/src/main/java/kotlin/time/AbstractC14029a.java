package kotlin.time;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.time.I;
import kotlin.time.InterfaceC14035g;
import nf.EnumC14431q;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@o
@InterfaceC14427o(level = EnumC14431q.ERROR, message = "Using AbstractDoubleTimeSource is no longer recommended, use AbstractLongTimeSource instead.")
@InterfaceC14422l0(version = "1.3")
public abstract class AbstractC14029a implements I.c {

    @NotNull
    public final EnumC14039k f95847b;

    public static final class C1859a implements InterfaceC14035g {

        public final double f95848b;

        @NotNull
        public final AbstractC14029a f95849c;

        public final long f95850d;

        public C1859a(double d10, AbstractC14029a abstractC14029a, long j10, C14026x c14026x) {
            this(d10, abstractC14029a, j10);
        }

        @Override
        public long a() {
            return C14036h.V(C14038j.N(this.f95849c.c() - this.f95848b, this.f95849c.b()), this.f95850d);
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
            return (obj instanceof C1859a) && M.g(this.f95849c, ((C1859a) obj).f95849c) && C14036h.u(p((InterfaceC14035g) obj), C14036h.f95864c.W());
        }

        @Override
        public int hashCode() {
            return C14036h.O(C14036h.W(C14038j.N(this.f95848b, this.f95849c.b()), this.f95850d));
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
            if (other instanceof C1859a) {
                C1859a c1859a = (C1859a) other;
                if (M.g(this.f95849c, c1859a.f95849c)) {
                    if (C14036h.u(this.f95850d, c1859a.f95850d) && C14036h.S(this.f95850d)) {
                        return C14036h.f95864c.W();
                    }
                    long V10 = C14036h.V(this.f95850d, c1859a.f95850d);
                    long N10 = C14038j.N(this.f95848b - c1859a.f95848b, this.f95849c.b());
                    return C14036h.u(N10, C14036h.l0(V10)) ? C14036h.f95864c.W() : C14036h.W(N10, V10);
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) this) + " and " + ((Object) other));
        }

        @NotNull
        public String toString() {
            return "DoubleTimeMark(" + this.f95848b + n.i(this.f95849c.b()) + " + " + ((Object) C14036h.h0(this.f95850d)) + ", " + ((Object) this.f95849c) + ')';
        }

        public C1859a(double d10, AbstractC14029a timeSource, long j10) {
            M.p(timeSource, "timeSource");
            this.f95848b = d10;
            this.f95849c = timeSource;
            this.f95850d = j10;
        }

        @Override
        @NotNull
        public InterfaceC14035g f(long j10) {
            return new C1859a(this.f95848b, this.f95849c, C14036h.W(this.f95850d, j10), null);
        }
    }

    public AbstractC14029a(@NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        this.f95847b = unit;
    }

    @NotNull
    public final EnumC14039k b() {
        return this.f95847b;
    }

    public abstract double c();

    @Override
    @NotNull
    public InterfaceC14035g a() {
        return new C1859a(c(), this, C14036h.f95864c.W(), null);
    }
}
