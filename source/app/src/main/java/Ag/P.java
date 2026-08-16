package ag;

import Xf.InterfaceC3312m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;
import pf.C14985q;
import w2.C15883c;

@t0({"SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1660:1\n78#1,22:1661\n112#1,5:1683\n129#1,5:1688\n78#1,22:1693\n106#1:1715\n78#1,22:1716\n112#1,5:1738\n123#1:1743\n112#1,5:1744\n129#1,5:1749\n140#1:1754\n129#1,5:1755\n78#1,22:1760\n112#1,5:1782\n129#1,5:1787\n1088#2,2:1792\n13305#3,2:1794\n13305#3,2:1796\n296#4,2:1798\n296#4,2:1800\n1586#4:1803\n1661#4,3:1804\n1586#4:1807\n1661#4,3:1808\n1#5:1802\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n106#1:1661,22\n123#1:1683,5\n140#1:1688,5\n145#1:1693,22\n150#1:1715\n150#1:1716,22\n155#1:1738,5\n160#1:1743\n160#1:1744,5\n165#1:1749,5\n170#1:1754\n170#1:1755,5\n175#1:1760,22\n186#1:1782,5\n197#1:1787,5\n310#1:1792,2\n976#1:1794,2\n1000#1:1796,2\n1039#1:1798,2\n1045#1:1800,2\n1425#1:1803\n1425#1:1804,3\n1467#1:1807\n1467#1:1808,3\n*E\n"})
public class P extends C3617K {

    public static final class a extends pf.E {

        public int f32030b;

        public final CharSequence f32031c;

        public a(CharSequence charSequence) {
            this.f32031c = charSequence;
        }

        @Override
        public char b() {
            CharSequence charSequence = this.f32031c;
            int i10 = this.f32030b;
            this.f32030b = i10 + 1;
            return charSequence.charAt(i10);
        }

