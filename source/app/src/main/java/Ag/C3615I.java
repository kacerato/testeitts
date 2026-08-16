package ag;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.jvm.internal.t0;
import kotlin.time.C14038j;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w2.C15883c;

@t0({"SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,569:1\n267#1,7:570\n267#1,7:577\n278#1,8:584\n278#1,8:592\n1#2:600\n1656#3,3:601\n1656#3,3:604\n1656#3,3:607\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:570,7\n173#1:577,7\n253#1:584,8\n264#1:592,8\n430#1:601,3\n439#1:604,3\n452#1:607,3\n*E\n"})
public class C3615I extends C3614H {
    @Ef.f
    public static final int E0(String str, int i10, int i11, boolean z10, Mf.l<? super Character, Boolean> lVar) {
        boolean z11;
        int i12 = i10;
        while (i12 <= i11 && lVar.invoke(Character.valueOf(str.charAt(i12))).booleanValue()) {
            i12++;
        }
        boolean z12 = i10 != i12;
        if (i12 > i11) {
            if (z10) {
                return -1;
            }
            return i12;
        }
        if (str.charAt(i12) == '.') {
            int i13 = i12 + 1;
            int i14 = i13;
            while (i14 <= i11 && lVar.invoke(Character.valueOf(str.charAt(i14))).booleanValue()) {
                i14++;
            }
            z11 = i13 != i14;
            i12 = i14;
        } else {
            z11 = false;
        }
        if (z12 || z11) {
            return i12;
        }
        if (z10) {
            return -1;
        }
        String str2 = i11 == i12 + 2 ? "NaN" : i11 == i12 + 7 ? C14038j.f95883k : null;
        if (str2 != null && P.H3(str, str2, i12, false) == i12) {
            return i11 + 1;
        }
        return -1;
    }

    @Ef.f
    public static final int F0(String str, int i10, int i11, Mf.l<? super Character, Boolean> lVar) {
        while (i10 <= i11 && lVar.invoke(Character.valueOf(str.charAt(i10))).booleanValue()) {
            i10++;
        }
        return i10;
    }

    @Ef.f
    public static final int G0(char c10) {
        return c10 | C15883c.f126249O;
    }

    @Ef.f
    public static final int H0(String str, int i10, int i11, Mf.l<? super Character, Boolean> lVar) {
        while (i11 > i10 && lVar.invoke(Character.valueOf(str.charAt(i11))).booleanValue()) {
            i11--;
        }
        return i11;
    }

    @Ef.f
    public static final String I0(int i10, int i11) {
        if (i11 == i10 + 2) {
            return "NaN";
        }
        if (i11 == i10 + 7) {
            return C14038j.f95883k;
        }
        return null;
    }

    @Ef.f
    public static final boolean J0(char c10) {
        return ((c10 + '\uffd0') & 65535) < 10;
    }

    @Ef.f
    public static final boolean K0(char c10) {
        return (((c10 | C15883c.f126249O) + (-97)) & 65535) < 6;
    }

