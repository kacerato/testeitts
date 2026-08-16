package kotlin.time;

import kotlin.jvm.internal.M;
import kotlin.time.InterfaceC14035g;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "1.9")
public interface I {

    @NotNull
    public static final a f95833a = a.f95834a;

    public static final class a {

        public static final a f95834a = new a();
    }

    public static final class b implements c {

        @NotNull
        public static final b f95835b = new b();

        @Lf.h
        @T0(markerClass = {o.class})
        @InterfaceC14422l0(version = "1.9")
        public static final class a implements InterfaceC14035g {

            public final long f95836b;

            public a(long j10) {
                this.f95836b = j10;
            }

            public static final a d(long j10) {
                return new a(j10);
            }

            public static final int e(long j10, long j11) {
                return C14036h.m(r(j10, j11), C14036h.f95864c.W());
            }

            public static int g(long j10, @NotNull InterfaceC14035g other) {
                M.p(other, "other");
                return d(j10).compareTo(other);
            }

            public static long h(long j10) {
                return j10;
            }

            public static long i(long j10) {
                return F.f95830b.d(j10);
            }

            public static boolean j(long j10, Object obj) {
                return (obj instanceof a) && j10 == ((a) obj).y();
            }

            public static final boolean k(long j10, long j11) {
                return j10 == j11;
            }

            public static boolean m(long j10) {
                return C14036h.T(i(j10));
            }

            public static boolean o(long j10) {
                return !C14036h.T(i(j10));
            }

            public static int q(long j10) {
                return Long.hashCode(j10);
            }

            public static final long r(long j10, long j11) {
                return F.f95830b.c(j10, j11);
            }

            public static long t(long j10, long j11) {
                return F.f95830b.b(j10, C14036h.l0(j11));
            }

            public static long u(long j10, @NotNull InterfaceC14035g other) {
                M.p(other, "other");
                if (other instanceof a) {
                    return r(j10, ((a) other).y());
                }
                throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) x(j10)) + " and " + ((Object) other));
            }

            public static long w(long j10, long j11) {
                return F.f95830b.b(j10, j11);
            }

            public static String x(long j10) {
                return "ValueTimeMark(reading=" + j10 + ')';
            }

            @Override
            public long a() {
                return i(this.f95836b);
            }

            @Override
            public boolean b() {
                return m(this.f95836b);
            }

            @Override
            public boolean c() {
                return o(this.f95836b);
            }

            @Override
            public boolean equals(Object obj) {
                return j(this.f95836b, obj);
            }

            @Override
            public InterfaceC14035g f(long j10) {
                return d(v(j10));
            }

            @Override
            public int hashCode() {
                return q(this.f95836b);
            }

            @Override
            public InterfaceC14035g l(long j10) {
                return d(s(j10));
            }

            @Override
            public int compareTo(@NotNull InterfaceC14035g interfaceC14035g) {
                return InterfaceC14035g.a.a(this, interfaceC14035g);
            }

            @Override
            public long p(@NotNull InterfaceC14035g other) {
                M.p(other, "other");
                return u(this.f95836b, other);
            }

            public long s(long j10) {
                return t(this.f95836b, j10);
            }

            public String toString() {
                return x(this.f95836b);
            }

            public long v(long j10) {
                return w(this.f95836b, j10);
            }

            public final long y() {
                return this.f95836b;
            }

            @Override
            public H f(long j10) {
                return d(v(j10));
            }

            @Override
            public H l(long j10) {
                return d(s(j10));
            }
        }

        @Override
        public InterfaceC14035g a() {
            return a.d(b());
        }

        public long b() {
            return F.f95830b.e();
        }

        @NotNull
        public String toString() {
            return F.f95830b.toString();
        }

        @Override
        public H a() {
            return a.d(b());
        }
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    public interface c extends I {
        @Override
        @NotNull
        InterfaceC14035g a();
    }

    @NotNull
    H a();
}