        @Override
        public boolean hasNext() {
            return this.f32030b < this.f32031c.length();
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,730:1\n1550#2:731\n*E\n"})
    public static final class b implements InterfaceC3312m<String> {

        public final CharSequence f32032a;

        public b(CharSequence charSequence) {
            this.f32032a = charSequence;
        }

        @Override
        public Iterator<String> iterator() {
            return new C3632n(this.f32032a);
        }
    }

    public static nf.Z A3(CharSequence charSequence, Collection collection, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = C3(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return z3(charSequence, collection, i10, z10);
    }

    @NotNull
    public static final CharSequence A4(@NotNull CharSequence charSequence, int i10, int i11) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("End index (" + i11 + ") is less than start index (" + i10 + ").");
        }
        if (i11 == i10) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb2 = new StringBuilder(charSequence.length() - (i11 - i10));
        sb2.append(charSequence, 0, i10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append(charSequence, i11, charSequence.length());
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return sb2;
    }

    public static final boolean A5(@NotNull CharSequence charSequence, char c10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length() > 0 && C3624f.J(charSequence.charAt(0), c10, z10);
    }

    @NotNull
    public static final Vf.l B3(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return new Vf.l(0, charSequence.length() - 1);
    }

    @NotNull
    public static final CharSequence B4(@NotNull CharSequence charSequence, @NotNull Vf.l range) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        return A4(charSequence, range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    public static final boolean B5(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        return (!z10 && (charSequence instanceof String) && (prefix instanceof String)) ? C3617K.K2((String) charSequence, (String) prefix, i10, false, 4, null) : x4(charSequence, i10, prefix, 0, prefix.length(), z10);
    }

    public static int C3(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    @Ef.f
    public static final String C4(String str, int i10, int i11) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return A4(str, i10, i11).toString();
    }

    public static final boolean C5(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        return (!z10 && (charSequence instanceof String) && (prefix instanceof String)) ? C3617K.L2((String) charSequence, (String) prefix, false, 2, null) : x4(charSequence, 0, prefix, 0, prefix.length(), z10);
    }

    public static final boolean D3(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return i10 >= 0 && i10 <= charSequence.length() + (-2) && Character.isHighSurrogate(charSequence.charAt(i10)) && Character.isLowSurrogate(charSequence.charAt(i10 + 1));
    }

    @Ef.f
    public static final String D4(String str, Vf.l range) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        return B4(str, range).toString();
    }

    public static boolean D5(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return A5(charSequence, c10, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends CharSequence & R, R> R E3(C c10, Mf.a<? extends R> defaultValue) {
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return Q3(c10) ? defaultValue.invoke() : c10;
    }

    @NotNull
    public static final CharSequence E4(@NotNull CharSequence charSequence, @NotNull CharSequence suffix) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(suffix, "suffix");
        return v3(charSequence, suffix, false, 2, null) ? charSequence.subSequence(0, charSequence.length() - suffix.length()) : charSequence.subSequence(0, charSequence.length());
    }

    public static boolean E5(CharSequence charSequence, CharSequence charSequence2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return B5(charSequence, charSequence2, i10, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends CharSequence & R, R> R F3(C c10, Mf.a<? extends R> defaultValue) {
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return c10.length() == 0 ? defaultValue.invoke() : c10;
    }

    @NotNull
    public static final String F4(@NotNull String str, @NotNull CharSequence suffix) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(suffix, "suffix");
        if (!v3(str, suffix, false, 2, null)) {
            return str;
        }
        String substring = str.substring(0, str.length() - suffix.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static boolean F5(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return C5(charSequence, charSequence2, z10);
    }

    public static final int G3(@NotNull CharSequence charSequence, char c10, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? N3(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).indexOf(c10, i10);
    }

    @NotNull
    public static final CharSequence G4(@NotNull CharSequence charSequence, @NotNull CharSequence delimiter) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        return H4(charSequence, delimiter, delimiter);
    }

    @NotNull
    public static final CharSequence G5(@NotNull CharSequence charSequence, @NotNull Vf.l range) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    public static final int H3(@NotNull CharSequence charSequence, @NotNull String string, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(string, "string");
        return (z10 || !(charSequence instanceof String)) ? J3(charSequence, string, i10, charSequence.length(), z10, false, 16, null) : ((String) charSequence).indexOf(string, i10);
    }

    @NotNull
    public static final CharSequence H4(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(suffix, "suffix");
        return (charSequence.length() >= prefix.length() + suffix.length() && F5(charSequence, prefix, false, 2, null) && v3(charSequence, suffix, false, 2, null)) ? charSequence.subSequence(prefix.length(), charSequence.length() - suffix.length()) : charSequence.subSequence(0, charSequence.length());
    }

    @Ef.f
    @InterfaceC14427o(message = "Use parameters named startIndex and endIndex.", replaceWith = @InterfaceC14412g0(expression = "subSequence(startIndex = start, endIndex = end)", imports = {}))
    @InterfaceC14429p(errorSince = "2.3", warningSince = "1.0")
    public static final CharSequence H5(String str, int i10, int i11) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.subSequence(i10, i11);
    }

    public static final int I3(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        Vf.j lVar = !z11 ? new Vf.l(Vf.u.w(i10, 0), Vf.u.D(i11, charSequence.length())) : Vf.u.m0(Vf.u.D(i10, C3(charSequence)), Vf.u.w(i11, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int c10 = lVar.c();
            int d10 = lVar.d();
            int g10 = lVar.g();
            if ((g10 <= 0 || c10 > d10) && (g10 >= 0 || d10 > c10)) {
                return -1;
            }
            while (!x4(charSequence2, 0, charSequence, c10, charSequence2.length(), z10)) {
                if (c10 == d10) {
                    return -1;
                }
                c10 += g10;
            }
            return c10;
        }
        int c11 = lVar.c();
        int d11 = lVar.d();
        int g11 = lVar.g();
        if ((g11 <= 0 || c11 > d11) && (g11 >= 0 || d11 > c11)) {
            return -1;
        }
        while (true) {
            String str = (String) charSequence2;
            if (C3617K.u2(str, 0, (String) charSequence, c11, str.length(), z10)) {
                return c11;
            }
            if (c11 == d11) {
                return -1;
            }
            c11 += g11;
        }
    }

    @NotNull
    public static final String I4(@NotNull String str, @NotNull CharSequence delimiter) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        return J4(str, delimiter, delimiter);
    }

    @Ef.f
    public static final String I5(CharSequence charSequence, int i10, int i11) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.subSequence(i10, i11).toString();
    }

    public static int J3(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            z11 = false;
        }
        return I3(charSequence, charSequence2, i10, i11, z10, z11);
    }

    @NotNull
    public static final String J4(@NotNull String str, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(suffix, "suffix");
        if (str.length() < prefix.length() + suffix.length() || !F5(str, prefix, false, 2, null) || !v3(str, suffix, false, 2, null)) {
            return str;
        }
        String substring = str.substring(prefix.length(), str.length() - suffix.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public static final String J5(@NotNull CharSequence charSequence, @NotNull Vf.l range) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    public static int K3(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return G3(charSequence, c10, i10, z10);
    }

    @Ef.f
    public static final String K4(CharSequence charSequence, C3639v regex, Mf.l<? super r, ? extends CharSequence> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        kotlin.jvm.internal.M.p(transform, "transform");
        return regex.p(charSequence, transform);
    }

    @NotNull
    public static final String K5(@NotNull String str, @NotNull Vf.l range) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        String substring = str.substring(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static int L3(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return H3(charSequence, str, i10, z10);
    }

    @Ef.f
    public static final String L4(CharSequence charSequence, C3639v regex, String replacement) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        return regex.q(charSequence, replacement);
    }

    public static String L5(CharSequence charSequence, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = charSequence.length();
        }
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.subSequence(i10, i11).toString();
    }

    public static final int M3(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(strings, "strings");
        nf.Z<Integer, String> x32 = x3(charSequence, strings, i10, z10, false);
        if (x32 != null) {
            return x32.e().intValue();
        }
        return -1;
    }

    @NotNull
    public static final String M4(@NotNull String str, char c10, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int K32 = K3(str, c10, 0, false, 6, null);
        return K32 == -1 ? missingDelimiterValue : f5(str, K32 + 1, str.length(), replacement).toString();
    }

    @NotNull
    public static final String M5(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int K32 = K3(str, c10, 0, false, 6, null);
        if (K32 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(K32 + 1, str.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static final int N3(@NotNull CharSequence charSequence, @NotNull char[] chars, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(C14960A.pt(chars), i10);
        }
        int w10 = Vf.u.w(i10, 0);
        int C32 = C3(charSequence);
        if (w10 > C32) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(w10);
            for (char c10 : chars) {
                if (C3624f.J(c10, charAt, z10)) {
                    return w10;
                }
            }
            if (w10 == C32) {
                return -1;
            }
            w10++;
        }
    }

    @NotNull
    public static final String N4(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int L32 = L3(str, delimiter, 0, false, 6, null);
        return L32 == -1 ? missingDelimiterValue : f5(str, L32 + delimiter.length(), str.length(), replacement).toString();
    }

    @NotNull
    public static final String N5(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int L32 = L3(str, delimiter, 0, false, 6, null);
        if (L32 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(L32 + delimiter.length(), str.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static int O3(CharSequence charSequence, Collection collection, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return M3(charSequence, collection, i10, z10);
    }

    public static String O4(String str, char c10, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = str;
        }
        return M4(str, c10, str2, str3);
    }

    public static String O5(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return M5(str, c10, str2);
    }

    public static int P3(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return N3(charSequence, cArr, i10, z10);
    }

    public static String P4(String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str4 = str;
        }
        return N4(str, str2, str3, str4);
    }

    public static String P5(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return N5(str, str2, str3);
    }

    public static boolean Q3(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (!C3623e.r(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final String Q4(@NotNull String str, char c10, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int Z32 = Z3(str, c10, 0, false, 6, null);
        return Z32 == -1 ? missingDelimiterValue : f5(str, Z32 + 1, str.length(), replacement).toString();
    }

    @NotNull
    public static String Q5(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int Z32 = Z3(str, c10, 0, false, 6, null);
        if (Z32 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(Z32 + 1, str.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @Ef.f
    public static final boolean R3(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length() == 0;
    }

    @NotNull
    public static final String R4(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int a42 = a4(str, delimiter, 0, false, 6, null);
        return a42 == -1 ? missingDelimiterValue : f5(str, a42 + delimiter.length(), str.length(), replacement).toString();
    }

    @NotNull
    public static final String R5(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int a42 = a4(str, delimiter, 0, false, 6, null);
        if (a42 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(a42 + delimiter.length(), str.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @Ef.f
    public static final boolean S3(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return !Q3(charSequence);
    }

    public static String S4(String str, char c10, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = str;
        }
        return Q4(str, c10, str2, str3);
    }

    public static String S5(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return Q5(str, c10, str2);
    }

    @Ef.f
    public static final boolean T3(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length() > 0;
    }

    public static String T4(String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str4 = str;
        }
        return R4(str, str2, str3, str4);
    }

    public static String T5(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return R5(str, str2, str3);
    }

    @Ef.f
    public static final boolean U3(CharSequence charSequence) {
        return charSequence == null || Q3(charSequence);
    }

    @NotNull
    public static final String U4(@NotNull String str, char c10, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int K32 = K3(str, c10, 0, false, 6, null);
        return K32 == -1 ? missingDelimiterValue : f5(str, 0, K32, replacement).toString();
    }

    @NotNull
    public static final String U5(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int K32 = K3(str, c10, 0, false, 6, null);
        if (K32 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(0, K32);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @Ef.f
    public static final boolean V3(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    @NotNull
    public static final String V4(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int L32 = L3(str, delimiter, 0, false, 6, null);
        return L32 == -1 ? missingDelimiterValue : f5(str, 0, L32, replacement).toString();
    }

    @NotNull
    public static final String V5(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int L32 = L3(str, delimiter, 0, false, 6, null);
        if (L32 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(0, L32);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public static final pf.E W3(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return new a(charSequence);
    }

    public static String W4(String str, char c10, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = str;
        }
        return U4(str, c10, str2, str3);
    }

    public static String W5(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return U5(str, c10, str2);
    }

    public static final int X3(@NotNull CharSequence charSequence, char c10, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? c4(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).lastIndexOf(c10, i10);
    }

    public static String X4(String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str4 = str;
        }
        return V4(str, str2, str3, str4);
    }

    public static String X5(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return V5(str, str2, str3);
    }

    public static final int Y3(@NotNull CharSequence charSequence, @NotNull String string, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(string, "string");
        return (z10 || !(charSequence instanceof String)) ? I3(charSequence, string, i10, 0, z10, true) : ((String) charSequence).lastIndexOf(string, i10);
    }

    @NotNull
    public static final String Y4(@NotNull String str, char c10, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int Z32 = Z3(str, c10, 0, false, 6, null);
        return Z32 == -1 ? missingDelimiterValue : f5(str, 0, Z32, replacement).toString();
    }

    @NotNull
    public static final String Y5(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int Z32 = Z3(str, c10, 0, false, 6, null);
        if (Z32 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(0, Z32);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static int Z3(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = C3(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return X3(charSequence, c10, i10, z10);
    }

    @NotNull
    public static final String Z4(@NotNull String str, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int a42 = a4(str, delimiter, 0, false, 6, null);
        return a42 == -1 ? missingDelimiterValue : f5(str, 0, a42, replacement).toString();
    }

    @NotNull
    public static final String Z5(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(delimiter, "delimiter");
        kotlin.jvm.internal.M.p(missingDelimiterValue, "missingDelimiterValue");
        int a42 = a4(str, delimiter, 0, false, 6, null);
        if (a42 == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(0, a42);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static int a4(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = C3(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return Y3(charSequence, str, i10, z10);
    }

    public static String a5(String str, char c10, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = str;
        }
        return Y4(str, c10, str2, str3);
    }

    public static String a6(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return Y5(str, c10, str2);
    }

    public static final int b4(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(strings, "strings");
        nf.Z<Integer, String> x32 = x3(charSequence, strings, i10, z10, true);
        if (x32 != null) {
            return x32.e().intValue();
        }
        return -1;
    }

    public static String b5(String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str4 = str;
        }
        return Z4(str, str2, str3, str4);
    }

    public static String b6(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return Z5(str, str2, str3);
    }

    public static final int c4(@NotNull CharSequence charSequence, @NotNull char[] chars, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(C14960A.pt(chars), i10);
        }
        for (int D10 = Vf.u.D(i10, C3(charSequence)); -1 < D10; D10--) {
            char charAt = charSequence.charAt(D10);
            for (char c10 : chars) {
                if (C3624f.J(c10, charAt, z10)) {
                    return D10;
                }
            }
        }
        return -1;
    }

    @Ef.f
    public static final String c5(CharSequence charSequence, C3639v regex, String replacement) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        return regex.r(charSequence, replacement);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean c6(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (kotlin.jvm.internal.M.g(str, "true")) {
            return true;
        }
        if (kotlin.jvm.internal.M.g(str, "false")) {
            return false;
        }
        throw new IllegalArgumentException("The string doesn't represent a boolean value: " + str);
    }

    public static int d4(CharSequence charSequence, Collection collection, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = C3(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return b4(charSequence, collection, i10, z10);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "replaceFirstCharWithChar")
    @InterfaceC14422l0(version = "1.5")
    public static final String d5(String str, Mf.l<? super Character, Character> transform) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        if (str.length() <= 0) {
            return str;
        }
        char charValue = transform.invoke(Character.valueOf(str.charAt(0))).charValue();
        String substring = str.substring(1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return charValue + substring;
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final Boolean d6(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (kotlin.jvm.internal.M.g(str, "true")) {
            return Boolean.TRUE;
        }
        if (kotlin.jvm.internal.M.g(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static int e4(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = C3(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return c4(charSequence, cArr, i10, z10);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "replaceFirstCharWithCharSequence")
    @InterfaceC14422l0(version = "1.5")
    public static final String e5(String str, Mf.l<? super Character, ? extends CharSequence> transform) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) transform.invoke(Character.valueOf(str.charAt(0))));
        String substring = str.substring(1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        sb2.append(substring);
        return sb2.toString();
    }

    @NotNull
    public static CharSequence e6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean r10 = C3623e.r(charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!r10) {
                    break;
                }
                length--;
            } else if (r10) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    @NotNull
    public static final InterfaceC3312m<String> f4(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return new b(charSequence);
    }

    @NotNull
    public static final CharSequence f5(@NotNull CharSequence charSequence, int i10, int i11, @NotNull CharSequence replacement) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        if (i11 >= i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(charSequence, 0, i10);
            kotlin.jvm.internal.M.o(sb2, "append(...)");
            sb2.append(replacement);
            sb2.append(charSequence, i11, charSequence.length());
            kotlin.jvm.internal.M.o(sb2, "append(...)");
            return sb2;
        }
        throw new IndexOutOfBoundsException("End index (" + i11 + ") is less than start index (" + i10 + ").");
    }

    @NotNull
    public static final CharSequence f6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean booleanValue = predicate.invoke(Character.valueOf(charSequence.charAt(!z10 ? i10 : length))).booleanValue();
            if (z10) {
                if (!booleanValue) {
                    break;
                }
                length--;
            } else if (booleanValue) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    @NotNull
    public static List<String> g4(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return Xf.K.I3(f4(charSequence));
    }

    @NotNull
    public static final CharSequence g5(@NotNull CharSequence charSequence, @NotNull Vf.l range, @NotNull CharSequence replacement) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        return f5(charSequence, range.getStart().intValue(), range.getEndInclusive().intValue() + 1, replacement);
    }

    @NotNull
    public static final CharSequence g6(@NotNull CharSequence charSequence, @NotNull char... chars) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean w82 = C14960A.w8(chars, charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!w82) {
                    break;
                }
                length--;
            } else if (w82) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    @NotNull
    public static final String h3(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(charSequence.length(), other.length());
        int i10 = 0;
        while (i10 < min && C3624f.J(charSequence.charAt(i10), other.charAt(i10), z10)) {
            i10++;
        }
        int i11 = i10 - 1;
        if (D3(charSequence, i11) || D3(other, i11)) {
            i10--;
        }
        return charSequence.subSequence(0, i10).toString();
    }

    @Ef.f
    public static final boolean h4(CharSequence charSequence, C3639v regex) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        return regex.m(charSequence);
    }

    @Ef.f
    public static final String h5(String str, int i10, int i11, CharSequence replacement) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        return f5(str, i10, i11, replacement).toString();
    }

    @Ef.f
    public static final String h6(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return e6(str).toString();
    }

    public static String i3(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return h3(charSequence, charSequence2, z10);
    }

    @Ef.f
    public static final String i4(String str) {
        return str == null ? "" : str;
    }

    @Ef.f
    public static final String i5(String str, Vf.l range, CharSequence replacement) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(range, "range");
        kotlin.jvm.internal.M.p(replacement, "replacement");
        return g5(str, range, replacement).toString();
    }

    @NotNull
    public static final String i6(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean booleanValue = predicate.invoke(Character.valueOf(str.charAt(!z10 ? i10 : length))).booleanValue();
            if (z10) {
                if (!booleanValue) {
                    break;
                }
                length--;
            } else if (booleanValue) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return str.subSequence(i10, length + 1).toString();
    }

    @NotNull
    public static final String j3(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = charSequence.length();
        int min = Math.min(length, other.length());
        int i10 = 0;
        while (i10 < min && C3624f.J(charSequence.charAt((length - i10) - 1), other.charAt((r1 - i10) - 1), z10)) {
            i10++;
        }
        if (D3(charSequence, (length - i10) - 1) || D3(other, (r1 - i10) - 1)) {
            i10--;
        }
        return charSequence.subSequence(length - i10, length).toString();
    }

    @NotNull
    public static final CharSequence j4(@NotNull CharSequence charSequence, int i10, char c10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
        }
        if (i10 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb2 = new StringBuilder(i10);
        sb2.append(charSequence);
        int length = i10 - charSequence.length();
        int i11 = 1;
        if (1 <= length) {
            while (true) {
                sb2.append(c10);
                if (i11 == length) {
                    break;
                }
                i11++;
            }
        }
        return sb2;
    }

    public static final void j5(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    @NotNull
    public static final String j6(@NotNull String str, @NotNull char... chars) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean w82 = C14960A.w8(chars, str.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!w82) {
                    break;
                }
                length--;
            } else if (w82) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return str.subSequence(i10, length + 1).toString();
    }

    public static String k3(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return j3(charSequence, charSequence2, z10);
    }

    @NotNull
    public static final String k4(@NotNull String str, int i10, char c10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return j4(str, i10, c10).toString();
    }

    public static final int k5(@NotNull String str, int i10, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        while (i10 < str.length() && predicate.invoke(Character.valueOf(str.charAt(i10))).booleanValue()) {
            i10++;
        }
        return i10;
    }

    @NotNull
    public static final CharSequence k6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!C3623e.r(charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return "";
    }

    public static final boolean l3(@NotNull CharSequence charSequence, char c10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return K3(charSequence, c10, 0, z10, 2, null) >= 0;
    }

    public static CharSequence l4(CharSequence charSequence, int i10, char c10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            c10 = C15883c.f126249O;
        }
        return j4(charSequence, i10, c10);
    }

    @Ef.f
    public static final List<String> l5(CharSequence charSequence, C3639v regex, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        return regex.s(charSequence, i10);
    }

    @NotNull
    public static final CharSequence l6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i10 = length - 1;
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(length))).booleanValue()) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i10 < 0) {
                return "";
            }
            length = i10;
        }
    }

    @Ef.f
    public static final boolean m3(CharSequence charSequence, C3639v regex) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        return regex.c(charSequence);
    }

    public static String m4(String str, int i10, char c10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            c10 = C15883c.f126249O;
        }
        return k4(str, i10, c10);
    }

    @NotNull
    public static final List<String> m5(@NotNull CharSequence charSequence, @NotNull char[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return o5(charSequence, String.valueOf(delimiters[0]), z10, i10);
        }
        Iterable l02 = Xf.K.l0(t4(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(pf.I.d0(l02, 10));
        Iterator it = l02.iterator();
        while (it.hasNext()) {
            arrayList.add(J5(charSequence, (Vf.l) it.next()));
        }
        return arrayList;
    }

    @NotNull
    public static final CharSequence m6(@NotNull CharSequence charSequence, @NotNull char... chars) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!C14960A.w8(chars, charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return "";
    }

    public static boolean n3(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        if (other instanceof String) {
            if (L3(charSequence, (String) other, 0, z10, 2, null) < 0) {
                return false;
            }
        } else if (J3(charSequence, other, 0, charSequence.length(), z10, false, 16, null) < 0) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final CharSequence n4(@NotNull CharSequence charSequence, int i10, char c10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
        }
        if (i10 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb2 = new StringBuilder(i10);
        int length = i10 - charSequence.length();
        int i11 = 1;
        if (1 <= length) {
            while (true) {
                sb2.append(c10);
                if (i11 == length) {
                    break;
                }
                i11++;
            }
        }
        sb2.append(charSequence);
        return sb2;
    }

    @NotNull
    public static final List<String> n5(@NotNull CharSequence charSequence, @NotNull String[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                return o5(charSequence, str, z10, i10);
            }
        }
        Iterable l02 = Xf.K.l0(u4(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(pf.I.d0(l02, 10));
        Iterator it = l02.iterator();
        while (it.hasNext()) {
            arrayList.add(J5(charSequence, (Vf.l) it.next()));
        }
        return arrayList;
    }

    @Ef.f
    public static final String n6(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return k6(str).toString();
    }

    public static boolean o3(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return l3(charSequence, c10, z10);
    }

    @NotNull
    public static String o4(@NotNull String str, int i10, char c10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return n4(str, i10, c10).toString();
    }

    public static final List<String> o5(CharSequence charSequence, String str, boolean z10, int i10) {
        j5(i10);
        int i11 = 0;
        int H32 = H3(charSequence, str, 0, z10);
        if (H32 == -1 || i10 == 1) {
            return pf.G.l(charSequence.toString());
        }
        boolean z11 = i10 > 0;
        ArrayList arrayList = new ArrayList(z11 ? Vf.u.D(i10, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(i11, H32).toString());
            i11 = str.length() + H32;
            if (z11 && arrayList.size() == i10 - 1) {
                break;
            }
            H32 = H3(charSequence, str, i11, z10);
        } while (H32 != -1);
        arrayList.add(charSequence.subSequence(i11, charSequence.length()).toString());
        return arrayList;
    }

    @NotNull
    public static final String o6(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        CharSequence charSequence;
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!predicate.invoke(Character.valueOf(str.charAt(length))).booleanValue()) {
                    charSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
            return charSequence.toString();
        }
        charSequence = "";
        return charSequence.toString();
    }

    public static boolean p3(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return n3(charSequence, charSequence2, z10);
    }

    public static CharSequence p4(CharSequence charSequence, int i10, char c10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            c10 = C15883c.f126249O;
        }
        return n4(charSequence, i10, c10);
    }

    public static List p5(CharSequence charSequence, C3639v regex, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        return regex.s(charSequence, i10);
    }

    @NotNull
    public static final String p6(@NotNull String str, @NotNull char... chars) {
        CharSequence charSequence;
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!C14960A.w8(chars, str.charAt(length))) {
                    charSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
            return charSequence.toString();
        }
        charSequence = "";
        return charSequence.toString();
    }

    public static final boolean q3(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return C3617K.e2((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!C3624f.J(charSequence.charAt(i10), charSequence2.charAt(i10), true)) {
                return false;
            }
        }
        return true;
    }

    public static String q4(String str, int i10, char c10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            c10 = C15883c.f126249O;
        }
        return o4(str, i10, c10);
    }

    public static List q5(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return m5(charSequence, cArr, z10, i10);
    }

    @NotNull
    public static final CharSequence q6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!C3623e.r(charSequence.charAt(i10))) {
                return charSequence.subSequence(i10, charSequence.length());
            }
        }
        return "";
    }

    public static final boolean r3(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return kotlin.jvm.internal.M.g(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (charSequence.charAt(i10) != charSequence2.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static final InterfaceC3312m<Vf.l> r4(CharSequence charSequence, final char[] cArr, int i10, final boolean z10, int i11) {
        j5(i11);
        return new C3627i(charSequence, i10, i11, new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                nf.Z v42;
                v42 = P.v4(cArr, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                return v42;
            }
        });
    }

    public static List r5(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return n5(charSequence, strArr, z10, i10);
    }

    @NotNull
    public static final CharSequence r6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return charSequence.subSequence(i10, charSequence.length());
            }
        }
        return "";
    }

