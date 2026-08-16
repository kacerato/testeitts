package Vf;

import Vf.C3155a;
import Vf.j;
import Vf.m;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.InterfaceC14441w;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1573:1\n1#2:1574\n*E\n"})
public class u extends t {
    public static final byte A(byte b10, byte b11) {
        return b10 > b11 ? b11 : b10;
    }

    @InterfaceC14422l0(version = "1.7")
    public static final long A0(@NotNull m mVar) {
        M.p(mVar, "<this>");
        if (!mVar.isEmpty()) {
            return mVar.c();
        }
        throw new NoSuchElementException("Progression " + ((Object) mVar) + " is empty.");
    }

    @Lf.j(name = "shortRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean A1(@NotNull r<Short> rVar, int i10) {
        M.p(rVar, "<this>");
        Short R12 = R1(i10);
        if (R12 != null) {
            return rVar.contains(R12);
        }
        return false;
    }

    public static final double B(double d10, double d11) {
        return d10 > d11 ? d11 : d10;
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final Character B0(@NotNull C3155a c3155a) {
        M.p(c3155a, "<this>");
        if (c3155a.isEmpty()) {
            return null;
        }
        return Character.valueOf(c3155a.c());
    }

    @Lf.j(name = "shortRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean B1(@NotNull r<Short> rVar, long j10) {
        M.p(rVar, "<this>");
        Short S12 = S1(j10);
        if (S12 != null) {
            return rVar.contains(S12);
        }
        return false;
    }

    public static final float C(float f10, float f11) {
        return f10 > f11 ? f11 : f10;
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final Integer C0(@NotNull j jVar) {
        M.p(jVar, "<this>");
        if (jVar.isEmpty()) {
            return null;
        }
        return Integer.valueOf(jVar.c());
    }

    @NotNull
    public static final C3155a C1(@NotNull C3155a c3155a, int i10) {
        M.p(c3155a, "<this>");
        t.a(i10 > 0, Integer.valueOf(i10));
        C3155a.C0741a c0741a = C3155a.f26868e;
        char c10 = c3155a.c();
        char d10 = c3155a.d();
        if (c3155a.g() <= 0) {
            i10 = -i10;
        }
        return c0741a.a(c10, d10, i10);
    }

    public static int D(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final Long D0(@NotNull m mVar) {
        M.p(mVar, "<this>");
        if (mVar.isEmpty()) {
            return null;
        }
        return Long.valueOf(mVar.c());
    }

    @NotNull
    public static j D1(@NotNull j jVar, int i10) {
        M.p(jVar, "<this>");
        t.a(i10 > 0, Integer.valueOf(i10));
        j.a aVar = j.f26886e;
        int c10 = jVar.c();
        int d10 = jVar.d();
        if (jVar.g() <= 0) {
            i10 = -i10;
        }
        return aVar.a(c10, d10, i10);
    }

    public static long E(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    @Lf.j(name = "floatRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean E0(g gVar, byte b10) {
        M.p(gVar, "<this>");
        return gVar.contains(Float.valueOf(b10));
    }

    @NotNull
    public static final m E1(@NotNull m mVar, long j10) {
        M.p(mVar, "<this>");
        t.a(j10 > 0, Long.valueOf(j10));
        m.a aVar = m.f26896e;
        long c10 = mVar.c();
        long d10 = mVar.d();
        if (mVar.g() <= 0) {
            j10 = -j10;
        }
        return aVar.a(c10, d10, j10);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T F(@NotNull T t10, @NotNull T maximumValue) {
        M.p(t10, "<this>");
        M.p(maximumValue, "maximumValue");
        return t10.compareTo(maximumValue) > 0 ? maximumValue : t10;
    }

    @Lf.j(name = "floatRangeContains")
    public static final boolean F0(@NotNull g<Float> gVar, double d10) {
        M.p(gVar, "<this>");
        return gVar.contains(Float.valueOf((float) d10));
    }

    @Nullable
    public static final Byte F1(double d10) {
        if (-128.0d > d10 || d10 > 127.0d) {
            return null;
        }
        return Byte.valueOf((byte) d10);
    }

    public static final short G(short s10, short s11) {
        return s10 > s11 ? s11 : s10;
    }

    @Lf.j(name = "floatRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean G0(g gVar, int i10) {
        M.p(gVar, "<this>");
        return gVar.contains(Float.valueOf(i10));
    }

    @Nullable
    public static final Byte G1(float f10) {
        if (-128.0f > f10 || f10 > 127.0f) {
            return null;
        }
        return Byte.valueOf((byte) f10);
    }

    public static final byte H(byte b10, byte b11, byte b12) {
        if (b11 <= b12) {
            return b10 < b11 ? b11 : b10 > b12 ? b12 : b10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b12) + " is less than minimum " + ((int) b11) + '.');
    }

    @Lf.j(name = "floatRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean H0(g gVar, long j10) {
        M.p(gVar, "<this>");
        return gVar.contains(Float.valueOf((float) j10));
    }

    @Nullable
    public static final Byte H1(int i10) {
        if (-128 > i10 || i10 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) i10);
    }

    public static final double I(double d10, double d11, double d12) {
        if (d11 <= d12) {
            return d10 < d11 ? d11 : d10 > d12 ? d12 : d10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d12 + " is less than minimum " + d11 + '.');
    }

    @Lf.j(name = "floatRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean I0(g gVar, short s10) {
        M.p(gVar, "<this>");
        return gVar.contains(Float.valueOf(s10));
    }

    @Nullable
    public static final Byte I1(long j10) {
        if (-128 > j10 || j10 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) j10);
    }

    public static final float J(float f10, float f11, float f12) {
        if (f11 <= f12) {
            return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f12 + " is less than minimum " + f11 + '.');
    }

    @Lf.j(name = "intRangeContains")
    public static final boolean J0(@NotNull g<Integer> gVar, byte b10) {
        M.p(gVar, "<this>");
        return gVar.contains(Integer.valueOf(b10));
    }

    @Nullable
    public static final Byte J1(short s10) {
        if (-128 > s10 || s10 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) s10);
    }

    public static int K(int i10, int i11, int i12) {
        if (i11 <= i12) {
            return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    @Lf.j(name = "intRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean K0(g gVar, double d10) {
        M.p(gVar, "<this>");
        Integer K12 = K1(d10);
        if (K12 != null) {
            return gVar.contains(K12);
        }
        return false;
    }

    @Nullable
    public static final Integer K1(double d10) {
        if (-2.147483648E9d > d10 || d10 > 2.147483647E9d) {
            return null;
        }
        return Integer.valueOf((int) d10);
    }

    public static final int L(int i10, @NotNull g<Integer> range) {
        M.p(range, "range");
        if (range instanceof f) {
            return ((Number) O(Integer.valueOf(i10), (f) range)).intValue();
        }
        if (!range.isEmpty()) {
            return i10 < range.getStart().intValue() ? range.getStart().intValue() : i10 > range.getEndInclusive().intValue() ? range.getEndInclusive().intValue() : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
    }

    @Lf.j(name = "intRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean L0(g gVar, float f10) {
        M.p(gVar, "<this>");
        Integer L12 = L1(f10);
        if (L12 != null) {
            return gVar.contains(L12);
        }
        return false;
    }

    @Nullable
    public static final Integer L1(float f10) {
        if (-2.1474836E9f > f10 || f10 > 2.1474836E9f) {
            return null;
        }
        return Integer.valueOf((int) f10);
    }

    public static long M(long j10, long j11, long j12) {
        if (j11 <= j12) {
            return j10 < j11 ? j11 : j10 > j12 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + '.');
    }

    @Lf.j(name = "intRangeContains")
    public static final boolean M0(@NotNull g<Integer> gVar, long j10) {
        M.p(gVar, "<this>");
        Integer M12 = M1(j10);
        if (M12 != null) {
            return gVar.contains(M12);
        }
        return false;
    }

    @Nullable
    public static final Integer M1(long j10) {
        if (-2147483648L > j10 || j10 >= 2147483648L) {
            return null;
        }
        return Integer.valueOf((int) j10);
    }

    public static long N(long j10, @NotNull g<Long> range) {
        M.p(range, "range");
        if (range instanceof f) {
            return ((Number) O(Long.valueOf(j10), (f) range)).longValue();
        }
        if (!range.isEmpty()) {
            return j10 < range.getStart().longValue() ? range.getStart().longValue() : j10 > range.getEndInclusive().longValue() ? range.getEndInclusive().longValue() : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
    }

    @Lf.j(name = "intRangeContains")
    public static final boolean N0(@NotNull g<Integer> gVar, short s10) {
        M.p(gVar, "<this>");
        return gVar.contains(Integer.valueOf(s10));
    }

    @Nullable
    public static final Long N1(double d10) {
        if (-9.223372036854776E18d > d10 || d10 > 9.223372036854776E18d) {
            return null;
        }
        return Long.valueOf((long) d10);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T O(@NotNull T t10, @NotNull f<T> range) {
        M.p(t10, "<this>");
        M.p(range, "range");
        if (!range.isEmpty()) {
            return (!range.a(t10, range.getStart()) || range.a(range.getStart(), t10)) ? (!range.a(range.getEndInclusive(), t10) || range.a(t10, range.getEndInclusive())) ? t10 : range.getEndInclusive() : range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
    }

    @Lf.j(name = "intRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean O0(@NotNull r<Integer> rVar, byte b10) {
        M.p(rVar, "<this>");
        return rVar.contains(Integer.valueOf(b10));
    }

    @Nullable
    public static final Long O1(float f10) {
        if (-9.223372E18f > f10 || f10 > 9.223372E18f) {
            return null;
        }
        return Long.valueOf(f10);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T P(@NotNull T t10, @NotNull g<T> range) {
        M.p(t10, "<this>");
        M.p(range, "range");
        if (range instanceof f) {
            return (T) O(t10, (f) range);
        }
        if (!range.isEmpty()) {
            return t10.compareTo(range.getStart()) < 0 ? range.getStart() : t10.compareTo(range.getEndInclusive()) > 0 ? range.getEndInclusive() : t10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + ((Object) range) + '.');
    }

    @Lf.j(name = "intRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean P0(@NotNull r<Integer> rVar, long j10) {
        M.p(rVar, "<this>");
        Integer M12 = M1(j10);
        if (M12 != null) {
            return rVar.contains(M12);
        }
        return false;
    }

    @Nullable
    public static final Short P1(double d10) {
        if (-32768.0d > d10 || d10 > 32767.0d) {
            return null;
        }
        return Short.valueOf((short) d10);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T Q(@NotNull T t10, @Nullable T t11, @Nullable T t12) {
        M.p(t10, "<this>");
        if (t11 == null || t12 == null) {
            if (t11 != null && t10.compareTo(t11) < 0) {
                return t11;
            }
            if (t12 != null && t10.compareTo(t12) > 0) {
                return t12;
            }
        } else {
            if (t11.compareTo(t12) > 0) {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) t12) + " is less than minimum " + ((Object) t11) + '.');
            }
            if (t10.compareTo(t11) < 0) {
                return t11;
            }
            if (t10.compareTo(t12) > 0) {
                return t12;
            }
        }
        return t10;
    }

    @Lf.j(name = "intRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean Q0(@NotNull r<Integer> rVar, short s10) {
        M.p(rVar, "<this>");
        return rVar.contains(Integer.valueOf(s10));
    }

    @Nullable
    public static final Short Q1(float f10) {
        if (-32768.0f > f10 || f10 > 32767.0f) {
            return null;
        }
        return Short.valueOf((short) f10);
    }

    public static final short R(short s10, short s11, short s12) {
        if (s11 <= s12) {
            return s10 < s11 ? s11 : s10 > s12 ? s12 : s10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s12) + " is less than minimum " + ((int) s11) + '.');
    }

    @InterfaceC14422l0(version = "1.7")
    public static final char R0(@NotNull C3155a c3155a) {
        M.p(c3155a, "<this>");
        if (!c3155a.isEmpty()) {
            return c3155a.d();
        }
        throw new NoSuchElementException("Progression " + ((Object) c3155a) + " is empty.");
    }

    @Nullable
    public static final Short R1(int i10) {
        if (-32768 > i10 || i10 >= 32768) {
            return null;
        }
        return Short.valueOf((short) i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final boolean S(C3157c c3157c, Character ch2) {
        M.p(c3157c, "<this>");
        return ch2 != null && c3157c.j(ch2.charValue());
    }

    @InterfaceC14422l0(version = "1.7")
    public static final int S0(@NotNull j jVar) {
        M.p(jVar, "<this>");
        if (!jVar.isEmpty()) {
            return jVar.d();
        }
        throw new NoSuchElementException("Progression " + ((Object) jVar) + " is empty.");
    }

    @Nullable
    public static final Short S1(long j10) {
        if (-32768 > j10 || j10 >= 32768) {
            return null;
        }
        return Short.valueOf((short) j10);
    }

    @Ef.f
    public static final boolean T(l lVar, byte b10) {
        M.p(lVar, "<this>");
        return J0(lVar, b10);
    }

    @InterfaceC14422l0(version = "1.7")
    public static final long T0(@NotNull m mVar) {
        M.p(mVar, "<this>");
        if (!mVar.isEmpty()) {
            return mVar.d();
        }
        throw new NoSuchElementException("Progression " + ((Object) mVar) + " is empty.");
    }

    @NotNull
    public static final C3157c T1(char c10, char c11) {
        return M.t(c11, 0) <= 0 ? C3157c.f26876f.a() : new C3157c(c10, (char) (c11 - 1));
    }

    @Ef.f
    public static final boolean U(l lVar, long j10) {
        M.p(lVar, "<this>");
        return M0(lVar, j10);
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final Character U0(@NotNull C3155a c3155a) {
        M.p(c3155a, "<this>");
        if (c3155a.isEmpty()) {
            return null;
        }
        return Character.valueOf(c3155a.d());
    }

    @NotNull
    public static final l U1(byte b10, byte b11) {
        return new l(b10, b11 - 1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final boolean V(l lVar, Integer num) {
        M.p(lVar, "<this>");
        return num != null && lVar.j(num.intValue());
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final Integer V0(@NotNull j jVar) {
        M.p(jVar, "<this>");
        if (jVar.isEmpty()) {
            return null;
        }
        return Integer.valueOf(jVar.d());
    }

    @NotNull
    public static final l V1(byte b10, int i10) {
        return i10 <= Integer.MIN_VALUE ? l.f26894f.a() : new l(b10, i10 - 1);
    }

    @Ef.f
    public static final boolean W(l lVar, short s10) {
        M.p(lVar, "<this>");
        return N0(lVar, s10);
    }

    @InterfaceC14422l0(version = "1.7")
    @Nullable
    public static final Long W0(@NotNull m mVar) {
        M.p(mVar, "<this>");
        if (mVar.isEmpty()) {
            return null;
        }
        return Long.valueOf(mVar.d());
    }

    @NotNull
    public static final l W1(byte b10, short s10) {
        return new l(b10, s10 - 1);
    }

    @Ef.f
    public static final boolean X(o oVar, byte b10) {
        M.p(oVar, "<this>");
        return X0(oVar, b10);
    }

    @Lf.j(name = "longRangeContains")
    public static final boolean X0(@NotNull g<Long> gVar, byte b10) {
        M.p(gVar, "<this>");
        return gVar.contains(Long.valueOf(b10));
    }

    @NotNull
    public static final l X1(int i10, byte b10) {
        return new l(i10, b10 - 1);
    }

    @Ef.f
    public static final boolean Y(o oVar, int i10) {
        M.p(oVar, "<this>");
        return a1(oVar, i10);
    }

    @Lf.j(name = "longRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean Y0(g gVar, double d10) {
        M.p(gVar, "<this>");
        Long N12 = N1(d10);
        if (N12 != null) {
            return gVar.contains(N12);
        }
        return false;
    }

    @NotNull
    public static l Y1(int i10, int i11) {
        return i11 <= Integer.MIN_VALUE ? l.f26894f.a() : new l(i10, i11 - 1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final boolean Z(o oVar, Long l10) {
        M.p(oVar, "<this>");
        return l10 != null && oVar.j(l10.longValue());
    }

    @Lf.j(name = "longRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean Z0(g gVar, float f10) {
        M.p(gVar, "<this>");
        Long O12 = O1(f10);
        if (O12 != null) {
            return gVar.contains(O12);
        }
        return false;
    }

    @NotNull
    public static final l Z1(int i10, short s10) {
        return new l(i10, s10 - 1);
    }

    @Ef.f
    public static final boolean a0(o oVar, short s10) {
        M.p(oVar, "<this>");
        return b1(oVar, s10);
    }

    @Lf.j(name = "longRangeContains")
    public static final boolean a1(@NotNull g<Long> gVar, int i10) {
        M.p(gVar, "<this>");
        return gVar.contains(Long.valueOf(i10));
    }

    @NotNull
    public static final l a2(short s10, byte b10) {
        return new l(s10, b10 - 1);
    }

    @Lf.j(name = "doubleRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean b0(g gVar, byte b10) {
        M.p(gVar, "<this>");
        return gVar.contains(Double.valueOf(b10));
    }

    @Lf.j(name = "longRangeContains")
    public static final boolean b1(@NotNull g<Long> gVar, short s10) {
        M.p(gVar, "<this>");
        return gVar.contains(Long.valueOf(s10));
    }

    @NotNull
    public static final l b2(short s10, int i10) {
        return i10 <= Integer.MIN_VALUE ? l.f26894f.a() : new l(s10, i10 - 1);
    }

    @Lf.j(name = "doubleRangeContains")
    public static final boolean c0(@NotNull g<Double> gVar, float f10) {
        M.p(gVar, "<this>");
        return gVar.contains(Double.valueOf(f10));
    }

    @Lf.j(name = "longRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean c1(@NotNull r<Long> rVar, byte b10) {
        M.p(rVar, "<this>");
        return rVar.contains(Long.valueOf(b10));
    }

    @NotNull
    public static final l c2(short s10, short s11) {
        return new l(s10, s11 - 1);
    }

    @Lf.j(name = "doubleRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean d0(g gVar, int i10) {
        M.p(gVar, "<this>");
        return gVar.contains(Double.valueOf(i10));
    }

    @Lf.j(name = "longRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean d1(@NotNull r<Long> rVar, int i10) {
        M.p(rVar, "<this>");
        return rVar.contains(Long.valueOf(i10));
    }

    @NotNull
    public static final o d2(byte b10, long j10) {
        return j10 <= Long.MIN_VALUE ? o.f26904f.a() : new o(b10, j10 - 1);
    }

    @Lf.j(name = "doubleRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean e0(g gVar, long j10) {
        M.p(gVar, "<this>");
        return gVar.contains(Double.valueOf(j10));
    }

    @Lf.j(name = "longRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean e1(@NotNull r<Long> rVar, short s10) {
        M.p(rVar, "<this>");
        return rVar.contains(Long.valueOf(s10));
    }

    @NotNull
    public static final o e2(int i10, long j10) {
        return j10 <= Long.MIN_VALUE ? o.f26904f.a() : new o(i10, j10 - 1);
    }

    @Lf.j(name = "doubleRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean f0(g gVar, short s10) {
        M.p(gVar, "<this>");
        return gVar.contains(Double.valueOf(s10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final char f1(C3157c c3157c) {
        M.p(c3157c, "<this>");
        return g1(c3157c, Tf.f.f24956b);
    }

    @NotNull
    public static final o f2(long j10, byte b10) {
        return new o(j10, b10 - 1);
    }

    @Lf.j(name = "doubleRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean g0(@NotNull r<Double> rVar, float f10) {
        M.p(rVar, "<this>");
        return rVar.contains(Double.valueOf(f10));
    }

    @InterfaceC14422l0(version = "1.3")
    public static final char g1(@NotNull C3157c c3157c, @NotNull Tf.f random) {
        M.p(c3157c, "<this>");
        M.p(random, "random");
        try {
            return (char) random.n(c3157c.c(), c3157c.d() + 1);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @NotNull
    public static final o g2(long j10, int i10) {
        return new o(j10, i10 - 1);
    }

    @NotNull
    public static final C3155a h0(char c10, char c11) {
        return C3155a.f26868e.a(c10, c11, -1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final int h1(l lVar) {
        M.p(lVar, "<this>");
        return i1(lVar, Tf.f.f24956b);
    }

    @NotNull
    public static final o h2(long j10, long j11) {
        return j11 <= Long.MIN_VALUE ? o.f26904f.a() : new o(j10, j11 - 1);
    }

    @NotNull
    public static final j i0(byte b10, byte b11) {
        return j.f26886e.a(b10, b11, -1);
    }

    @InterfaceC14422l0(version = "1.3")
    public static final int i1(@NotNull l lVar, @NotNull Tf.f random) {
        M.p(lVar, "<this>");
        M.p(random, "random");
        try {
            return Tf.g.h(random, lVar);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @NotNull
    public static final o i2(long j10, short s10) {
        return new o(j10, s10 - 1);
    }

    @NotNull
    public static final j j0(byte b10, int i10) {
        return j.f26886e.a(b10, i10, -1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final long j1(o oVar) {
        M.p(oVar, "<this>");
        return k1(oVar, Tf.f.f24956b);
    }

    @NotNull
    public static final o j2(short s10, long j10) {
        return j10 <= Long.MIN_VALUE ? o.f26904f.a() : new o(s10, j10 - 1);
    }

    @NotNull
    public static final j k0(byte b10, short s10) {
        return j.f26886e.a(b10, s10, -1);
    }

    @InterfaceC14422l0(version = "1.3")
    public static final long k1(@NotNull o oVar, @NotNull Tf.f random) {
        M.p(oVar, "<this>");
        M.p(random, "random");
        try {
            return Tf.g.i(random, oVar);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Lf.j(name = "byteRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean l(g gVar, double d10) {
        M.p(gVar, "<this>");
        Byte F12 = F1(d10);
        if (F12 != null) {
            return gVar.contains(F12);
        }
        return false;
    }

    @NotNull
    public static final j l0(int i10, byte b10) {
        return j.f26886e.a(i10, b10, -1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Character l1(C3157c c3157c) {
        M.p(c3157c, "<this>");
        return m1(c3157c, Tf.f.f24956b);
    }

    @Lf.j(name = "byteRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean m(g gVar, float f10) {
        M.p(gVar, "<this>");
        Byte G12 = G1(f10);
        if (G12 != null) {
            return gVar.contains(G12);
        }
        return false;
    }

    @NotNull
    public static j m0(int i10, int i11) {
        return j.f26886e.a(i10, i11, -1);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character m1(@NotNull C3157c c3157c, @NotNull Tf.f random) {
        M.p(c3157c, "<this>");
        M.p(random, "random");
        if (c3157c.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.n(c3157c.c(), c3157c.d() + 1));
    }

    @Lf.j(name = "byteRangeContains")
    public static final boolean n(@NotNull g<Byte> gVar, int i10) {
        M.p(gVar, "<this>");
        Byte H12 = H1(i10);
        if (H12 != null) {
            return gVar.contains(H12);
        }
        return false;
    }

    @NotNull
    public static final j n0(int i10, short s10) {
        return j.f26886e.a(i10, s10, -1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Integer n1(l lVar) {
        M.p(lVar, "<this>");
        return o1(lVar, Tf.f.f24956b);
    }

    @Lf.j(name = "byteRangeContains")
    public static final boolean o(@NotNull g<Byte> gVar, long j10) {
        M.p(gVar, "<this>");
        Byte I12 = I1(j10);
        if (I12 != null) {
            return gVar.contains(I12);
        }
        return false;
    }

    @NotNull
    public static final j o0(short s10, byte b10) {
        return j.f26886e.a(s10, b10, -1);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer o1(@NotNull l lVar, @NotNull Tf.f random) {
        M.p(lVar, "<this>");
        M.p(random, "random");
        if (lVar.isEmpty()) {
            return null;
        }
        return Integer.valueOf(Tf.g.h(random, lVar));
    }

    @Lf.j(name = "byteRangeContains")
    public static final boolean p(@NotNull g<Byte> gVar, short s10) {
        M.p(gVar, "<this>");
        Byte J12 = J1(s10);
        if (J12 != null) {
            return gVar.contains(J12);
        }
        return false;
    }

    @NotNull
    public static final j p0(short s10, int i10) {
        return j.f26886e.a(s10, i10, -1);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Long p1(o oVar) {
        M.p(oVar, "<this>");
        return q1(oVar, Tf.f.f24956b);
    }

    @Lf.j(name = "byteRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean q(@NotNull r<Byte> rVar, int i10) {
        M.p(rVar, "<this>");
        Byte H12 = H1(i10);
        if (H12 != null) {
            return rVar.contains(H12);
        }
        return false;
    }

    @NotNull
    public static final j q0(short s10, short s11) {
        return j.f26886e.a(s10, s11, -1);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long q1(@NotNull o oVar, @NotNull Tf.f random) {
        M.p(oVar, "<this>");
        M.p(random, "random");
        if (oVar.isEmpty()) {
            return null;
        }
        return Long.valueOf(Tf.g.i(random, oVar));
    }

    @Lf.j(name = "byteRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean r(@NotNull r<Byte> rVar, long j10) {
        M.p(rVar, "<this>");
        Byte I12 = I1(j10);
        if (I12 != null) {
            return rVar.contains(I12);
        }
        return false;
    }

    @NotNull
    public static final m r0(byte b10, long j10) {
        return m.f26896e.a(b10, j10, -1L);
    }

    @NotNull
    public static final C3155a r1(@NotNull C3155a c3155a) {
        M.p(c3155a, "<this>");
        return C3155a.f26868e.a(c3155a.d(), c3155a.c(), -c3155a.g());
    }

    @Lf.j(name = "byteRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean s(@NotNull r<Byte> rVar, short s10) {
        M.p(rVar, "<this>");
        Byte J12 = J1(s10);
        if (J12 != null) {
            return rVar.contains(J12);
        }
        return false;
    }

    @NotNull
    public static final m s0(int i10, long j10) {
        return m.f26896e.a(i10, j10, -1L);
    }

    @NotNull
    public static final j s1(@NotNull j jVar) {
        M.p(jVar, "<this>");
        return j.f26886e.a(jVar.d(), jVar.c(), -jVar.g());
    }

    public static final byte t(byte b10, byte b11) {
        return b10 < b11 ? b11 : b10;
    }

    @NotNull
    public static final m t0(long j10, byte b10) {
        return m.f26896e.a(j10, b10, -1L);
    }

    @NotNull
    public static final m t1(@NotNull m mVar) {
        M.p(mVar, "<this>");
        return m.f26896e.a(mVar.d(), mVar.c(), -mVar.g());
    }

    public static final double u(double d10, double d11) {
        return d10 < d11 ? d11 : d10;
    }

    @NotNull
    public static final m u0(long j10, int i10) {
        return m.f26896e.a(j10, i10, -1L);
    }

    @Lf.j(name = "shortRangeContains")
    public static final boolean u1(@NotNull g<Short> gVar, byte b10) {
        M.p(gVar, "<this>");
        return gVar.contains(Short.valueOf(b10));
    }

    public static final float v(float f10, float f11) {
        return f10 < f11 ? f11 : f10;
    }

    @NotNull
    public static final m v0(long j10, long j11) {
        return m.f26896e.a(j10, j11, -1L);
    }

    @Lf.j(name = "shortRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean v1(g gVar, double d10) {
        M.p(gVar, "<this>");
        Short P12 = P1(d10);
        if (P12 != null) {
            return gVar.contains(P12);
        }
        return false;
    }

    public static int w(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    @NotNull
    public static final m w0(long j10, short s10) {
        return m.f26896e.a(j10, s10, -1L);
    }

    @Lf.j(name = "shortRangeContains")
    @InterfaceC14427o(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @InterfaceC14429p(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final boolean w1(g gVar, float f10) {
        M.p(gVar, "<this>");
        Short Q12 = Q1(f10);
        if (Q12 != null) {
            return gVar.contains(Q12);
        }
        return false;
    }

    public static long x(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    @NotNull
    public static final m x0(short s10, long j10) {
        return m.f26896e.a(s10, j10, -1L);
    }

    @Lf.j(name = "shortRangeContains")
    public static final boolean x1(@NotNull g<Short> gVar, int i10) {
        M.p(gVar, "<this>");
        Short R12 = R1(i10);
        if (R12 != null) {
            return gVar.contains(R12);
        }
        return false;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T y(@NotNull T t10, @NotNull T minimumValue) {
        M.p(t10, "<this>");
        M.p(minimumValue, "minimumValue");
        return t10.compareTo(minimumValue) < 0 ? minimumValue : t10;
    }

    @InterfaceC14422l0(version = "1.7")
    public static final char y0(@NotNull C3155a c3155a) {
        M.p(c3155a, "<this>");
        if (!c3155a.isEmpty()) {
            return c3155a.c();
        }
        throw new NoSuchElementException("Progression " + ((Object) c3155a) + " is empty.");
    }

    @Lf.j(name = "shortRangeContains")
    public static final boolean y1(@NotNull g<Short> gVar, long j10) {
        M.p(gVar, "<this>");
        Short S12 = S1(j10);
        if (S12 != null) {
            return gVar.contains(S12);
        }
        return false;
    }

    public static final short z(short s10, short s11) {
        return s10 < s11 ? s11 : s10;
    }

    @InterfaceC14422l0(version = "1.7")
    public static final int z0(@NotNull j jVar) {
        M.p(jVar, "<this>");
        if (!jVar.isEmpty()) {
            return jVar.c();
        }
        throw new NoSuchElementException("Progression " + ((Object) jVar) + " is empty.");
    }

    @Lf.j(name = "shortRangeContains")
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    public static final boolean z1(@NotNull r<Short> rVar, byte b10) {
        M.p(rVar, "<this>");
        return rVar.contains(Short.valueOf(b10));
    }
}
