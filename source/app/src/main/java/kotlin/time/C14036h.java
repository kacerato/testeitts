package kotlin.time;

import ag.P;
import android.icu.text.DateFormat;
import eg.C13143u0;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tf.C15421h;
import w2.C15883c;

@t0({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1613:1\n41#1:1614\n41#1:1615\n41#1:1616\n41#1:1617\n41#1:1618\n572#1:1619\n589#1:1627\n173#2,6:1620\n1#3:1626\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n42#1:1614\n43#1:1615\n353#1:1616\n362#1:1617\n546#1:1618\n847#1:1619\n938#1:1627\n889#1:1620,6\n*E\n"})
@Lf.h
@InterfaceC14422l0(version = "1.6")
public final class C14036h implements Comparable<C14036h> {

    @NotNull
    public static final a f95864c = new a(null);

    public static final long f95865d = o(0);

    public static final long f95866e = C14038j.c(4611686018427387903L);

    public static final long f95867f = C14038j.c(-4611686018427387903L);

    public static final long f95868g = 9223372036854759646L;

    public static final long f95869h = o(f95868g);

    public final long f95870b;

    @t0({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/DurationKt\n*L\n1#1,1613:1\n1#2:1614\n1449#3:1615\n1449#3:1616\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration$Companion\n*L\n337#1:1615\n347#1:1616\n*E\n"})
    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @Ef.f
        public static void A(double d10) {
        }

        @Ef.f
        public static void B(int i10) {
        }

        @Ef.f
        public static void C(long j10) {
        }

        @Ef.f
        public static void G(double d10) {
        }

        @Ef.f
        public static void H(int i10) {
        }

        @Ef.f
        public static void I(long j10) {
        }

        @Ef.f
        public static void N(double d10) {
        }

        @Ef.f
        public static void O(int i10) {
        }

        @Ef.f
        public static void P(long j10) {
        }

        @Ef.f
        public static void T(double d10) {
        }

        @Ef.f
        public static void U(int i10) {
        }

        @Ef.f
        public static void V(long j10) {
        }

        public static void X() {
        }

        @Ef.f
        public static void f(double d10) {
        }

        @Ef.f
        public static void g(int i10) {
        }

        @Ef.f
        public static void h(long j10) {
        }

        @Ef.f
        public static void l(double d10) {
        }

        @Ef.f
        public static void m(int i10) {
        }

        @Ef.f
        public static void n(long j10) {
        }

        public static void q() {
        }

        @Ef.f
        public static void u(double d10) {
        }

        @Ef.f
        public static void v(int i10) {
        }

        @Ef.f
        public static void w(long j10) {
        }

        public final long D(double d10) {
            return C14038j.N(d10, EnumC14039k.MINUTES);
        }

        public final long E(int i10) {
            return C14038j.O(i10, EnumC14039k.MINUTES);
        }

        public final long F(long j10) {
            return C14038j.P(j10, EnumC14039k.MINUTES);
        }

        public final long J() {
            return C14036h.f95867f;
        }

        public final long K(double d10) {
            return C14038j.N(d10, EnumC14039k.NANOSECONDS);
        }

        public final long L(int i10) {
            return C14038j.O(i10, EnumC14039k.NANOSECONDS);
        }

        public final long M(long j10) {
            return C14038j.P(j10, EnumC14039k.NANOSECONDS);
        }

        public final long Q(double d10) {
            return C14038j.N(d10, EnumC14039k.SECONDS);
        }

        public final long R(int i10) {
            return C14038j.O(i10, EnumC14039k.SECONDS);
        }

        public final long S(long j10) {
            return C14038j.P(j10, EnumC14039k.SECONDS);
        }

        public final long W() {
            return C14036h.f95865d;
        }

        public final long Y(@NotNull String value) {
            M.p(value, "value");
            try {
                long H10 = C14038j.H(value, false, false, 4, null);
                if (C14036h.u(H10, C14036h.f95864c.p())) {
                    throw new IllegalStateException("invariant failed");
                }
                return H10;
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e10);
            }
        }

        public final long Z(@NotNull String value) {
            M.p(value, "value");
            try {
                long H10 = C14038j.H(value, true, false, 4, null);
                if (C14036h.u(H10, C14036h.f95864c.p())) {
                    throw new IllegalStateException("invariant failed");
                }
                return H10;
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e10);
            }
        }

        @o
        public final double a(double d10, @NotNull EnumC14039k sourceUnit, @NotNull EnumC14039k targetUnit) {
            M.p(sourceUnit, "sourceUnit");
            M.p(targetUnit, "targetUnit");
            return m.a(d10, sourceUnit, targetUnit);
        }

        @Nullable
        public final C14036h a0(@NotNull String value) {
            M.p(value, "value");
            long i10 = C14038j.i(value, true, false);
            if (C14036h.u(i10, C14036h.f95864c.p())) {
                return null;
            }
            return C14036h.j(i10);
        }

        public final long b(long j10) {
            long o10 = C14036h.o(j10);
            if (C14037i.c()) {
                if (C14036h.R(o10)) {
                    long N10 = C14036h.N(o10);
                    if (-4611686018426999999L > N10 || N10 >= 4611686018427000000L) {
                        throw new AssertionError((Object) (C14036h.N(o10) + " ns is out of nanoseconds range"));
                    }
                } else {
                    long N11 = C14036h.N(o10);
                    if (-4611686018427387903L >= N11 || N11 >= 4611686018427387903L) {
                        long N12 = C14036h.N(o10);
                        if (N12 != 4611686018427387903L && N12 != -4611686018427387903L) {
                            throw new AssertionError((Object) (C14036h.N(o10) + " ms is out of milliseconds range"));
                        }
                    }
                    long N13 = C14036h.N(o10);
                    if (-4611686018426L <= N13 && N13 < 4611686018427L) {
                        throw new AssertionError((Object) (C14036h.N(o10) + " ms is denormalized"));
                    }
                }
            }
            return o10;
        }

        @Nullable
        public final C14036h b0(@NotNull String value) {
            M.p(value, "value");
            long i10 = C14038j.i(value, false, false);
            if (C14036h.u(i10, C14036h.f95864c.p())) {
                return null;
            }
            return C14036h.j(i10);
        }

        public final long c(double d10) {
            return C14038j.N(d10, EnumC14039k.DAYS);
        }

        public final long d(int i10) {
            return C14038j.O(i10, EnumC14039k.DAYS);
        }

        public final long e(long j10) {
            return C14038j.P(j10, EnumC14039k.DAYS);
        }

        public final long i(double d10) {
            return C14038j.N(d10, EnumC14039k.HOURS);
        }

        public final long j(int i10) {
            return C14038j.O(i10, EnumC14039k.HOURS);
        }

        public final long k(long j10) {
            return C14038j.P(j10, EnumC14039k.HOURS);
        }

        public final long o() {
            return C14036h.f95866e;
        }

        public final long p() {
            return C14036h.f95869h;
        }

        public final long r(double d10) {
            return C14038j.N(d10, EnumC14039k.MICROSECONDS);
        }

        public final long s(int i10) {
            return C14038j.O(i10, EnumC14039k.MICROSECONDS);
        }

        public final long t(long j10) {
            return C14038j.P(j10, EnumC14039k.MICROSECONDS);
        }

        public final long x(double d10) {
            return C14038j.N(d10, EnumC14039k.MILLISECONDS);
        }

        public final long y(int i10) {
            return C14038j.O(i10, EnumC14039k.MILLISECONDS);
        }

        public final long z(long j10) {
            return C14038j.P(j10, EnumC14039k.MILLISECONDS);
        }

        public a() {
        }
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Don't call this constructor directly.")
    public C14036h(long j10) {
        this.f95870b = j10;
    }

    public static final long A(long j10) {
        return g0(j10, EnumC14039k.MICROSECONDS);
    }

    public static final long B(long j10) {
        return (Q(j10) && P(j10)) ? N(j10) : g0(j10, EnumC14039k.MILLISECONDS);
    }

    public static final long C(long j10) {
        return g0(j10, EnumC14039k.MINUTES);
    }

    public static final long D(long j10) {
        long N10 = N(j10);
        if (R(j10)) {
            return N10;
        }
        if (N10 > C13143u0.f85789f) {
            return Long.MAX_VALUE;
        }
        if (N10 < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return C14038j.g(N10);
    }

    public static final long E(long j10) {
        return g0(j10, EnumC14039k.SECONDS);
    }

    @InterfaceC14410f0
    public static void F() {
    }

    public static final int G(long j10) {
        if (S(j10)) {
            return 0;
        }
        return (int) (C(j10) % 60);
    }

    @InterfaceC14410f0
    public static void H() {
    }

    public static final int I(long j10) {
        if (S(j10)) {
            return 0;
        }
        return (int) (Q(j10) ? C14038j.g(N(j10) % 1000) : N(j10) % 1000000000);
    }

    @InterfaceC14410f0
    public static void J() {
    }

    public static final int K(long j10) {
        if (S(j10)) {
            return 0;
        }
        return (int) (E(j10) % 60);
    }

    public static final EnumC14039k L(long j10) {
        return R(j10) ? EnumC14039k.NANOSECONDS : EnumC14039k.MILLISECONDS;
    }

    public static final int M(long j10) {
        return ((int) j10) & 1;
    }

    public static final long N(long j10) {
        return j10 >> 1;
    }

    public static int O(long j10) {
        return Long.hashCode(j10);
    }

    public static final boolean P(long j10) {
        return !S(j10);
    }

    public static final boolean Q(long j10) {
        return (((int) j10) & 1) == 1;
    }

    public static final boolean R(long j10) {
        return (((int) j10) & 1) == 0;
    }

    public static final boolean S(long j10) {
        return j10 == f95866e || j10 == f95867f;
    }

    public static final boolean T(long j10) {
        return j10 < 0;
    }

    public static final boolean U(long j10) {
        return j10 > 0;
    }

    public static final long V(long j10, long j11) {
        return W(j10, l0(j11));
    }

    public static final long W(long j10, long j11) {
        if ((((int) j10) & 1) != (((int) j11) & 1)) {
            return Q(j10) ? h(j10, N(j10), N(j11)) : h(j10, N(j11), N(j10));
        }
        if (R(j10)) {
            return C14038j.f(N(j10) + N(j11));
        }
        long a10 = C14038j.a(N(j10), N(j11));
        if (a10 != f95868g) {
            return (a10 == 4611686018427387903L || a10 == -4611686018427387903L) ? C14038j.c(a10) : C14038j.d(a10);
        }
        throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
    }

    public static final long X(long j10, double d10) {
        int K02 = Rf.d.K0(d10);
        if (K02 == d10) {
            return Y(j10, K02);
        }
        EnumC14039k L10 = L(j10);
        return C14038j.N(d0(j10, L10) * d10, L10);
    }

    public static final long Y(long j10, int i10) {
        if (S(j10)) {
            if (i10 != 0) {
                return i10 > 0 ? j10 : l0(j10);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        }
        if (i10 == 0) {
            return f95865d;
        }
        long N10 = N(j10);
        long j11 = i10;
        long j12 = N10 * j11;
        if (!R(j10)) {
            return j12 / j11 == N10 ? C14038j.c(Vf.u.N(j12, new Vf.o(-4611686018427387903L, 4611686018427387903L))) : Rf.d.V(N10) * Rf.d.U(i10) > 0 ? f95866e : f95867f;
        }
        if (-2147483647L <= N10 && N10 < 2147483648L) {
            return C14038j.e(j12);
        }
        if (j12 / j11 == N10) {
            return C14038j.f(j12);
        }
        long h10 = C14038j.h(N10);
        long j13 = h10 * j11;
        long h11 = C14038j.h((N10 - C14038j.g(h10)) * j11) + j13;
        return (j13 / j11 != h10 || (h11 ^ j13) < 0) ? Rf.d.V(N10) * Rf.d.U(i10) > 0 ? f95866e : f95867f : C14038j.c(Vf.u.N(h11, new Vf.o(-4611686018427387903L, 4611686018427387903L)));
    }

    public static final <T> T Z(long j10, @NotNull Mf.p<? super Long, ? super Integer, ? extends T> action) {
        M.p(action, "action");
        return action.invoke(Long.valueOf(E(j10)), Integer.valueOf(I(j10)));
    }

    public static final <T> T a0(long j10, @NotNull Mf.q<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        M.p(action, "action");
        return action.n(Long.valueOf(C(j10)), Integer.valueOf(K(j10)), Integer.valueOf(I(j10)));
    }

    public static final <T> T b0(long j10, @NotNull Mf.r<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        M.p(action, "action");
        return action.invoke(Long.valueOf(z(j10)), Integer.valueOf(G(j10)), Integer.valueOf(K(j10)), Integer.valueOf(I(j10)));
    }

    public static final <T> T c0(long j10, @NotNull Mf.s<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        M.p(action, "action");
        return action.s(Long.valueOf(y(j10)), Integer.valueOf(x(j10)), Integer.valueOf(G(j10)), Integer.valueOf(K(j10)), Integer.valueOf(I(j10)));
    }

    public static final double d0(long j10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        if (j10 == f95866e) {
            return Double.POSITIVE_INFINITY;
        }
        if (j10 == f95867f) {
            return Double.NEGATIVE_INFINITY;
        }
        return m.a(N(j10), L(j10), unit);
    }

    public static final int e0(long j10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        return (int) Vf.u.M(g0(j10, unit), -2147483648L, 2147483647L);
    }

    @NotNull
    public static final String f0(long j10) {
        StringBuilder sb2 = new StringBuilder();
        if (T(j10)) {
            sb2.append('-');
        }
        sb2.append("PT");
        long v10 = v(j10);
        long z10 = z(v10);
        int G10 = G(v10);
        int K10 = K(v10);
        int I10 = I(v10);
        if (S(j10)) {
            z10 = 9999999999999L;
        }
        boolean z11 = false;
        boolean z12 = z10 != 0;
        boolean z13 = (K10 == 0 && I10 == 0) ? false : true;
        if (G10 != 0 || (z13 && z12)) {
            z11 = true;
        }
        if (z12) {
            sb2.append(z10);
            sb2.append('H');
        }
        if (z11) {
            sb2.append(G10);
            sb2.append('M');
        }
        if (z13 || (!z12 && !z11)) {
            i(j10, sb2, K10, I10, 9, "S", true);
        }
        return sb2.toString();
    }

    public static final long g0(long j10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        if (j10 == f95866e) {
            return Long.MAX_VALUE;
        }
        if (j10 == f95867f) {
            return Long.MIN_VALUE;
        }
        return m.b(N(j10), L(j10), unit);
    }

    public static final long h(long j10, long j11, long j12) {
        long h10 = C14038j.h(j12);
        long a10 = C14038j.a(j11, h10);
        if (-4611686018426L > a10 || a10 >= 4611686018427L) {
            return C14038j.c(a10);
        }
        return C14038j.e(C14038j.g(a10) + (j12 - C14038j.g(h10)));
    }

    @NotNull
    public static String h0(long j10) {
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == f95866e) {
            return C14038j.f95883k;
        }
        if (j10 == f95867f) {
            return "-Infinity";
        }
        boolean T10 = T(j10);
        StringBuilder sb2 = new StringBuilder();
        if (T10) {
            sb2.append('-');
        }
        long v10 = v(j10);
        long y10 = y(v10);
        int x10 = x(v10);
        int G10 = G(v10);
        int K10 = K(v10);
        int I10 = I(v10);
        int i10 = 0;
        boolean z10 = y10 != 0;
        boolean z11 = x10 != 0;
        boolean z12 = G10 != 0;
        boolean z13 = (K10 == 0 && I10 == 0) ? false : true;
        if (z10) {
            sb2.append(y10);
            sb2.append('d');
            i10 = 1;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(C15883c.f126249O);
            }
            sb2.append(x10);
            sb2.append('h');
            i10 = i11;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb2.append(C15883c.f126249O);
            }
            sb2.append(G10);
            sb2.append('m');
            i10 = i12;
        }
        if (z13) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb2.append(C15883c.f126249O);
            }
            if (K10 != 0 || z10 || z11 || z12) {
                i(j10, sb2, K10, I10, 9, "s", false);
            } else if (I10 >= 1000000) {
                i(j10, sb2, I10 / 1000000, I10 % 1000000, 6, DateFormat.MINUTE_SECOND, false);
            } else if (I10 >= 1000) {
                i(j10, sb2, I10 / 1000, I10 % 1000, 3, "us", false);
            } else {
                sb2.append(I10);
                sb2.append("ns");
            }
            i10 = i13;
        }
        if (T10 && i10 > 1) {
            sb2.insert(1, '(').append(')');
        }
        return sb2.toString();
    }

    public static final void i(long j10, StringBuilder sb2, int i10, int i11, int i12, String str, boolean z10) {
        sb2.append(i10);
        if (i11 != 0) {
            sb2.append('.');
            String o42 = P.o4(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = o42.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (o42.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (z10 || i15 >= 3) {
                sb2.append((CharSequence) o42, 0, ((i13 + 3) / 3) * 3);
                M.o(sb2, "append(...)");
            } else {
                sb2.append((CharSequence) o42, 0, i15);
                M.o(sb2, "append(...)");
            }
        }
        sb2.append(str);
    }

    @NotNull
    public static final String i0(long j10, @NotNull EnumC14039k unit, int i10) {
        M.p(unit, "unit");
        if (i10 < 0) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + i10).toString());
        }
        double d02 = d0(j10, unit);
        if (Double.isInfinite(d02)) {
            return String.valueOf(d02);
        }
        return C14037i.b(d02, Vf.u.D(i10, 12)) + n.i(unit);
    }

    public static final C14036h j(long j10) {
        return new C14036h(j10);
    }

    public static String j0(long j10, EnumC14039k enumC14039k, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return i0(j10, enumC14039k, i10);
    }

    public static final long k0(long j10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        EnumC14039k L10 = L(j10);
        if (unit.compareTo(L10) <= 0 || S(j10)) {
            return j10;
        }
        return C14038j.P(N(j10) - (N(j10) % m.b(1L, unit, L10)), L10);
    }

    public static final long l0(long j10) {
        return C14038j.b(-N(j10), ((int) j10) & 1);
    }

    public static int m(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 < 0 || (((int) j12) & 1) == 0) {
            return M.u(j10, j11);
        }
        int i10 = (((int) j10) & 1) - (((int) j11) & 1);
        return T(j10) ? -i10 : i10;
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Don't call this constructor directly.")
    public static long o(long j10) {
        return j10;
    }

    public static final double q(long j10, long j11) {
        EnumC14039k enumC14039k = (EnumC14039k) C15421h.X(L(j10), L(j11));
        return d0(j10, enumC14039k) / d0(j11, enumC14039k);
    }

    public static final long r(long j10, double d10) {
        int K02 = Rf.d.K0(d10);
        if (K02 == d10 && K02 != 0) {
            return s(j10, K02);
        }
        EnumC14039k L10 = L(j10);
        return C14038j.N(d0(j10, L10) / d10, L10);
    }

    public static final long s(long j10, int i10) {
        if (i10 == 0) {
            if (U(j10)) {
                return f95866e;
            }
            if (T(j10)) {
                return f95867f;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (R(j10)) {
            return C14038j.e(N(j10) / i10);
        }
        if (S(j10)) {
            return Y(j10, Rf.d.U(i10));
        }
        long j11 = i10;
        long N10 = N(j10) / j11;
        if (-4611686018426L > N10 || N10 >= 4611686018427L) {
            return C14038j.c(N10);
        }
        return C14038j.e(C14038j.g(N10) + (C14038j.g(N(j10) - (N10 * j11)) / j11));
    }

    public static boolean t(long j10, Object obj) {
        return (obj instanceof C14036h) && j10 == ((C14036h) obj).m0();
    }

    public static final boolean u(long j10, long j11) {
        return j10 == j11;
    }

    public static final long v(long j10) {
        return T(j10) ? l0(j10) : j10;
    }

    @InterfaceC14410f0
    public static void w() {
    }

    public static final int x(long j10) {
        if (S(j10)) {
            return 0;
        }
        return (int) (z(j10) % 24);
    }

    public static final long y(long j10) {
        return g0(j10, EnumC14039k.DAYS);
    }

    public static final long z(long j10) {
        return g0(j10, EnumC14039k.HOURS);
    }

    @Override
    public int compareTo(C14036h c14036h) {
        return k(c14036h.m0());
    }

    public boolean equals(Object obj) {
        return t(this.f95870b, obj);
    }

    public int hashCode() {
        return O(this.f95870b);
    }

    public int k(long j10) {
        return m(this.f95870b, j10);
    }

    public final long m0() {
        return this.f95870b;
    }

    @NotNull
    public String toString() {
        return h0(this.f95870b);
    }
}
