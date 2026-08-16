package kotlin.time;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.z;
import nf.InterfaceC14422l0;
import nf.T0;
import org.apache.commons.math3.distribution.PoissonDistribution;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,871:1\n1#2:872\n491#3,28:873\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n700#1:873,28\n*E\n"})
public final class y {

    public static final long f95895a = -3217862419201L;

    public static final long f95896b = 3093527980800L;

    public static final long f95897c = -31557014167219200L;

    public static final long f95898d = 31556889864403199L;

    public static final int f95899e = 146097;

    public static final int f95900f = 719528;

    public static final int f95901g = 3600;

    public static final int f95902h = 60;

    public static final int f95903i = 24;

    public static final int f95904j = 86400;

    public static final int f95905k = 1000000000;

    public static final int f95906l = 1000000;

    public static final int f95907m = 1000;

    @NotNull
    public static final int[] f95908n = {1, 10, 100, 1000, 10000, 100000, 1000000, PoissonDistribution.DEFAULT_MAX_ITERATIONS, 100000000, 1000000000};

    @NotNull
    public static final int[] f95909o = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};

    @NotNull
    public static final int[] f95910p = {3, 6};

    @NotNull
    public static final int[] f95911q = {1, 2, 4, 5, 7, 8};

    public static final int A(CharSequence charSequence, int i10) {
        return ((charSequence.charAt(i10) - '0') * 10) + (charSequence.charAt(i10 + 1) - '0');
    }

    public static final long B(long j10, long j11, Mf.a aVar) {
        long j12 = j10 + j11;
        if ((j10 ^ j12) >= 0 || (j10 ^ j11) < 0) {
            return j12;
        }
        aVar.invoke();
        throw new KotlinNothingValueException();
    }

    public static final long C(long j10, long j11, Mf.a aVar) {
        if (j11 == 1) {
            return j10;
        }
        if (j10 == 1) {
            return j11;
        }
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long j12 = j10 * j11;
        if (j12 / j11 == j10 && ((j10 != Long.MIN_VALUE || j11 != -1) && (j11 != Long.MIN_VALUE || j10 != -1))) {
            return j12;
        }
        aVar.invoke();
        throw new KotlinNothingValueException();
    }

    public static final String D(CharSequence charSequence, int i10) {
        if (charSequence.length() <= i10) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i10).toString() + "...";
    }

    public static final String j(q qVar) {
        int[] iArr;
        StringBuilder sb2 = new StringBuilder();
        K a10 = K.f95839h.a(qVar);
        int g10 = a10.g();
        int i10 = 0;
        if (Math.abs(g10) < 1000) {
            StringBuilder sb3 = new StringBuilder();
            if (g10 >= 0) {
                sb3.append(g10 + 10000);
                M.o(sb3.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb3.append(g10 - 10000);
                M.o(sb3.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb2.append((CharSequence) sb3);
        } else {
            if (g10 >= 10000) {
                sb2.append('+');
            }
            sb2.append(g10);
        }
        sb2.append('-');
        k(sb2, sb2, a10.d());
        sb2.append('-');
        k(sb2, sb2, a10.a());
        sb2.append('T');
        k(sb2, sb2, a10.b());
        sb2.append(':');
        k(sb2, sb2, a10.c());
        sb2.append(':');
        k(sb2, sb2, a10.f());
        if (a10.e() != 0) {
            sb2.append('.');
            while (true) {
                int e10 = a10.e();
                iArr = f95908n;
                int i11 = i10 + 1;
                if (e10 % iArr[i11] != 0) {
                    break;
                }
                i10 = i11;
            }
            int i12 = i10 - (i10 % 3);
            String valueOf = String.valueOf((a10.e() / iArr[i12]) + iArr[9 - i12]);
            M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
            String substring = valueOf.substring(1);
            M.o(substring, "substring(...)");
            sb2.append(substring);
        }
        sb2.append('Z');
        return sb2.toString();
    }

    public static final void k(Appendable appendable, StringBuilder sb2, int i10) {
        if (i10 < 10) {
            appendable.append('0');
        }
        sb2.append(i10);
    }

    public static final boolean l(q qVar) {
        M.p(qVar, "<this>");
        return qVar.compareTo(q.f95889d.e()) >= 0;
    }

    @Ef.f
    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "2.3")
    public static void m(q qVar) {
    }

    public static final boolean n(q qVar) {
        M.p(qVar, "<this>");
        return qVar.compareTo(q.f95889d.f()) <= 0;
    }

    @Ef.f
    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "2.3")
    public static void o(q qVar) {
    }

    public static final boolean p(int i10) {
        return (i10 & 3) == 0 && (i10 % 100 != 0 || i10 % 400 == 0);
    }

    public static final int q(int i10, boolean z10) {
        return i10 != 2 ? (i10 == 4 || i10 == 6 || i10 == 9 || i10 == 11) ? 30 : 31 : z10 ? 29 : 28;
    }

    public static final z r(CharSequence charSequence) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        char charAt;
        char charAt2;
        if (charSequence.length() == 0) {
            return new z.a("An empty string is not a valid Instant", charSequence);
        }
        char charAt3 = charSequence.charAt(0);
        if (charAt3 == '+' || charAt3 == '-') {
            i10 = 1;
        } else {
            i10 = 0;
            charAt3 = ' ';
        }
        int i15 = 0;
        int i16 = i10;
        while (i16 < charSequence.length() && '0' <= (charAt2 = charSequence.charAt(i16)) && charAt2 < ':') {
            i15 = (i15 * 10) + (charSequence.charAt(i16) - '0');
            i16++;
        }
        int i17 = i16 - i10;
        if (i17 > 10) {
            return z(charSequence, "Expected at most 10 digits for the year number, got " + i17 + " digits");
        }
        if (i17 == 10 && M.t(charSequence.charAt(i10), 50) >= 0) {
            return z(charSequence, "Expected at most 9 digits for the year number or year 1000000000, got " + i17 + " digits");
        }
        if (i17 < 4) {
            return z(charSequence, "The year number must be padded to 4 digits, got " + i17 + " digits");
        }
        if (charAt3 == '+' && i17 == 4) {
            return z(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
        }
        if (charAt3 == ' ' && i17 != 4) {
            return z(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
        }
        if (charAt3 == '-') {
            i15 = -i15;
        }
        int i18 = i16 + 16;
        if (charSequence.length() < i18) {
            return z(charSequence, "The input string is too short");
        }
        z.a s10 = s(charSequence, "'-'", i16, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean t10;
                t10 = y.t(((Character) obj).charValue());
                return Boolean.valueOf(t10);
            }
        });
        if (s10 != null) {
            return s10;
        }
        z.a s11 = s(charSequence, "'-'", i16 + 3, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean v10;
                v10 = y.v(((Character) obj).charValue());
                return Boolean.valueOf(v10);
            }
        });
        if (s11 != null) {
            return s11;
        }
        z.a s12 = s(charSequence, "'T' or 't'", i16 + 6, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean w10;
                w10 = y.w(((Character) obj).charValue());
                return Boolean.valueOf(w10);
            }
        });
        if (s12 != null) {
            return s12;
        }
        z.a s13 = s(charSequence, "':'", i16 + 9, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean x10;
                x10 = y.x(((Character) obj).charValue());
                return Boolean.valueOf(x10);
            }
        });
        if (s13 != null) {
            return s13;
        }
        z.a s14 = s(charSequence, "':'", i16 + 12, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean y10;
                y10 = y.y(((Character) obj).charValue());
                return Boolean.valueOf(y10);
            }
        });
        if (s14 != null) {
            return s14;
        }
        for (int i19 : f95909o) {
            z.a s15 = s(charSequence, "an ASCII digit", i16 + i19, new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    boolean u10;
                    u10 = y.u(((Character) obj).charValue());
                    return Boolean.valueOf(u10);
                }
            });
            if (s15 != null) {
                return s15;
            }
        }
        int A10 = A(charSequence, i16 + 1);
        int A11 = A(charSequence, i16 + 4);
        int A12 = A(charSequence, i16 + 7);
        int A13 = A(charSequence, i16 + 10);
        int A14 = A(charSequence, i16 + 13);
        int i20 = i16 + 15;
        if (charSequence.charAt(i20) == '.') {
            i20 = i18;
            int i21 = 0;
            while (i20 < charSequence.length() && '0' <= (charAt = charSequence.charAt(i20)) && charAt < ':') {
                i21 = (i21 * 10) + (charSequence.charAt(i20) - '0');
                i20++;
            }
            int i22 = i20 - i18;
            if (1 > i22 || i22 >= 10) {
                return z(charSequence, "1..9 digits are supported for the fraction of the second, got " + i22 + " digits");
            }
            i11 = i21 * f95908n[9 - i22];
        } else {
            i11 = 0;
        }
        if (i20 >= charSequence.length()) {
            return z(charSequence, "The UTC offset at the end of the string is missing");
        }
        char charAt4 = charSequence.charAt(i20);
        if (charAt4 == '+' || charAt4 == '-') {
            int length = charSequence.length() - i20;
            if (length > 9) {
                return z(charSequence, "The UTC offset string \"" + D(charSequence.subSequence(i20, charSequence.length()).toString(), 16) + "\" is too long");
            }
            if (length % 3 != 0) {
                return z(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i20, charSequence.length()).toString() + '\"');
            }
            int[] iArr = f95910p;
            int length2 = iArr.length;
            int i23 = 0;
            while (i23 < length2) {
                int i24 = i20 + iArr[i23];
                if (i24 >= charSequence.length()) {
                    break;
                }
                int i25 = length2;
                if (charSequence.charAt(i24) != ':') {
                    return z(charSequence, "Expected ':' at index " + i24 + ", got '" + charSequence.charAt(i24) + JavaElement.JEM_MODULAR_CLASSFILE);
                }
                i23++;
                length2 = i25;
            }
            int[] iArr2 = f95911q;
            int length3 = iArr2.length;
            int i26 = 0;
            while (i26 < length3) {
                int i27 = iArr2[i26] + i20;
                if (i27 >= charSequence.length()) {
                    break;
                }
                char charAt5 = charSequence.charAt(i27);
                int[] iArr3 = iArr2;
                if ('0' > charAt5 || charAt5 >= ':') {
                    return z(charSequence, "Expected an ASCII digit at index " + i27 + ", got '" + charSequence.charAt(i27) + JavaElement.JEM_MODULAR_CLASSFILE);
                }
                i26++;
                iArr2 = iArr3;
            }
            int A15 = A(charSequence, i20 + 1);
            i12 = 3;
            int A16 = length > 3 ? A(charSequence, i20 + 4) : 0;
            int A17 = length > 6 ? A(charSequence, i20 + 7) : 0;
            if (A16 > 59) {
                return z(charSequence, "Expected offset-minute-of-hour in 0..59, got " + A16);
            }
            if (A17 > 59) {
                return z(charSequence, "Expected offset-second-of-minute in 0..59, got " + A17);
            }
            if (A15 > 17 && (A15 != 18 || A16 != 0 || A17 != 0)) {
                return z(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i20, charSequence.length()).toString());
            }
            i13 = (charAt4 == '-' ? -1 : 1) * ((A15 * 3600) + (A16 * 60) + A17);
            i14 = 1;
        } else {
            if (charAt4 != 'Z' && charAt4 != 'z') {
                return z(charSequence, "Expected the UTC offset at position " + i20 + ", got '" + charAt4 + JavaElement.JEM_MODULAR_CLASSFILE);
            }
            int i28 = i20 + 1;
            if (charSequence.length() != i28) {
                return z(charSequence, "Extra text after the instant at position " + i28);
            }
            i14 = 1;
            i13 = 0;
            i12 = 3;
        }
        if (i14 > A10 || A10 >= 13) {
            return z(charSequence, "Expected a month number in 1..12, got " + A10);
        }
        if (i14 > A11 || A11 > q(A10, p(i15))) {
            return z(charSequence, "Expected a valid day-of-month for month " + A10 + " of year " + i15 + ", got " + A11);
        }
        if (A12 > 23) {
            return z(charSequence, "Expected hour in 0..23, got " + A12);
        }
        if (A13 > 59) {
            return z(charSequence, "Expected minute-of-hour in 0..59, got " + A13);
        }
        if (A14 > 59) {
            return z(charSequence, "Expected second-of-minute in 0..59, got " + A14);
        }
        int i29 = i12;
        K k10 = new K(i15, A10, A11, A12, A13, A14, i11);
        long g10 = k10.g();
        long j10 = 365 * g10;
        long d10 = (g10 >= 0 ? j10 + (((i29 + g10) / 4) - ((99 + g10) / 100)) + ((g10 + 399) / 400) : j10 - (((g10 / (-4)) - (g10 / (-100))) + (g10 / (-400)))) + (((k10.d() * 367) - 362) / 12) + (k10.a() - 1);
        if (k10.d() > 2) {
            d10 = !p(k10.g()) ? d10 - 2 : (-1) + d10;
        }
        return new z.b((((d10 - f95900f) * 86400) + (((k10.b() * 3600) + (k10.c() * 60)) + k10.f())) - i13, k10.e());
    }

    public static final z.a s(CharSequence charSequence, String str, int i10, Mf.l<? super Character, Boolean> lVar) {
        char charAt = charSequence.charAt(i10);
        if (lVar.invoke(Character.valueOf(charAt)).booleanValue()) {
            return null;
        }
        return z(charSequence, "Expected " + str + ", but got '" + charAt + "' at position " + i10);
    }

    public static final boolean t(char c10) {
        return c10 == '-';
    }

    public static final boolean u(char c10) {
        return '0' <= c10 && c10 < ':';
    }

    public static final boolean v(char c10) {
        return c10 == '-';
    }

    public static final boolean w(char c10) {
        return c10 == 'T' || c10 == 't';
    }

    public static final boolean x(char c10) {
        return c10 == ':';
    }

    public static final boolean y(char c10) {
        return c10 == ':';
    }

    public static final z.a z(CharSequence charSequence, String str) {
        return new z.a(str + " when parsing an Instant from \"" + D(charSequence, 64) + '\"', charSequence);
    }
}
