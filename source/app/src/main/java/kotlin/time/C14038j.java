package kotlin.time;

import ag.C3617K;
import ag.P;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/LongParser\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 Duration.kt\nkotlin/time/FractionalParser\n*L\n1#1,1613:1\n1#2:1614\n1284#3,12:1615\n1296#3,15:1630\n1284#3,12:1674\n1296#3,15:1689\n1656#4,3:1627\n1656#4,3:1668\n1656#4,3:1671\n1656#4,3:1686\n1656#4,3:1727\n1342#5,23:1645\n1342#5,23:1704\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1100#1:1615,12\n1100#1:1630,15\n1179#1:1674,12\n1179#1:1689,15\n1100#1:1627,3\n1109#1:1668,3\n1174#1:1671,3\n1179#1:1686,3\n1191#1:1727,3\n1109#1:1645,23\n1191#1:1704,23\n*E\n"})
public final class C14038j {

    public static final int f95873a = 1000000;

    public static final long f95874b = 1000;

    public static final long f95875c = 1000;

    public static final long f95876d = 4611686018426999999L;

    public static final long f95877e = 4611686018427387903L;

    public static final long f95878f = 4611686018426L;

    public static final long f95879g = 1000;

    public static final long f95880h = 60000;

    public static final long f95881i = 3600000;

    public static final long f95882j = 86400000;

    @NotNull
    public static final String f95883k = "Infinity";

    public static final int f95884l = 15;

    public static final class a {

        public static final int[] f95885a;

