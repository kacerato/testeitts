package ag;

import ag.C3630l;
import java.util.Arrays;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.t0;
import nf.F0;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14967d;
import pf.C14985q;
import w2.C15883c;

@t0({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1260:1\n1211#1,7:1262\n1211#1,7:1269\n1211#1,7:1276\n1211#1,7:1283\n1211#1,7:1290\n1211#1,7:1297\n1211#1,7:1304\n1211#1,7:1311\n1221#1,5:1318\n1221#1,5:1323\n1211#1,7:1328\n1211#1,7:1335\n1181#1,3:1342\n1221#1,5:1345\n1185#1:1350\n1221#1,5:1351\n1201#1,3:1356\n1229#1,5:1359\n1205#1:1364\n1229#1,5:1365\n1#2:1261\n1207#3,3:1370\n1207#3,3:1373\n1207#3,3:1376\n1207#3,3:1379\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n450#1:1262,7\n482#1:1269,7\n486#1:1276,7\n489#1:1283,7\n529#1:1290,7\n532#1:1297,7\n537#1:1304,7\n542#1:1311,7\n549#1:1318,5\n550#1:1323,5\n1141#1:1328,7\n1143#1:1335,7\n1169#1:1342,3\n1169#1:1345,5\n1169#1:1350\n1183#1:1351,5\n1189#1:1356,3\n1189#1:1359,5\n1189#1:1364\n1203#1:1365,5\n42#1:1370,3\n43#1:1373,3\n54#1:1376,3\n55#1:1379,3\n*E\n"})
public final class C3629k {

    @NotNull
    public static final String f32105a = "0123456789abcdef";

    @NotNull
    public static final String f32106b = "0123456789ABCDEF";

    @NotNull
    public static final int[] f32107c;

    @NotNull
    public static final int[] f32108d;

    @NotNull
    public static final int[] f32109e;

    @NotNull
    public static final long[] f32110f;

    static {
        int[] iArr = new int[256];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            iArr[i11] = f32105a.charAt(i11 & 15) | (f32105a.charAt(i11 >> 4) << '\b');
        }
        f32107c = iArr;
        int[] iArr2 = new int[256];
        for (int i12 = 0; i12 < 256; i12++) {
            iArr2[i12] = "0123456789ABCDEF".charAt(i12 & 15) | ("0123456789ABCDEF".charAt(i12 >> 4) << '\b');
        }
        f32108d = iArr2;
        int[] iArr3 = new int[256];
        for (int i13 = 0; i13 < 256; i13++) {
            iArr3[i13] = -1;
        }
        int i14 = 0;
        int i15 = 0;
        while (i14 < f32105a.length()) {
            iArr3[f32105a.charAt(i14)] = i15;
            i14++;
            i15++;
        }
        int i16 = 0;
        int i17 = 0;
        while (i16 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i16)] = i17;
            i16++;
            i17++;
        }
        f32109e = iArr3;
        long[] jArr = new long[256];
        for (int i18 = 0; i18 < 256; i18++) {
            jArr[i18] = -1;
        }
        int i19 = 0;
        int i20 = 0;
        while (i19 < f32105a.length()) {
            jArr[f32105a.charAt(i19)] = i20;
            i19++;
            i20++;
        }
        int i21 = 0;
        while (i10 < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i10)] = i21;
            i10++;
            i21++;
        }
        f32110f = jArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final byte[] A(String str, int i10, int i11, C3630l.b bVar) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int g10 = bVar.g();
        int f10 = bVar.f();
        String c10 = bVar.c();
        String e10 = bVar.e();
        String d10 = bVar.d();
        String h10 = bVar.h();
        boolean i18 = bVar.i();
        int V10 = V(i11 - i10, g10, f10, h10.length(), d10.length(), c10.length(), e10.length());
        byte[] bArr = new byte[V10];
        int i19 = i10;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i19 < i11) {
            if (i21 == g10) {
                i19 = f(str, i19, i11);
                i12 = 0;
            } else if (i22 == f10) {
                if (h10.length() == 0) {
                    i14 = i21;
                } else {
                    int length = h10.length();
                    int i23 = 0;
                    while (i23 < length) {
                        int i24 = i21;
                        int i25 = length;
                        if (!C3624f.J(h10.charAt(i23), str.charAt(i19 + i23), i18)) {
                            Z(str, i19, i11, h10, "group separator");
                        }
                        i23++;
                        i21 = i24;
                        length = i25;
                    }
                    i14 = i21;
                    i19 += h10.length();
                }
                i12 = i14;
            } else {
                int i26 = i21;
                if (i22 != 0) {
                    if (d10.length() == 0) {
                        i13 = i22;
                    } else {
                        int length2 = d10.length();
                        int i27 = 0;
                        while (i27 < length2) {
                            int i28 = length2;
                            int i29 = i22;
                            if (!C3624f.J(d10.charAt(i27), str.charAt(i19 + i27), i18)) {
                                Z(str, i19, i11, d10, "byte separator");
                            }
                            i27++;
                            length2 = i28;
                            i22 = i29;
                        }
                        i13 = i22;
                        i19 += d10.length();
                    }
                    i12 = i26;
                    i22 = i13;
                } else {
                    i12 = i26;
                }
                int i30 = i12 + 1;
                int i31 = i22 + 1;
                if (c10.length() != 0) {
                    i15 = i30;
                    i16 = i31;
                } else {
                    int length3 = c10.length();
                    i15 = i30;
                    int i32 = 0;
                    while (i32 < length3) {
                        int i33 = length3;
                        int i34 = i31;
                        if (!C3624f.J(c10.charAt(i32), str.charAt(i19 + i32), i18)) {
                            Z(str, i19, i11, c10, "byte prefix");
                        }
                        i32++;
                        length3 = i33;
                        i31 = i34;
                    }
                    i16 = i31;
                    i19 += c10.length();
                }
                if (i11 - 2 < i19) {
                    X(str, i19, i11, "exactly", 2);
                }
                int i35 = i20 + 1;
                bArr[i20] = Q(str, i19);
                i19 += 2;
                if (e10.length() != 0) {
                    i17 = i35;
                } else {
                    int length4 = e10.length();
                    int i36 = 0;
                    while (i36 < length4) {
                        int i37 = i35;
                        if (!C3624f.J(e10.charAt(i36), str.charAt(i19 + i36), i18)) {
                            Z(str, i19, i11, e10, "byte suffix");
                        }
                        i36++;
                        i35 = i37;
                    }
                    i17 = i35;
                    i19 += e10.length();
                }
                i21 = i15;
                i20 = i17;
                i22 = i16;
            }
            i22 = 0;
            int i302 = i12 + 1;
            int i312 = i22 + 1;
            if (c10.length() != 0) {
            }
            if (i11 - 2 < i19) {
            }
            int i352 = i20 + 1;
            bArr[i20] = Q(str, i19);
            i19 += 2;
            if (e10.length() != 0) {
            }
            i21 = i15;
            i20 = i17;
            i22 = i16;
        }
        if (i20 == V10) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, i20);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static final int B(@NotNull String str, int i10, int i11, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return F(str, i10, i11, format, 8);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    public static final int C(@NotNull String str, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return B(str, 0, str.length(), format);
    }

    public static int D(String str, int i10, int i11, C3630l c3630l, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return B(str, i10, i11, c3630l);
    }

    public static int E(String str, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return C(str, c3630l);
    }

    public static final int F(String str, int i10, int i11, C3630l c3630l, int i12) {
        AbstractC14967d.f103841b.a(i10, i11, str.length());
        C3630l.d d10 = c3630l.d();
        if (d10.i()) {
            g(str, i10, i11, i12);
            return T(str, i10, i11);
        }
        String f10 = d10.f();
        String h10 = d10.h();
        h(str, i10, i11, f10, h10, d10.c(), i12);
        return T(str, i10 + f10.length(), i11 - h10.length());
    }

    public static final long G(@NotNull String str, int i10, int i11, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return K(str, i10, i11, format, 16);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    public static final long H(@NotNull String str, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return G(str, 0, str.length(), format);
    }

    public static long I(String str, int i10, int i11, C3630l c3630l, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return G(str, i10, i11, c3630l);
    }

    public static long J(String str, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return H(str, c3630l);
    }

    public static final long K(String str, int i10, int i11, C3630l c3630l, int i12) {
        AbstractC14967d.f103841b.a(i10, i11, str.length());
        C3630l.d d10 = c3630l.d();
        if (d10.i()) {
            g(str, i10, i11, i12);
            return U(str, i10, i11);
        }
        String f10 = d10.f();
        String h10 = d10.h();
        h(str, i10, i11, f10, h10, d10.c(), i12);
        return U(str, i10 + f10.length(), i11 - h10.length());
    }

    public static final short L(String str, int i10, int i11, C3630l c3630l) {
        return (short) F(str, i10, i11, c3630l, 4);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    public static final short M(@NotNull String str, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return L(str, 0, str.length(), format);
    }

    public static short N(String str, int i10, int i11, C3630l c3630l, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return L(str, i10, i11, c3630l);
    }

    public static short O(String str, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return M(str, c3630l);
    }

    public static final long P(String str, int i10, Mf.p pVar) {
        char charAt = str.charAt(i10);
        if ((charAt >>> '\b') == 0 && f32110f[charAt] >= 0) {
            return f32110f[charAt];
        }
        pVar.invoke(str, Integer.valueOf(i10));
        throw new KotlinNothingValueException();
    }

    public static final byte Q(String str, int i10) {
        char charAt = str.charAt(i10);
        if ((charAt >>> '\b') != 0 || f32109e[charAt] < 0) {
            W(str, i10);
            throw new KotlinNothingValueException();
        }
        int i11 = f32109e[charAt];
        int i12 = i10 + 1;
        char charAt2 = str.charAt(i12);
        if ((charAt2 >>> '\b') == 0 && f32109e[charAt2] >= 0) {
            return (byte) (f32109e[charAt2] | (i11 << 4));
        }
        W(str, i12);
        throw new KotlinNothingValueException();
    }

    public static final int R(@NotNull String str, int i10, int i11, @NotNull Mf.p onError) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(onError, "onError");
        int i12 = 0;
        while (i10 < i11) {
            int i13 = i12 << 4;
            char charAt = str.charAt(i10);
            if ((charAt >>> '\b') != 0 || f32109e[charAt] < 0) {
                onError.invoke(str, Integer.valueOf(i10));
                throw new KotlinNothingValueException();
            }
            i12 = i13 | f32109e[charAt];
            i10++;
        }
        return i12;
    }

    public static final long S(@NotNull String str, int i10, int i11, @NotNull Mf.p onError) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(onError, "onError");
        long j10 = 0;
        while (i10 < i11) {
            long j11 = j10 << 4;
            char charAt = str.charAt(i10);
            if ((charAt >>> '\b') != 0 || f32110f[charAt] < 0) {
                onError.invoke(str, Integer.valueOf(i10));
                throw new KotlinNothingValueException();
            }
            j10 = j11 | f32110f[charAt];
            i10++;
        }
        return j10;
    }

    public static final int T(String str, int i10, int i11) {
        int i12 = 0;
        while (i10 < i11) {
            int i13 = i12 << 4;
            char charAt = str.charAt(i10);
            if ((charAt >>> '\b') != 0 || f32109e[charAt] < 0) {
                W(str, i10);
                throw new KotlinNothingValueException();
            }
            i12 = i13 | f32109e[charAt];
            i10++;
        }
        return i12;
    }

    public static final long U(String str, int i10, int i11) {
        long j10 = 0;
        while (i10 < i11) {
            long j11 = j10 << 4;
            char charAt = str.charAt(i10);
            if ((charAt >>> '\b') != 0 || f32110f[charAt] < 0) {
                W(str, i10);
                throw new KotlinNothingValueException();
            }
            j10 = j11 | f32110f[charAt];
            i10++;
        }
        return j10;
    }

    public static final int V(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        long c10;
        int i17;
        int i18;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j10 = i15 + 2 + i16;
        long c11 = c(j10, i12, i14);
        if (i11 <= i12) {
            c10 = c(j10, i11, i14);
        } else {
            c10 = c(c11, i11 / i12, i13);
            int i19 = i11 % i12;
            if (i19 != 0) {
                c10 = c10 + i13 + c(j10, i19, i14);
            }
        }
        long j11 = i10;
        long s02 = s0(j11, c10, 1);
        long j12 = j11 - ((c10 + 1) * s02);
        long s03 = s0(j12, c11, i13);
        long j13 = j12 - ((c11 + i13) * s03);
        long s04 = s0(j13, j10, i14);
        if (j13 - ((j10 + i14) * s04) > 0) {
            i18 = i11;
            i17 = 1;
        } else {
            i17 = 0;
            i18 = i11;
        }
        return (int) ((s02 * i18) + (s03 * i12) + s04 + i17);
    }

    public static final Void W(String str, int i10) {
        throw new NumberFormatException("Expected a hexadecimal digit at index " + i10 + ", but was " + str.charAt(i10));
    }

    public static final void X(String str, int i10, int i11, String str2, int i12) {
        kotlin.jvm.internal.M.n(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, i11);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        throw new NumberFormatException("Expected " + str2 + C15883c.f126249O + i12 + " hexadecimal digits at index " + i10 + ", but was \"" + substring + "\" of length " + (i11 - i10));
    }

    public static final void Y(String str, int i10, int i11, String str2, String str3) {
        kotlin.jvm.internal.M.n(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, i11);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        throw new NumberFormatException("Expected a hexadecimal number with prefix \"" + str2 + "\" and suffix \"" + str3 + "\", but was " + substring);
    }

    public static final void Z(String str, int i10, int i11, String str2, String str3) {
        int D10 = Vf.u.D(str2.length() + i10, i11);
        kotlin.jvm.internal.M.n(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, D10);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        throw new NumberFormatException("Expected " + str3 + " \"" + str2 + "\" at index " + i10 + ", but was " + substring);
    }

    public static final int a0(String str, char[] cArr, int i10) {
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                int length2 = str.length();
                kotlin.jvm.internal.M.n(str, "null cannot be cast to non-null type java.lang.String");
                str.getChars(0, length2, cArr, i10);
            } else {
                cArr[i10] = str.charAt(0);
            }
        }
        return i10 + str.length();
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final String b0(byte b10, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(format, "format");
        String str = format.e() ? "0123456789ABCDEF" : f32105a;
        C3630l.d d10 = format.d();
        if (!d10.j()) {
            return n0(b10, d10, str, 8);
        }
        char[] cArr = {str.charAt((b10 >> 4) & 15), str.charAt(b10 & 15)};
        return d10.g() ? C3617K.P1(cArr, Vf.u.D((Integer.numberOfLeadingZeros(b10 & 255) - 24) >> 2, 1), 0, 2, null) : C3617K.N1(cArr);
    }

    public static final long c(long j10, int i10, int i11) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j11 = i10;
        return (j10 * j11) + (i11 * (j11 - 1));
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final String c0(int i10, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(format, "format");
        String str = format.e() ? "0123456789ABCDEF" : f32105a;
        C3630l.d d10 = format.d();
        if (!d10.j()) {
            return n0(i10, d10, str, 32);
        }
        char[] cArr = {str.charAt((i10 >> 28) & 15), str.charAt((i10 >> 24) & 15), str.charAt((i10 >> 20) & 15), str.charAt((i10 >> 16) & 15), str.charAt((i10 >> 12) & 15), str.charAt((i10 >> 8) & 15), str.charAt((i10 >> 4) & 15), str.charAt(i10 & 15)};
        return d10.g() ? C3617K.P1(cArr, Vf.u.D(Integer.numberOfLeadingZeros(i10) >> 2, 7), 0, 2, null) : C3617K.N1(cArr);
    }

    @InterfaceC14394D
    public static final int d(String str, int i10, int i11, String str2, boolean z10, String str3) {
        if (str2.length() == 0) {
            return i10;
        }
        int length = str2.length();
        for (int i12 = 0; i12 < length; i12++) {
            if (!C3624f.J(str2.charAt(i12), str.charAt(i10 + i12), z10)) {
                Z(str, i10, i11, str2, str3);
            }
        }
        return i10 + str2.length();
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final String d0(long j10, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(format, "format");
        String str = format.e() ? "0123456789ABCDEF" : f32105a;
        C3630l.d d10 = format.d();
        if (!d10.j()) {
            return n0(j10, d10, str, 64);
        }
        char[] cArr = {str.charAt((int) ((j10 >> 60) & 15)), str.charAt((int) ((j10 >> 56) & 15)), str.charAt((int) ((j10 >> 52) & 15)), str.charAt((int) ((j10 >> 48) & 15)), str.charAt((int) ((j10 >> 44) & 15)), str.charAt((int) ((j10 >> 40) & 15)), str.charAt((int) ((j10 >> 36) & 15)), str.charAt((int) ((j10 >> 32) & 15)), str.charAt((int) ((j10 >> 28) & 15)), str.charAt((int) ((j10 >> 24) & 15)), str.charAt((int) ((j10 >> 20) & 15)), str.charAt((int) ((j10 >> 16) & 15)), str.charAt((int) ((j10 >> 12) & 15)), str.charAt((int) ((j10 >> 8) & 15)), str.charAt((int) ((j10 >> 4) & 15)), str.charAt((int) (15 & j10))};
        return d10.g() ? C3617K.P1(cArr, Vf.u.D(Long.numberOfLeadingZeros(j10) >> 2, 15), 0, 2, null) : C3617K.N1(cArr);
    }

    public static final int e(long j10) {
        if (0 <= j10 && j10 <= 2147483647L) {
            return (int) j10;
        }
        throw new IllegalArgumentException("The resulting string length is too big: " + ((Object) F0.g0(F0.i(j10))));
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final String e0(short s10, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(format, "format");
        String str = format.e() ? "0123456789ABCDEF" : f32105a;
        C3630l.d d10 = format.d();
        if (!d10.j()) {
            return n0(s10, d10, str, 16);
        }
        char[] cArr = {str.charAt((s10 >> 12) & 15), str.charAt((s10 >> 8) & 15), str.charAt((s10 >> 4) & 15), str.charAt(s10 & 15)};
        return d10.g() ? C3617K.P1(cArr, Vf.u.D((Integer.numberOfLeadingZeros(s10 & 65535) - 16) >> 2, 3), 0, 2, null) : C3617K.N1(cArr);
    }

    public static final int f(String str, int i10, int i11) {
        if (str.charAt(i10) == '\r') {
            int i12 = i10 + 1;
            return (i12 >= i11 || str.charAt(i12) != '\n') ? i12 : i10 + 2;
        }
        if (str.charAt(i10) == '\n') {
            return i10 + 1;
        }
        throw new NumberFormatException("Expected a new line at index " + i10 + ", but was " + str.charAt(i10));
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final String f0(@NotNull byte[] bArr, int i10, int i11, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        AbstractC14967d.f103841b.a(i10, i11, bArr.length);
        if (i10 == i11) {
            return "";
        }
        int[] iArr = format.e() ? f32108d : f32107c;
        C3630l.b c10 = format.c();
        return c10.j() ? o0(bArr, i10, i11, c10, iArr) : r0(bArr, i10, i11, c10, iArr);
    }

    public static final void g(String str, int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if (i13 < 1) {
            X(str, i10, i11, "at least", 1);
        } else if (i13 > i12) {
            i(str, i10, (i13 + i10) - i12);
        }
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final String g0(@NotNull byte[] bArr, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return f0(bArr, 0, bArr.length, format);
    }

    public static final void h(String str, int i10, int i11, String str2, String str3, boolean z10, int i12) {
        if ((i11 - i10) - str2.length() <= str3.length()) {
            Y(str, i10, i11, str2, str3);
        }
        if (str2.length() != 0) {
            int length = str2.length();
            for (int i13 = 0; i13 < length; i13++) {
                if (!C3624f.J(str2.charAt(i13), str.charAt(i10 + i13), z10)) {
                    Z(str, i10, i11, str2, "prefix");
                }
            }
            i10 += str2.length();
        }
        int length2 = i11 - str3.length();
        if (str3.length() != 0) {
            int length3 = str3.length();
            for (int i14 = 0; i14 < length3; i14++) {
                if (!C3624f.J(str3.charAt(i14), str.charAt(length2 + i14), z10)) {
                    Z(str, length2, i11, str3, "suffix");
                }
            }
        }
        g(str, i10, length2, i12);
    }

    public static String h0(byte b10, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return b0(b10, c3630l);
    }

    public static final void i(String str, int i10, int i11) {
        while (i10 < i11) {
            if (str.charAt(i10) != '0') {
                throw new NumberFormatException("Expected the hexadecimal digit '0' at index " + i10 + ", but was '" + str.charAt(i10) + "'.\nThe result won't fit the type being parsed.");
            }
            i10++;
        }
    }

    public static String i0(int i10, C3630l c3630l, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return c0(i10, c3630l);
    }

    public static final int j(String str, int i10, Mf.p pVar) {
        char charAt = str.charAt(i10);
        if ((charAt >>> '\b') == 0 && f32109e[charAt] >= 0) {
            return f32109e[charAt];
        }
        pVar.invoke(str, Integer.valueOf(i10));
        throw new KotlinNothingValueException();
    }

    public static String j0(long j10, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return d0(j10, c3630l);
    }

    public static final int k(byte[] bArr, int i10, String str, String str2, int[] iArr, char[] cArr, int i11) {
        return a0(str2, cArr, l(bArr, i10, iArr, cArr, a0(str, cArr, i11)));
    }

    public static String k0(short s10, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return e0(s10, c3630l);
    }

    public static final int l(byte[] bArr, int i10, int[] iArr, char[] cArr, int i11) {
        int i12 = iArr[bArr[i10] & 255];
        cArr[i11] = (char) (i12 >> 8);
        cArr[i11 + 1] = (char) (i12 & 255);
        return i11 + 2;
    }

    public static String l0(byte[] bArr, int i10, int i11, C3630l c3630l, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        if ((i12 & 4) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return f0(bArr, i10, i11, c3630l);
    }

    public static final int m(int i10, int i11, int i12, int i13) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j10 = i11;
        return e((i10 * (((i12 + 2) + i13) + j10)) - j10);
    }

    public static String m0(byte[] bArr, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return g0(bArr, c3630l);
    }

    public static final int n(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i17 = (i10 - 1) / i11;
        int i18 = (i11 - 1) / i12;
        int i19 = i10 % i11;
        if (i19 != 0) {
            i11 = i19;
        }
        return e(i17 + (((i18 * i17) + ((i11 - 1) / i12)) * i13) + (((r0 - i17) - r2) * i14) + (i10 * (i15 + 2 + i16)));
    }

    public static final String n0(long j10, C3630l.d dVar, String str, int i10) {
        if ((i10 & 3) != 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i11 = i10 >> 2;
        int d10 = dVar.d();
        int w10 = Vf.u.w(d10 - i11, 0);
        String f10 = dVar.f();
        String h10 = dVar.h();
        boolean g10 = dVar.g();
        int e10 = e(f10.length() + w10 + i11 + h10.length());
        char[] cArr = new char[e10];
        int a02 = a0(f10, cArr, 0);
        if (w10 > 0) {
            int i12 = w10 + a02;
            C14985q.H1(cArr, str.charAt(0), a02, i12);
            a02 = i12;
        }
        int i13 = i10;
        for (int i14 = 0; i14 < i11; i14++) {
            i13 -= 4;
            int i15 = (int) ((j10 >> i13) & 15);
            g10 = g10 && i15 == 0 && (i13 >> 2) >= d10;
            if (!g10) {
                cArr[a02] = str.charAt(i15);
                a02++;
            }
        }
        int a03 = a0(h10, cArr, a02);
        return a03 == e10 ? C3617K.N1(cArr) : C3617K.P1(cArr, 0, a03, 1, null);
    }

    @NotNull
    public static final int[] o() {
        return f32107c;
    }

    public static final String o0(byte[] bArr, int i10, int i11, C3630l.b bVar, int[] iArr) {
        return bVar.k() ? q0(bArr, i10, i11, bVar, iArr) : p0(bArr, i10, i11, bVar, iArr);
    }

    public static final byte p(String str, int i10, int i11, C3630l c3630l) {
        return (byte) F(str, i10, i11, c3630l, 2);
    }

    public static final String p0(byte[] bArr, int i10, int i11, C3630l.b bVar, int[] iArr) {
        String c10 = bVar.c();
        String e10 = bVar.e();
        String d10 = bVar.d();
        char[] cArr = new char[m(i11 - i10, d10.length(), c10.length(), e10.length())];
        int k10 = k(bArr, i10, c10, e10, iArr, cArr, 0);
        while (true) {
            i10++;
            if (i10 >= i11) {
                return C3617K.N1(cArr);
            }
            k10 = k(bArr, i10, c10, e10, iArr, cArr, a0(d10, cArr, k10));
        }
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    public static final byte q(@NotNull String str, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return p(str, 0, str.length(), format);
    }

    public static final String q0(byte[] bArr, int i10, int i11, C3630l.b bVar, int[] iArr) {
        int length = bVar.d().length();
        if (length > 1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i12 = i11 - i10;
        int i13 = 0;
        if (length == 0) {
            char[] cArr = new char[e(i12 * 2)];
            while (i10 < i11) {
                i13 = l(bArr, i10, iArr, cArr, i13);
                i10++;
            }
            return C3617K.N1(cArr);
        }
        char[] cArr2 = new char[e((i12 * 3) - 1)];
        char charAt = bVar.d().charAt(0);
        int l10 = l(bArr, i10, iArr, cArr2, 0);
        for (int i14 = i10 + 1; i14 < i11; i14++) {
            cArr2[l10] = charAt;
            l10 = l(bArr, i14, iArr, cArr2, l10 + 1);
        }
        return C3617K.N1(cArr2);
    }

    public static byte r(String str, int i10, int i11, C3630l c3630l, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return p(str, i10, i11, c3630l);
    }

    public static final String r0(byte[] bArr, int i10, int i11, C3630l.b bVar, int[] iArr) {
        int i12;
        int i13;
        int g10 = bVar.g();
        int f10 = bVar.f();
        String c10 = bVar.c();
        String e10 = bVar.e();
        String d10 = bVar.d();
        String h10 = bVar.h();
        int n10 = n(i11 - i10, g10, f10, h10.length(), d10.length(), c10.length(), e10.length());
        char[] cArr = new char[n10];
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = i10; i17 < i11; i17++) {
            if (i15 == g10) {
                cArr[i14] = '\n';
                i14++;
                i12 = 0;
                i13 = 0;
            } else if (i16 == f10) {
                i14 = a0(h10, cArr, i14);
                i12 = i15;
                i13 = 0;
            } else {
                i12 = i15;
                i13 = i16;
            }
            if (i13 != 0) {
                i14 = a0(d10, cArr, i14);
            }
            i14 = k(bArr, i17, c10, e10, iArr, cArr, i14);
            i16 = i13 + 1;
            i15 = i12 + 1;
        }
        if (i14 == n10) {
            return C3617K.N1(cArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public static byte s(String str, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return q(str, c3630l);
    }

    public static final long s0(long j10, long j11, int i10) {
        if (j10 <= 0 || j11 <= 0) {
            return 0L;
        }
        long j12 = i10;
        return (j10 + j12) / (j11 + j12);
    }

    public static final byte[] t(String str, int i10, int i11, C3630l c3630l) {
        byte[] x10;
        AbstractC14967d.f103841b.a(i10, i11, str.length());
        if (i10 == i11) {
            return new byte[0];
        }
        C3630l.b c10 = c3630l.c();
        return (!c10.j() || (x10 = x(str, i10, i11, c10)) == null) ? A(str, i10, i11, c10) : x10;
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    @NotNull
    public static final byte[] u(@NotNull String str, @NotNull C3630l format) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        return t(str, 0, str.length(), format);
    }

    public static byte[] v(String str, int i10, int i11, C3630l c3630l, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return t(str, i10, i11, c3630l);
    }

    public static byte[] w(String str, C3630l c3630l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c3630l = C3630l.f32111d.a();
        }
        return u(str, c3630l);
    }

    public static final byte[] x(String str, int i10, int i11, C3630l.b bVar) {
        return bVar.k() ? z(str, i10, i11, bVar) : y(str, i10, i11, bVar);
    }

    public static final byte[] y(String str, int i10, int i11, C3630l.b bVar) {
        String c10 = bVar.c();
        String e10 = bVar.e();
        String d10 = bVar.d();
        long length = d10.length();
        long length2 = c10.length() + 2 + e10.length() + length;
        long j10 = i11 - i10;
        int i12 = (int) ((j10 + length) / length2);
        if ((i12 * length2) - length != j10) {
            return null;
        }
        boolean i13 = bVar.i();
        byte[] bArr = new byte[i12];
        if (c10.length() != 0) {
            int length3 = c10.length();
            for (int i14 = 0; i14 < length3; i14++) {
                if (!C3624f.J(c10.charAt(i14), str.charAt(i10 + i14), i13)) {
                    Z(str, i10, i11, c10, "byte prefix");
                }
            }
            i10 += c10.length();
        }
        String str2 = e10 + d10 + c10;
        int i15 = i12 - 1;
        for (int i16 = 0; i16 < i15; i16++) {
            bArr[i16] = Q(str, i10);
            i10 += 2;
            if (str2.length() != 0) {
                int length4 = str2.length();
                for (int i17 = 0; i17 < length4; i17++) {
                    if (!C3624f.J(str2.charAt(i17), str.charAt(i10 + i17), i13)) {
                        Z(str, i10, i11, str2, "byte suffix + byte separator + byte prefix");
                    }
                }
                i10 += str2.length();
            }
        }
        bArr[i15] = Q(str, i10);
        int i18 = i10 + 2;
        if (e10.length() != 0) {
            int length5 = e10.length();
            for (int i19 = 0; i19 < length5; i19++) {
                if (!C3624f.J(e10.charAt(i19), str.charAt(i18 + i19), i13)) {
                    Z(str, i18, i11, e10, "byte suffix");
                }
            }
        }
        return bArr;
    }

    public static final byte[] z(String str, int i10, int i11, C3630l.b bVar) {
        int length = bVar.d().length();
        if (length > 1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i12 = i11 - i10;
        int i13 = 2;
        if (length == 0) {
            if ((i12 & 1) != 0) {
                return null;
            }
            int i14 = i12 >> 1;
            byte[] bArr = new byte[i14];
            int i15 = 0;
            for (int i16 = 0; i16 < i14; i16++) {
                bArr[i16] = Q(str, i15);
                i15 += 2;
            }
            return bArr;
        }
        if (i12 % 3 != 2) {
            return null;
        }
        int i17 = (i12 / 3) + 1;
        byte[] bArr2 = new byte[i17];
        char charAt = bVar.d().charAt(0);
        bArr2[0] = Q(str, 0);
        for (int i18 = 1; i18 < i17; i18++) {
            if (str.charAt(i13) != charAt) {
                String d10 = bVar.d();
                boolean i19 = bVar.i();
                if (d10.length() != 0) {
                    int length2 = d10.length();
                    for (int i20 = 0; i20 < length2; i20++) {
                        if (!C3624f.J(d10.charAt(i20), str.charAt(i13 + i20), i19)) {
                            Z(str, i13, i11, d10, "byte separator");
                        }
                    }
                    d10.length();
                }
            }
            bArr2[i18] = Q(str, i13 + 1);
            i13 += 3;
        }
        return bArr2;
    }
}