    public static final boolean s3(@NotNull CharSequence charSequence, char c10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length() > 0 && C3624f.J(charSequence.charAt(C3(charSequence)), c10, z10);
    }

    public static final InterfaceC3312m<Vf.l> s4(CharSequence charSequence, String[] strArr, int i10, final boolean z10, int i11) {
        j5(i11);
        final List t10 = C14985q.t(strArr);
        return new C3627i(charSequence, i10, i11, new Mf.p() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                nf.Z w42;
                w42 = P.w4(List.this, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                return w42;
            }
        });
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final InterfaceC3312m<String> s5(CharSequence charSequence, C3639v regex, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        return regex.v(charSequence, i10);
    }

    @NotNull
    public static final CharSequence s6(@NotNull CharSequence charSequence, @NotNull char... chars) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!C14960A.w8(chars, charSequence.charAt(i10))) {
                return charSequence.subSequence(i10, charSequence.length());
            }
        }
        return "";
    }

    public static final boolean t3(@NotNull CharSequence charSequence, @NotNull CharSequence suffix, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(suffix, "suffix");
        return (!z10 && (charSequence instanceof String) && (suffix instanceof String)) ? C3617K.d2((String) charSequence, (String) suffix, false, 2, null) : x4(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z10);
    }

    public static InterfaceC3312m t4(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return r4(charSequence, cArr, i10, z10, i11);
    }

    @NotNull
    public static final InterfaceC3312m<String> t5(@NotNull final CharSequence charSequence, @NotNull char[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(delimiters, "delimiters");
        return Xf.K.N1(t4(charSequence, delimiters, 0, z10, i10, 2, null), new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String z52;
                z52 = P.z5(CharSequence.this, (Vf.l) obj);
                return z52;
            }
        });
    }

    @Ef.f
    public static final String t6(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return q6(str).toString();
    }

    public static boolean u3(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return s3(charSequence, c10, z10);
    }

    public static InterfaceC3312m u4(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return s4(charSequence, strArr, i10, z10, i11);
    }

    @NotNull
    public static final InterfaceC3312m<String> u5(@NotNull final CharSequence charSequence, @NotNull String[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(delimiters, "delimiters");
        return Xf.K.N1(u4(charSequence, delimiters, 0, z10, i10, 2, null), new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String y52;
                y52 = P.y5(CharSequence.this, (Vf.l) obj);
                return y52;
            }
        });
    }

    @NotNull
    public static final String u6(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        CharSequence charSequence;
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                charSequence = "";
                break;
            }
            if (!predicate.invoke(Character.valueOf(str.charAt(i10))).booleanValue()) {
                charSequence = str.subSequence(i10, str.length());
                break;
            }
            i10++;
        }
        return charSequence.toString();
    }

    public static boolean v3(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return t3(charSequence, charSequence2, z10);
    }

    public static final nf.Z v4(char[] cArr, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        kotlin.jvm.internal.M.p(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        int N32 = N3(DelimitedRangesSequence, cArr, i10, z10);
        if (N32 < 0) {
            return null;
        }
        return v0.a(Integer.valueOf(N32), 1);
    }

    public static InterfaceC3312m v5(CharSequence charSequence, C3639v regex, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        return regex.v(charSequence, i10);
    }

    @NotNull
    public static final String v6(@NotNull String str, @NotNull char... chars) {
        CharSequence charSequence;
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(chars, "chars");
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                charSequence = "";
                break;
            }
            if (!C14960A.w8(chars, str.charAt(i10))) {
                charSequence = str.subSequence(i10, str.length());
                break;
            }
            i10++;
        }
        return charSequence.toString();
    }

    @Nullable
    public static final nf.Z<Integer, String> w3(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(strings, "strings");
        return x3(charSequence, strings, i10, z10, false);
    }

    public static final nf.Z w4(List list, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        kotlin.jvm.internal.M.p(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        nf.Z<Integer, String> x32 = x3(DelimitedRangesSequence, list, i10, z10, false);
        if (x32 != null) {
            return v0.a(x32.e(), Integer.valueOf(x32.f().length()));
        }
        return null;
    }

    public static InterfaceC3312m w5(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return t5(charSequence, cArr, z10, i10);
    }

    public static final nf.Z<Integer, String> x3(CharSequence charSequence, Collection<String> collection, int i10, boolean z10, boolean z11) {
        String str;
        String str2;
        if (!z10 && collection.size() == 1) {
            String str3 = (String) pf.S.k5(collection);
            int L32 = !z11 ? L3(charSequence, str3, i10, false, 4, null) : a4(charSequence, str3, i10, false, 4, null);
            if (L32 < 0) {
                return null;
            }
            return v0.a(Integer.valueOf(L32), str3);
        }
        Vf.j lVar = !z11 ? new Vf.l(Vf.u.w(i10, 0), charSequence.length()) : Vf.u.m0(Vf.u.D(i10, C3(charSequence)), 0);
        if (charSequence instanceof String) {
            int c10 = lVar.c();
            int d10 = lVar.d();
            int g10 = lVar.g();
            if ((g10 > 0 && c10 <= d10) || (g10 < 0 && d10 <= c10)) {
                while (true) {
                    Iterator<String> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str2 = null;
                            break;
                        }
                        str2 = it.next();
                        String str4 = str2;
                        if (C3617K.u2(str4, 0, (String) charSequence, c10, str4.length(), z10)) {
                            break;
                        }
                    }
                    String str5 = str2;
                    if (str5 == null) {
                        if (c10 == d10) {
                            break;
                        }
                        c10 += g10;
                    } else {
                        return v0.a(Integer.valueOf(c10), str5);
                    }
                }
            }
        } else {
            int c11 = lVar.c();
            int d11 = lVar.d();
            int g11 = lVar.g();
            if ((g11 > 0 && c11 <= d11) || (g11 < 0 && d11 <= c11)) {
                while (true) {
                    Iterator<String> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            str = null;
                            break;
                        }
                        str = it2.next();
                        String str6 = str;
                        if (x4(str6, 0, charSequence, c11, str6.length(), z10)) {
                            break;
                        }
                    }
                    String str7 = str;
                    if (str7 == null) {
                        if (c11 == d11) {
                            break;
                        }
                        c11 += g11;
                    } else {
                        return v0.a(Integer.valueOf(c11), str7);
                    }
                }
            }
        }
        return null;
    }

    public static final boolean x4(@NotNull CharSequence charSequence, int i10, @NotNull CharSequence other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > other.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!C3624f.J(charSequence.charAt(i10 + i13), other.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static InterfaceC3312m x5(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return u5(charSequence, strArr, z10, i10);
    }

    public static nf.Z y3(CharSequence charSequence, Collection collection, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return w3(charSequence, collection, i10, z10);
    }

    @NotNull
    public static final CharSequence y4(@NotNull CharSequence charSequence, @NotNull CharSequence prefix) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        return F5(charSequence, prefix, false, 2, null) ? charSequence.subSequence(prefix.length(), charSequence.length()) : charSequence.subSequence(0, charSequence.length());
    }

    public static final String y5(CharSequence charSequence, Vf.l it) {
        kotlin.jvm.internal.M.p(it, "it");
        return J5(charSequence, it);
    }

    @Nullable
    public static final nf.Z<Integer, String> z3(@NotNull CharSequence charSequence, @NotNull Collection<String> strings, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(strings, "strings");
        return x3(charSequence, strings, i10, z10, true);
    }

    @NotNull
    public static final String z4(@NotNull String str, @NotNull CharSequence prefix) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        if (!F5(str, prefix, false, 2, null)) {
            return str;
        }
        String substring = str.substring(prefix.length());
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    public static final String z5(CharSequence charSequence, Vf.l it) {
        kotlin.jvm.internal.M.p(it, "it");
        return J5(charSequence, it);
    }
}