        static {
            int[] iArr = new int[EnumC14039k.values().length];
            try {
                iArr[EnumC14039k.MICROSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC14039k.NANOSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC14039k.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnumC14039k.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EnumC14039k.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EnumC14039k.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EnumC14039k.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f95885a = iArr;
        }
    }

    public static final long A(long j10) {
        return j10 * 1000000;
    }

    @Ef.f
    public static final int B(int i10) {
        return (i10 << 3) + (i10 << 1);
    }

    @Ef.f
    public static final long C(long j10) {
        return (j10 << 3) + (j10 << 1);
    }

    public static final long D(long j10) {
        return j10 / 1000000;
    }

    public static final C14036h E(long j10, Mf.a<C14036h> aVar) {
        return C14036h.u(j10, C14036h.f95864c.p()) ? aVar.invoke() : C14036h.j(j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0194, code lost:
    
        if (r12 != r1) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0197, code lost:
    
        r2 = (r14 * 1000000000) + r11;
        r13 = r12;
        r4 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ce, code lost:
    
        if (r13 >= r25.length()) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d0, code lost:
    
        r1 = r25.charAt(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d6, code lost:
    
        if ('0' > r1) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d8, code lost:
    
        if (r1 >= ':') goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00da, code lost:
    
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00dd, code lost:
    
        if (r28 != false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e5, code lost:
    
        return kotlin.time.C14036h.f95864c.p();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00eb, code lost:
    
        throw new java.lang.IllegalArgumentException("");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long F(String str, int i10, boolean z10, boolean z11) {
        boolean z12;
        int i11;
        boolean z13;
        int i12;
        long j10;
        long j11;
        int i13;
        char charAt;
        char charAt2;
        int length = str.length();
        boolean z14 = !z10;
        if (z10 && str.charAt(i10) == '(' && str.charAt(length - 1) == ')') {
            i11 = i10 + 1;
            length--;
            if (i11 == length) {
                if (z11) {
                    throw new IllegalArgumentException("No components");
                }
                return C14036h.f95864c.p();
            }
            z12 = true;
        } else {
            z12 = z14;
            i11 = i10;
        }
        EnumC14039k enumC14039k = null;
        long j12 = 0;
        long j13 = 0;
        boolean z15 = true;
        loop0: while (i11 < length) {
            if (!z15 && z12) {
                while (i11 < str.length() && str.charAt(i11) == ' ') {
                    i11++;
                }
            }
            B a10 = B.f95823e.a();
            int i14 = (a10.f95827b && ((charAt2 = str.charAt(i11)) == '+' || charAt2 == '-')) ? i11 + 1 : i11;
            while (i14 < str.length() && str.charAt(i14) == '0') {
                i14++;
            }
            long j14 = 0;
            while (true) {
                if (i14 >= str.length()) {
                    z13 = z12;
                    break;
                }
                char charAt3 = str.charAt(i14);
                z13 = z12;
                if ('0' > charAt3 || charAt3 >= ':') {
                    break;
                }
                int i15 = charAt3 - '0';
                if (j14 > a10.f95828c) {
                    break loop0;
                }
                long j15 = j13;
                if (j14 == a10.f95828c && i15 > a10.f95829d) {
                    break loop0;
                }
                j14 = i15 + (j14 << 3) + (j14 << 1);
                i14++;
                z12 = z13;
                j13 = j15;
            }
            long j16 = j13;
            if (i14 == i11 || i14 == length) {
                if (z11) {
                    throw new IllegalArgumentException("");
                }
                return C14036h.f95864c.p();
            }
            boolean z16 = str.charAt(i14) == '.';
            if (z16) {
                int i16 = i14 + 1;
                p pVar = p.f95888a;
                int min = Math.min(i14 + 7, str.length());
                int i17 = i16;
                int i18 = 0;
                while (i17 < min) {
                    char charAt4 = str.charAt(i17);
                    int i19 = min;
                    if ('0' > charAt4 || charAt4 >= ':') {
                        break;
                    }
                    i18 = (i18 << 3) + (i18 << 1) + (charAt4 - '0');
                    i17++;
                    min = i19;
                }
                for (int i20 = 0; i20 < 6 - (i17 - i16); i20++) {
                    i18 = (i18 << 3) + (i18 << 1);
                }
                int min2 = Math.min(i17 + 9, str.length());
                int i21 = i17;
                int i22 = 0;
                while (true) {
                    if (i21 >= min2) {
                        i13 = i14;
                        break;
                    }
                    int i23 = min2;
                    char charAt5 = str.charAt(i21);
                    i13 = i14;
                    if ('0' > charAt5 || charAt5 >= ':') {
                        break;
                    }
                    i22 = (i22 << 3) + (i22 << 1) + (charAt5 - '0');
                    i21++;
                    min2 = i23;
                    i14 = i13;
                }
                int i24 = 9 - (i21 - i17);
                int i25 = i22;
                for (int i26 = 0; i26 < i24; i26++) {
                    i25 = (i25 << 3) + (i25 << 1);
                }
                while (i21 < str.length() && '0' <= (charAt = str.charAt(i21)) && charAt < ':') {
                    i21++;
                }
                if (z11) {
                    throw new IllegalArgumentException("");
                }
                return C14036h.f95864c.p();
            }
            i12 = -1;
            j10 = 0;
            EnumC14039k k10 = k(str, i14);
            if (k10 == null) {
                String str2 = "Unknown duration unit short name: " + str.charAt(i14);
                if (z11) {
                    throw new IllegalArgumentException(str2);
                }
                return C14036h.f95864c.p();
            }
            if (enumC14039k != null && enumC14039k.compareTo(k10) <= 0) {
                if (z11) {
                    throw new IllegalArgumentException("Unexpected order of duration components");
                }
                return C14036h.f95864c.p();
            }
            int i27 = a.f95885a[k10.ordinal()];
            if (i27 == 1) {
                j12 += j14 / 1000;
                if (j12 <= f95878f) {
                    j11 = (j14 % 1000) * 1000;
                    j16 = j11;
                }
            } else if (i27 != 2) {
                j12 = j(j12, n.f(j14, k10));
            } else {
                long j17 = 1000000;
                j12 += j14 / j17;
                j11 = j16 + (j14 % j17);
                j16 = j11;
            }
            int u10 = u(k10) + i14;
            if (!z16) {
                i11 = u10;
                enumC14039k = k10;
                z12 = z13;
                j13 = j16;
                z15 = false;
            } else {
                if (u10 < length) {
                    if (z11) {
                        throw new IllegalArgumentException("Fractional component must be last");
                    }
                    return C14036h.f95864c.p();
                }
                long q10 = (k10.compareTo(EnumC14039k.MINUTES) < 0 || u10 - i12 <= 15) ? q(j10, k10) : I(str, i12, u10 - u(k10), k10);
                enumC14039k = k10;
                z12 = z13;
                z15 = false;
                j13 = j16 + q10;
                i11 = u10;
            }
        }
        return C14036h.W(P(j12, EnumC14039k.MILLISECONDS), P(j13, EnumC14039k.NANOSECONDS));
    }

    public static final long G(String str, boolean z10, boolean z11) {
        int i10;
        int i11;
        long o10;
        if (str.length() == 0) {
            if (z11) {
                throw new IllegalArgumentException("The string is empty");
            }
            return C14036h.f95864c.p();
        }
        char charAt = str.charAt(0);
        if (charAt != '+') {
            i11 = charAt != '-' ? 0 : 1;
            i10 = i11;
        } else {
            i10 = 0;
            i11 = 1;
        }
        boolean z12 = i11 > 0;
        if (str.length() <= i11) {
            if (z11) {
                throw new IllegalArgumentException("No components");
            }
            return C14036h.f95864c.p();
        }
        if (str.charAt(i11) == 'P') {
            o10 = J(str, i11 + 1, z11);
        } else {
            if (z10) {
                if (z11) {
                    throw new IllegalArgumentException("");
                }
                return C14036h.f95864c.p();
            }
            o10 = C3617K.u2(str, i11, f95883k, 0, Math.max(str.length() - i11, 8), true) ? C14036h.f95864c.o() : F(str, i11, z12, z11);
        }
        return (i10 == 0 || C14036h.u(o10, C14036h.f95864c.p())) ? o10 : C14036h.l0(o10);
    }

    public static long H(String str, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z11 = true;
        }
        return G(str, z10, z11);
    }

    public static final long I(String str, int i10, int i11, EnumC14039k enumC14039k) {
        M.n(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, i11);
        M.o(substring, "substring(...)");
        return Rf.d.M0(Double.parseDouble(substring) * r(enumC14039k));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01c5, code lost:
    
        if (r5 == r23.length()) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01cd, code lost:
    
        if (r23.charAt(r5) == 'S') goto L356;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01d0, code lost:
    
        r14 = r19;
        r9 = r14 * q((r10 * 1000000000) + r13, kotlin.time.EnumC14039k.SECONDS);
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x028e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0081 A[ADDED_TO_REGION, EDGE_INSN: B:202:0x0081->B:28:0x0081 BREAK  A[LOOP:1: B:22:0x006e->B:26:0x007c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long J(String str, int i10, boolean z10) {
        int i11;
        int i12;
        char c10;
        long j10;
        int i13;
        int i14;
        int i15;
        EnumC14039k z11;
        char charAt;
        char charAt2;
        int i16;
        char charAt3;
        int i17 = i10;
        if (i17 == str.length()) {
            if (z10) {
                throw new IllegalArgumentException("");
            }
            return C14036h.f95864c.p();
        }
        EnumC14039k enumC14039k = null;
        long j11 = 0;
        long j12 = 0;
        boolean z12 = false;
        while (i17 < str.length()) {
            char charAt4 = str.charAt(i17);
            if (charAt4 != 'T') {
                B b10 = B.f95823e.b();
                if (b10.f95827b) {
                    char charAt5 = str.charAt(i17);
                    if (charAt5 == '+') {
                        i11 = i17 + 1;
                        i12 = 1;
                        while (true) {
                            if (i11 < str.length()) {
                                break;
                            }
                            break;
                            i11++;
                        }
                        j10 = 0;
                        while (i11 < str.length()) {
                            int i18 = charAt2 - '0';
                            if (j10 > b10.f95828c) {
                            }
                            i14 = i16;
                            while (i14 < str.length()) {
                                i14++;
                            }
                            if (i14 != str.length()) {
                            }
                            if (z10) {
                            }
                        }
                        i13 = i12;
                        i14 = i11;
                        if (i14 != str.length()) {
                        }
                        if (z10) {
                        }
                    } else if (charAt5 == '-') {
                        i11 = i17 + 1;
                        i12 = -1;
                        while (true) {
                            if (i11 < str.length() || str.charAt(i11) != '0') {
                                break;
                            }
                            i11++;
                        }
                        j10 = 0;
                        for (c10 = '0'; i11 < str.length() && c10 <= (charAt2 = str.charAt(i11)) && charAt2 < ':'; c10 = '0') {
                            int i182 = charAt2 - '0';
                            if (j10 > b10.f95828c) {
                                if (j10 == b10.f95828c) {
                                    i13 = i12;
                                    if (i182 > b10.f95829d) {
                                        i16 = i11;
                                    }
                                } else {
                                    i13 = i12;
                                }
                                j10 = (j10 << 3) + (j10 << 1) + i182;
                                i11++;
                                i12 = i13;
                            } else {
                                i16 = i11;
                                i13 = i12;
                            }
                            i14 = i16;
                            while (i14 < str.length() && '0' <= (charAt3 = str.charAt(i14)) && charAt3 < ':') {
                                i14++;
                            }
                            if (i14 != str.length()) {
                                if (i14 != i17 + ((charAt4 == '+' || charAt4 == '-') ? 1 : 0)) {
                                    j10 = b10.f95826a;
                                    long j13 = j10;
                                    if (str.charAt(i14) != '.') {
                                        int i19 = i14 + 1;
                                        p pVar = p.f95888a;
                                        int min = Math.min(i14 + 7, str.length());
                                        int i20 = i19;
                                        int i21 = 0;
                                        while (i20 < min) {
                                            char charAt6 = str.charAt(i20);
                                            if ('0' > charAt6 || charAt6 >= ':') {
                                                break;
                                            }
                                            i21 = (i21 << 3) + (i21 << 1) + (charAt6 - '0');
                                            i20++;
                                        }
                                        for (int i22 = 0; i22 < 6 - (i20 - i19); i22++) {
                                            i21 = (i21 << 1) + (i21 << 3);
                                        }
                                        int min2 = Math.min(i20 + 9, str.length());
                                        int i23 = i20;
                                        int i24 = 0;
                                        while (i23 < min2) {
                                            char charAt7 = str.charAt(i23);
                                            if ('0' > charAt7 || charAt7 >= ':') {
                                                break;
                                            }
                                            i24 = (i24 << 3) + (i24 << 1) + (charAt7 - '0');
                                            i23++;
                                        }
                                        int i25 = 9 - (i23 - i20);
                                        for (int i26 = 0; i26 < i25; i26++) {
                                            i24 = (i24 << 1) + (i24 << 3);
                                        }
                                        i14 = i23;
                                        while (i14 < str.length() && '0' <= (charAt = str.charAt(i14)) && charAt < ':') {
                                            i14++;
                                        }
                                        if (z10) {
                                            throw new IllegalArgumentException("");
                                        }
                                        return C14036h.f95864c.p();
                                    }
                                    i15 = i13;
                                    z11 = z(str, i14);
                                    if (z11 != null) {
                                        String str2 = "Unknown duration unit short name: " + str.charAt(i14);
                                        if (z10) {
                                            throw new IllegalArgumentException(str2);
                                        }
                                        return C14036h.f95864c.p();
                                    }
                                    if (enumC14039k != null && enumC14039k.compareTo(z11) <= 0) {
                                        if (z10) {
                                            throw new IllegalArgumentException("Unexpected order of duration components");
                                        }
                                        return C14036h.f95864c.p();
                                    }
                                    if (z11 == EnumC14039k.DAYS) {
                                        if (z12) {
                                            if (z10) {
                                                throw new IllegalArgumentException("");
                                            }
                                            return C14036h.f95864c.p();
                                        }
                                        j11 = i15 * n.f(j13, z11);
                                    } else {
                                        if (!z12) {
                                            if (z10) {
                                                throw new IllegalArgumentException("");
                                            }
                                            return C14036h.f95864c.p();
                                        }
                                        long j14 = j(j11, i15 * n.f(j13, z11));
                                        if (j14 == C14036h.f95868g) {
                                            if (z10) {
                                                throw new IllegalArgumentException("");
                                            }
                                            return C14036h.f95864c.p();
                                        }
                                        j11 = j14;
                                    }
                                    i17 = i14 + 1;
                                    enumC14039k = z11;
                                }
                            }
                            if (z10) {
                                return C14036h.f95864c.p();
                            }
                            throw new IllegalArgumentException("");
                        }
                        i13 = i12;
                        i14 = i11;
                        if (i14 != str.length()) {
                            if (i14 == i17 + ((charAt4 == '+' || charAt4 == '-') ? 1 : 0)) {
                            }
                            long j132 = j10;
                            if (str.charAt(i14) != '.') {
                            }
                            z11 = z(str, i14);
                            if (z11 != null) {
                            }
                        }
                        if (z10) {
                            throw new IllegalArgumentException("");
                        }
                        return C14036h.f95864c.p();
                    }
                }
                i11 = i17;
                i12 = 1;
                while (true) {
                    if (i11 < str.length()) {
                    }
                    i11++;
                }
                j10 = 0;
                while (i11 < str.length()) {
                }
                i13 = i12;
                i14 = i11;
                if (i14 != str.length()) {
                }
                if (z10) {
                }
            } else {
                if (z12 || (i17 = i17 + 1) == str.length()) {
                    if (z10) {
                        throw new IllegalArgumentException("");
                    }
                    return C14036h.f95864c.p();
                }
                z12 = true;
            }
        }
        return C14036h.W(P(j11, EnumC14039k.MILLISECONDS), P(j12, EnumC14039k.NANOSECONDS));
    }

    @Ef.f
    public static final boolean K(long j10, long j11) {
        return (j10 ^ j11) >= 0;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final long L(double d10, long j10) {
        return C14036h.X(j10, d10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final long M(int i10, long j10) {
        return C14036h.Y(j10, i10);
    }

    @InterfaceC14422l0(version = "1.6")
    public static final long N(double d10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        double a10 = m.a(d10, unit, EnumC14039k.NANOSECONDS);
        if (Double.isNaN(a10)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long M02 = Rf.d.M0(a10);
        return (-4611686018426999999L > M02 || M02 >= 4611686018427000000L) ? n(Rf.d.M0(m.a(d10, unit, EnumC14039k.MILLISECONDS))) : o(M02);
    }

    @InterfaceC14422l0(version = "1.6")
    public static final long O(int i10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        return unit.compareTo(EnumC14039k.SECONDS) <= 0 ? o(m.c(i10, unit, EnumC14039k.NANOSECONDS)) : P(i10, unit);
    }

    @InterfaceC14422l0(version = "1.6")
    public static final long P(long j10, @NotNull EnumC14039k unit) {
        M.p(unit, "unit");
        EnumC14039k enumC14039k = EnumC14039k.NANOSECONDS;
        long c10 = m.c(f95876d, enumC14039k, unit);
        if ((-c10) <= j10 && j10 <= c10) {
            return o(m.c(j10, unit, enumC14039k));
        }
        EnumC14039k enumC14039k2 = EnumC14039k.MILLISECONDS;
        return unit.compareTo(enumC14039k2) >= 0 ? m(Rf.d.V(j10) * n.f(Math.abs(Vf.u.x(j10, -9223372036854775807L)), unit)) : m(Vf.u.M(m.b(j10, unit, enumC14039k2), -4611686018427387903L, 4611686018427387903L));
    }

    public static final long j(long j10, long j11) {
        return (j10 == 4611686018427387903L || j10 == -4611686018427387903L) ? ((-4611686018427387903L >= j11 || j11 >= 4611686018427387903L) && (j11 ^ j10) < 0) ? C14036h.f95868g : j10 : (j11 == 4611686018427387903L || j11 == -4611686018427387903L) ? j11 : Vf.u.M(j10 + j11, -4611686018427387903L, 4611686018427387903L);
    }

    public static final EnumC14039k k(String str, int i10) {
        char charAt = str.charAt(i10);
        char charAt2 = i10 < P.C3(str) ? str.charAt(i10 + 1) : (char) 0;
        if (charAt == 'd') {
            return EnumC14039k.DAYS;
        }
        if (charAt == 'h') {
            return EnumC14039k.HOURS;
        }
        if (charAt == 's') {
            return EnumC14039k.SECONDS;
        }
        if (charAt == 'u') {
            if (charAt2 == 's') {
                return EnumC14039k.MICROSECONDS;
            }
            return null;
        }
        if (charAt == 'm') {
            return charAt2 == 's' ? EnumC14039k.MILLISECONDS : EnumC14039k.MINUTES;
        }
        if (charAt == 'n' && charAt2 == 's') {
            return EnumC14039k.NANOSECONDS;
        }
        return null;
    }

    public static final long l(long j10, int i10) {
        return C14036h.f95864c.b((j10 << 1) + i10);
    }

    public static final long m(long j10) {
        return C14036h.f95864c.b((j10 << 1) + 1);
    }

    public static final long n(long j10) {
        return (-4611686018426L > j10 || j10 >= 4611686018427L) ? m(Vf.u.M(j10, -4611686018427387903L, 4611686018427387903L)) : o(A(j10));
    }

    public static final long o(long j10) {
        return C14036h.f95864c.b(j10 << 1);
    }

    public static final long p(long j10) {
        return (-4611686018426999999L > j10 || j10 >= 4611686018427000000L) ? m(D(j10)) : o(j10);
    }

    public static final long q(long j10, EnumC14039k enumC14039k) {
        return Rf.d.M0(j10 * s(enumC14039k));
    }

    public static final long r(EnumC14039k enumC14039k) {
        int i10 = a.f95885a[enumC14039k.ordinal()];
        if (i10 == 5) {
            return 60000000000L;
        }
        if (i10 == 6) {
            return 3600000000000L;
        }
        if (i10 == 7) {
            return 86400000000000L;
        }
        throw new IllegalStateException(("Invalid unit: " + ((Object) enumC14039k) + " for fallback fraction multiplier").toString());
    }

    public static final double s(EnumC14039k enumC14039k) {
        switch (a.f95885a[enumC14039k.ordinal()]) {
            case 1:
                return 1.0E-12d;
            case 2:
                return 1.0E-15d;
            case 3:
                return 1.0E-9d;
            case 4:
                return 1.0E-6d;
            case 5:
                return 6.0E-5d;
            case 6:
                return 0.0036d;
            case 7:
                return 0.0864d;
            default:
                throw new IllegalStateException(("Unknown unit: " + ((Object) enumC14039k)).toString());
        }
    }

    public static void t(EnumC14039k enumC14039k) {
    }

    public static final int u(EnumC14039k enumC14039k) {
        int i10 = a.f95885a[enumC14039k.ordinal()];
        return (i10 == 1 || i10 == 2 || i10 == 3) ? 2 : 1;
    }

    @Ef.f
    public static final long v(boolean z10, String str) {
        if (z10) {
            throw new IllegalArgumentException(str);
        }
        return C14036h.f95864c.p();
    }

    public static long w(boolean z10, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "";
        }
        if (z10) {
            throw new IllegalArgumentException(str);
        }
        return C14036h.f95864c.p();
    }

    @Ef.f
    public static final boolean x(long j10) {
        return -4611686018427387903L < j10 && j10 < 4611686018427387903L;
    }

    @Ef.f
    public static final boolean y(long j10) {
        return j10 == 4611686018427387903L || j10 == -4611686018427387903L;
    }

    public static final EnumC14039k z(String str, int i10) {
        char charAt = str.charAt(i10);
        if (charAt == 'D') {
            return EnumC14039k.DAYS;
        }
        if (charAt == 'H') {
            return EnumC14039k.HOURS;
        }
        if (charAt == 'M') {
            return EnumC14039k.MINUTES;
        }
        if (charAt != 'S') {
            return null;
        }
        return EnumC14039k.SECONDS;
    }
}