    public static final boolean L0(String str) {
        int i10;
        if (str.length() == 0) {
            return false;
        }
        int i11 = (str.charAt(0) == '-' || str.charAt(0) == '+') ? 1 : 0;
        int i12 = i11;
        while (i12 < str.length() && Character.isDigit(str.charAt(i12))) {
            i12++;
        }
        if (i12 == str.length()) {
            return i12 - i11 > 0;
        }
        if (str.charAt(i12) == '.') {
            i12++;
            if (i12 == str.length()) {
                return i12 - i11 > 1;
            }
            while (i12 < str.length() && Character.isDigit(str.charAt(i12))) {
                i12++;
            }
        }
        if (i12 == str.length()) {
            return true;
        }
        if ((str.charAt(i12) != 'e' && str.charAt(i12) != 'E') || (i10 = i12 + 1) == str.length()) {
            return false;
        }
        if (str.charAt(i10) == '+' || str.charAt(i10) == '-') {
            i10 = i12 + 2;
        }
        if (i10 == str.length()) {
            return false;
        }
        while (i10 < str.length() && Character.isDigit(str.charAt(i10))) {
            i10++;
        }
        return i10 == str.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean M0(String str) {
        boolean z10;
        int charAt;
        int i10;
        boolean z11;
        int i11;
        boolean z12;
        int length = str.length() - 1;
        int i12 = 0;
        while (i12 <= length && str.charAt(i12) <= ' ') {
            i12++;
        }
        if (i12 > length) {
            return false;
        }
        while (length > i12 && str.charAt(length) <= ' ') {
            length--;
        }
        if (str.charAt(i12) == '+' || str.charAt(i12) == '-') {
            i12++;
        }
        if (i12 > length) {
            return false;
        }
        if (str.charAt(i12) == '0') {
            int i13 = i12 + 1;
            if (i13 > length) {
                return true;
            }
            if ((str.charAt(i13) | C15883c.f126249O) == 120) {
                int i14 = i12 + 2;
                int i15 = i14;
                while (i15 <= length) {
                    if (((str.charAt(i15) - '0') & 65535) >= 10 && (((r15 | C15883c.f126249O) - 97) & 65535) >= 6) {
                        break;
                    }
                    i15++;
                }
                boolean z13 = i14 != i15;
                if (i15 <= length) {
                    if (str.charAt(i15) == '.') {
                        int i16 = i15 + 1;
                        i11 = i16;
                        while (i11 <= length) {
                            if (((str.charAt(i11) - '0') & 65535) >= 10 && (((r15 | C15883c.f126249O) - 97) & 65535) >= 6) {
                                break;
                            }
                            i11++;
                        }
                        if (i16 != i11) {
                            z12 = true;
                            if (!z13 || z12) {
                                i12 = i11;
                                if (i12 != -1 || i12 > length) {
                                    return false;
                                }
                                z10 = true;
                                if (!z10) {
                                    int i17 = i12;
                                    while (i17 <= length && ((str.charAt(i17) - '0') & 65535) < 10) {
                                        i17++;
                                    }
                                    boolean z14 = i12 != i17;
                                    if (i17 > length) {
                                        i12 = i17;
                                    } else {
                                        if (str.charAt(i17) == '.') {
                                            int i18 = i17 + 1;
                                            i10 = i18;
                                            while (i10 <= length && ((str.charAt(i10) - '0') & 65535) < 10) {
                                                i10++;
                                            }
                                            if (i18 != i10) {
                                                z11 = true;
                                                if (!z14 || z11) {
                                                    i12 = i10;
                                                } else {
                                                    String str2 = length == i10 + 2 ? "NaN" : length == i10 + 7 ? C14038j.f95883k : null;
                                                    i12 = (str2 != null && P.H3(str, str2, i10, false) == i10) ? length + 1 : -1;
                                                }
                                            }
                                        } else {
                                            i10 = i17;
                                        }
                                        z11 = false;
                                        if (z14) {
                                        }
                                        i12 = i10;
                                    }
                                    if (i12 == -1) {
                                        return false;
                                    }
                                    if (i12 > length) {
                                        return true;
                                    }
                                }
                                int i19 = i12 + 1;
                                charAt = str.charAt(i12) | C15883c.f126249O;
                                if (charAt == (!z10 ? 112 : 101)) {
                                    return !z10 && (charAt == 102 || charAt == 100) && i19 > length;
                                }
                                if (i19 > length) {
                                    return false;
                                }
                                if ((str.charAt(i19) == '+' || str.charAt(i19) == '-') && (i19 = i12 + 2) > length) {
                                    return false;
                                }
                                while (i19 <= length && ((str.charAt(i19) - '0') & 65535) < 10) {
                                    i19++;
                                }
                                if (i19 > length) {
                                    return true;
                                }
                                if (i19 != length) {
                                    return false;
                                }
                                int charAt2 = str.charAt(i19) | C15883c.f126249O;
                                return charAt2 == 102 || charAt2 == 100;
                            }
                        }
                    } else {
                        i11 = i15;
                    }
                    z12 = false;
                    if (!z13) {
                    }
                    i12 = i11;
                    if (i12 != -1) {
                    }
                    return false;
                }
                i12 = -1;
                if (i12 != -1) {
                }
                return false;
            }
        }
        z10 = false;
        if (!z10) {
        }
        int i192 = i12 + 1;
        charAt = str.charAt(i12) | C15883c.f126249O;
        if (charAt == (!z10 ? 112 : 101)) {
        }
    }

    public static final <T> T N0(String str, Mf.l<? super String, ? extends T> lVar) {
        try {
            if (L0(str)) {
                return lVar.invoke(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final <T> T O0(String str, Mf.l<? super String, ? extends T> lVar) {
        try {
            if (M0(str)) {
                return lVar.invoke(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal P0(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return new BigDecimal(str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigDecimal Q0(String str, MathContext mathContext) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        return new BigDecimal(str, mathContext);
    }

    @InterfaceC14422l0(version = "1.2")
    @Nullable
    public static final BigDecimal R0(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        try {
            if (L0(str)) {
                return new BigDecimal(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @InterfaceC14422l0(version = "1.2")
    @Nullable
    public static final BigDecimal S0(@NotNull String str, @NotNull MathContext mathContext) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(mathContext, "mathContext");
        try {
            if (L0(str)) {
                return new BigDecimal(str, mathContext);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger T0(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return new BigInteger(str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final BigInteger U0(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return new BigInteger(str, C3623e.a(i10));
    }

    @InterfaceC14422l0(version = "1.2")
    @Nullable
    public static final BigInteger V0(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return W0(str, 10);
    }

    @InterfaceC14422l0(version = "1.2")
    @Nullable
    public static final BigInteger W0(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        C3623e.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        if (length != 1) {
            for (int i11 = str.charAt(0) == '-' ? 1 : 0; i11 < length; i11++) {
                if (C3623e.b(str.charAt(i11), i10) < 0) {
                    return null;
                }
            }
        } else if (C3623e.b(str.charAt(0), i10) < 0) {
            return null;
        }
        return new BigInteger(str, C3623e.a(i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean X0(String str) {
        return Boolean.parseBoolean(str);
    }

    @Ef.f
    public static final byte Y0(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Byte.parseByte(str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final byte Z0(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Byte.parseByte(str, C3623e.a(i10));
    }

    @Ef.f
    public static final double a1(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Double.parseDouble(str);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Double b1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        try {
            if (M0(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Ef.f
    public static final float c1(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Float.parseFloat(str);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Float d1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        try {
            if (M0(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Ef.f
    public static final int e1(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Integer.parseInt(str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final int f1(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Integer.parseInt(str, C3623e.a(i10));
    }

    @Ef.f
    public static final long g1(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Long.parseLong(str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final long h1(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Long.parseLong(str, C3623e.a(i10));
    }

    @Ef.f
    public static final short i1(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Short.parseShort(str);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final short j1(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return Short.parseShort(str, C3623e.a(i10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final String k1(byte b10, int i10) {
        String num = Integer.toString(b10, C3623e.a(i10));
        kotlin.jvm.internal.M.o(num, "toString(...)");
        return num;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final String l1(int i10, int i11) {
        String num = Integer.toString(i10, C3623e.a(i11));
        kotlin.jvm.internal.M.o(num, "toString(...)");
        return num;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final String m1(long j10, int i10) {
        String l10 = Long.toString(j10, C3623e.a(i10));
        kotlin.jvm.internal.M.o(l10, "toString(...)");
        return l10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final String n1(short s10, int i10) {
        String num = Integer.toString(s10, C3623e.a(i10));
        kotlin.jvm.internal.M.o(num, "toString(...)");
        return num;
    }
}
