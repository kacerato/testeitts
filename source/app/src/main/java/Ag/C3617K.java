package ag;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.v0;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14967d;
import pf.C14985q;

@t0({"SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,894:1\n1198#2,2:895\n1#3:897\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:895,2\n*E\n"})
public class C3617K extends C3616J {
    @Ef.f
    public static final String A1(byte[] bytes, int i10, int i11) {
        kotlin.jvm.internal.M.p(bytes, "bytes");
        return new String(bytes, i10, i11, C3625g.f32086b);
    }

    public static String A2(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return y2(str, c10, c11, z10);
    }

    @Ef.f
    public static final String B1(byte[] bytes, int i10, int i11, Charset charset) {
        kotlin.jvm.internal.M.p(bytes, "bytes");
        kotlin.jvm.internal.M.p(charset, "charset");
        return new String(bytes, i10, i11, charset);
    }

    public static String B2(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return z2(str, str2, str3, z10);
    }

    @Ef.f
    public static final String C1(byte[] bytes, Charset charset) {
        kotlin.jvm.internal.M.p(bytes, "bytes");
        kotlin.jvm.internal.M.p(charset, "charset");
        return new String(bytes, charset);
    }

    @NotNull
    public static final String C2(@NotNull String str, char c10, char c11, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        int K32 = P.K3(str, c10, 0, z10, 2, null);
        return K32 < 0 ? str : P.f5(str, K32, K32 + 1, String.valueOf(c11)).toString();
    }

    @Ef.f
    public static final String D1(char[] chars) {
        kotlin.jvm.internal.M.p(chars, "chars");
        return new String(chars);
    }

    @NotNull
    public static final String D2(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(oldValue, "oldValue");
        kotlin.jvm.internal.M.p(newValue, "newValue");
        int L32 = P.L3(str, oldValue, 0, z10, 2, null);
        return L32 < 0 ? str : P.f5(str, L32, oldValue.length() + L32, newValue).toString();
    }

    @Ef.f
    public static final String E1(char[] chars, int i10, int i11) {
        kotlin.jvm.internal.M.p(chars, "chars");
        return new String(chars, i10, i11);
    }

    public static String E2(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return C2(str, c10, c11, z10);
    }

    @Ef.f
    public static final String F1(int[] codePoints, int i10, int i11) {
        kotlin.jvm.internal.M.p(codePoints, "codePoints");
        return new String(codePoints, i10, i11);
    }

    public static String F2(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return D2(str, str2, str3, z10);
    }

    @InterfaceC14427o(message = "Use replaceFirstChar instead.", replaceWith = @InterfaceC14412g0(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @InterfaceC14429p(warningSince = "1.5")
    @NotNull
    public static final String G1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        Locale locale = Locale.getDefault();
        kotlin.jvm.internal.M.o(locale, "getDefault(...)");
        return H1(str, locale);
    }

    @NotNull
    public static final List<String> G2(@NotNull CharSequence charSequence, @NotNull Pattern regex, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(regex, "regex");
        P.j5(i10);
        if (i10 == 0) {
            i10 = -1;
        }
        String[] split = regex.split(charSequence, i10);
        kotlin.jvm.internal.M.o(split, "split(...)");
        return C14985q.t(split);
    }

    @InterfaceC14427o(message = "Use replaceFirstChar instead.", replaceWith = @InterfaceC14412g0(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @NotNull
    @Ef.i
    @InterfaceC14422l0(version = "1.4")
    public static final String H1(@NotNull String str, @NotNull Locale locale) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(locale, "locale");
        if (str.length() <= 0) {
            return str;
        }
        char charAt = str.charAt(0);
        if (!Character.isLowerCase(charAt)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char titleCase = Character.toTitleCase(charAt);
        if (titleCase != Character.toUpperCase(charAt)) {
            sb2.append(titleCase);
        } else {
            String substring = str.substring(0, 1);
            kotlin.jvm.internal.M.o(substring, "substring(...)");
            kotlin.jvm.internal.M.n(substring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = substring.toUpperCase(locale);
            kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
            sb2.append(upperCase);
        }
        String substring2 = str.substring(1);
        kotlin.jvm.internal.M.o(substring2, "substring(...)");
        sb2.append(substring2);
        return sb2.toString();
    }

    public static List H2(CharSequence charSequence, Pattern pattern, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return G2(charSequence, pattern, i10);
    }

    @Ef.f
    public static final int I1(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.codePointAt(i10);
    }

    public static final boolean I2(@NotNull String str, @NotNull String prefix, int i10, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        return !z10 ? str.startsWith(prefix, i10) : u2(str, i10, prefix, 0, prefix.length(), z10);
    }

    @Ef.f
    public static final int J1(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.codePointBefore(i10);
    }

    public static boolean J2(@NotNull String str, @NotNull String prefix, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        return !z10 ? str.startsWith(prefix) : u2(str, 0, prefix, 0, prefix.length(), z10);
    }

    @Ef.f
    public static final int K1(String str, int i10, int i11) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.codePointCount(i10, i11);
    }

    public static boolean K2(String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return I2(str, str2, i10, z10);
    }

    public static final int L1(@NotNull String str, @NotNull String other, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        return z10 ? str.compareToIgnoreCase(other) : str.compareTo(other);
    }

    public static boolean L2(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return J2(str, str2, z10);
    }

    public static int M1(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return L1(str, str2, z10);
    }

    @Ef.f
    public static final String M2(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String substring = str.substring(i10);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final String N1(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return new String(cArr);
    }

    @Ef.f
    public static final String N2(String str, int i10, int i11) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String substring = str.substring(i10, i11);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        return substring;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final String O1(@NotNull char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        AbstractC14967d.f103841b.a(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    @Ef.f
    public static final byte[] O2(String str, Charset charset) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        kotlin.jvm.internal.M.o(bytes, "getBytes(...)");
        return bytes;
    }

    public static String P1(char[] cArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = cArr.length;
        }
        return O1(cArr, i10, i11);
    }

    public static byte[] P2(String str, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        kotlin.jvm.internal.M.o(bytes, "getBytes(...)");
        return bytes;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean Q1(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return (!(charSequence instanceof String) || charSequence2 == null) ? P.r3(charSequence, charSequence2) : ((String) charSequence).contentEquals(charSequence2);
    }

    @Ef.f
    public static final char[] Q2(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        char[] charArray = str.toCharArray();
        kotlin.jvm.internal.M.o(charArray, "toCharArray(...)");
        return charArray;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final boolean R1(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z10) {
        return z10 ? P.q3(charSequence, charSequence2) : Q1(charSequence, charSequence2);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final char[] R2(@NotNull String str, int i10, int i11) {
        kotlin.jvm.internal.M.p(str, "<this>");
        AbstractC14967d.f103841b.a(i10, i11, str.length());
        char[] cArr = new char[i11 - i10];
        str.getChars(i10, i11, cArr, 0);
        return cArr;
    }

    @Ef.f
    public static final boolean S1(String str, CharSequence charSequence) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(charSequence, "charSequence");
        return str.contentEquals(charSequence);
    }

    @Ef.f
    @InterfaceC14394D
    public static final char[] S2(String str, char[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        str.getChars(i11, i12, destination, i10);
        return destination;
    }

    @Ef.f
    public static final boolean T1(String str, StringBuffer stringBuilder) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(stringBuilder, "stringBuilder");
        return str.contentEquals(stringBuilder);
    }

    public static char[] T2(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return R2(str, i10, i11);
    }

    @InterfaceC14427o(message = "Use replaceFirstChar instead.", replaceWith = @InterfaceC14412g0(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @InterfaceC14429p(warningSince = "1.5")
    @NotNull
    public static final String U1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        String substring = str.substring(0, 1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        Locale locale = Locale.getDefault();
        kotlin.jvm.internal.M.o(locale, "getDefault(...)");
        kotlin.jvm.internal.M.n(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(locale);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        sb2.append(lowerCase);
        String substring2 = str.substring(1);
        kotlin.jvm.internal.M.o(substring2, "substring(...)");
        sb2.append(substring2);
        return sb2.toString();
    }

    public static char[] U2(String str, char[] destination, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = str.length();
        }
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        str.getChars(i11, i12, destination, i10);
        return destination;
    }

    @InterfaceC14427o(message = "Use replaceFirstChar instead.", replaceWith = @InterfaceC14412g0(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @NotNull
    @Ef.i
    @InterfaceC14422l0(version = "1.4")
    public static final String V1(@NotNull String str, @NotNull Locale locale) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(locale, "locale");
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        String substring = str.substring(0, 1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        kotlin.jvm.internal.M.n(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(locale);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        sb2.append(lowerCase);
        String substring2 = str.substring(1);
        kotlin.jvm.internal.M.o(substring2, "substring(...)");
        sb2.append(substring2);
        return sb2.toString();
    }

    @Ef.f
    @InterfaceC14427o(message = "Use lowercase() instead.", replaceWith = @InterfaceC14412g0(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final String V2(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String lowerCase = str.toLowerCase();
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static String W1(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return new String(bArr, C3625g.f32086b);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use lowercase() instead.", replaceWith = @InterfaceC14412g0(expression = "lowercase(locale)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final String W2(String str, Locale locale) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final String X1(@NotNull byte[] bArr, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        AbstractC14967d.f103841b.a(i10, i11, bArr.length);
        if (!z10) {
            return new String(bArr, i10, i11 - i10, C3625g.f32086b);
        }
        CharsetDecoder newDecoder = C3625g.f32086b.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        String charBuffer = newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr, i10, i11 - i10)).toString();
        kotlin.jvm.internal.M.o(charBuffer, "toString(...)");
        return charBuffer;
    }

    @Ef.f
    public static final Pattern X2(String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        Pattern compile = Pattern.compile(str, i10);
        kotlin.jvm.internal.M.o(compile, "compile(...)");
        return compile;
    }

    public static String Y1(byte[] bArr, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return X1(bArr, i10, i11, z10);
    }

    public static Pattern Y2(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        kotlin.jvm.internal.M.p(str, "<this>");
        Pattern compile = Pattern.compile(str, i10);
        kotlin.jvm.internal.M.o(compile, "compile(...)");
        return compile;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final byte[] Z1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        byte[] bytes = str.getBytes(C3625g.f32086b);
        kotlin.jvm.internal.M.o(bytes, "getBytes(...)");
        return bytes;
    }

    @Ef.f
    @InterfaceC14427o(message = "Use uppercase() instead.", replaceWith = @InterfaceC14412g0(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final String Z2(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String upperCase = str.toUpperCase();
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final byte[] a2(@NotNull String str, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        AbstractC14967d.f103841b.a(i10, i11, str.length());
        if (!z10) {
            String substring = str.substring(i10, i11);
            kotlin.jvm.internal.M.o(substring, "substring(...)");
            Charset charset = C3625g.f32086b;
            kotlin.jvm.internal.M.n(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = substring.getBytes(charset);
            kotlin.jvm.internal.M.o(bytes, "getBytes(...)");
            return bytes;
        }
        CharsetEncoder newEncoder = C3625g.f32086b.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        ByteBuffer encode = newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).encode(CharBuffer.wrap(str, i10, i11));
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            int remaining = encode.remaining();
            byte[] array = encode.array();
            kotlin.jvm.internal.M.m(array);
            if (remaining == array.length) {
                byte[] array2 = encode.array();
                kotlin.jvm.internal.M.m(array2);
                return array2;
            }
        }
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    @Ef.f
    @InterfaceC14427o(message = "Use uppercase() instead.", replaceWith = @InterfaceC14412g0(expression = "uppercase(locale)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final String a3(String str, Locale locale) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public static byte[] b2(String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return a2(str, i10, i11, z10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String b3(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String upperCase = str.toUpperCase(Locale.ROOT);
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public static boolean c2(@NotNull String str, @NotNull String suffix, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(suffix, "suffix");
        return !z10 ? str.endsWith(suffix) : u2(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String c3(String str, Locale locale) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public static boolean d2(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return c2(str, str2, z10);
    }

    public static boolean e2(@Nullable String str, @Nullable String str2, boolean z10) {
        return str == null ? str2 == null : !z10 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static boolean f2(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return e2(str, str2, z10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String g2(String str, Locale locale, Object... args) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(args, "args");
        String format = String.format(locale, str, Arrays.copyOf(args, args.length));
        kotlin.jvm.internal.M.o(format, "format(...)");
        return format;
    }

    @Ef.f
    public static final String h2(String str, Object... args) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(args, "args");
        String format = String.format(str, Arrays.copyOf(args, args.length));
        kotlin.jvm.internal.M.o(format, "format(...)");
        return format;
    }

    @Ef.f
    public static final String i2(v0 v0Var, String format, Object... args) {
        kotlin.jvm.internal.M.p(v0Var, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        kotlin.jvm.internal.M.p(args, "args");
        String format2 = String.format(format, Arrays.copyOf(args, args.length));
        kotlin.jvm.internal.M.o(format2, "format(...)");
        return format2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String j2(v0 v0Var, Locale locale, String format, Object... args) {
        kotlin.jvm.internal.M.p(v0Var, "<this>");
        kotlin.jvm.internal.M.p(format, "format");
        kotlin.jvm.internal.M.p(args, "args");
        String format2 = String.format(locale, format, Arrays.copyOf(args, args.length));
        kotlin.jvm.internal.M.o(format2, "format(...)");
        return format2;
    }

    @NotNull
    public static final Comparator<String> k2(@NotNull v0 v0Var) {
        kotlin.jvm.internal.M.p(v0Var, "<this>");
        Comparator<String> CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        kotlin.jvm.internal.M.o(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    @Ef.f
    public static final String l2(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String intern = str.intern();
        kotlin.jvm.internal.M.o(intern, "intern(...)");
        return intern;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String m2(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String n2(String str, Locale locale) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @Ef.f
    public static final int o2(String str, char c10, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.indexOf(c10, i10);
    }

    @Ef.f
    public static final int p2(String str, String str2, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(str2, "str");
        return str.indexOf(str2, i10);
    }

    @Ef.f
    public static final int q2(String str, char c10, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.lastIndexOf(c10, i10);
    }

    @Ef.f
    public static final int r2(String str, String str2, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(str2, "str");
        return str.lastIndexOf(str2, i10);
    }

    @Ef.f
    public static final int s2(String str, int i10, int i11) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return str.offsetByCodePoints(i10, i11);
    }

    public static final boolean t2(@NotNull CharSequence charSequence, int i10, @NotNull CharSequence other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        return ((charSequence instanceof String) && (other instanceof String)) ? u2((String) charSequence, i10, (String) other, i11, i12, z10) : P.x4(charSequence, i10, other, i11, i12, z10);
    }

    public static boolean u2(@NotNull String str, int i10, @NotNull String other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        return !z10 ? str.regionMatches(i10, other, i11, i12) : str.regionMatches(z10, i10, other, i11, i12);
    }

    public static boolean v2(CharSequence charSequence, int i10, CharSequence charSequence2, int i11, int i12, boolean z10, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z10 = false;
        }
        return t2(charSequence, i10, charSequence2, i11, i12, z10);
    }

    public static boolean w2(String str, int i10, String str2, int i11, int i12, boolean z10, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z10 = false;
        }
        return u2(str, i10, str2, i11, i12, z10);
    }

    @Ef.f
    public static final String x1(StringBuffer stringBuffer) {
        kotlin.jvm.internal.M.p(stringBuffer, "stringBuffer");
        return new String(stringBuffer);
    }

    @NotNull
    public static String x2(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
        }
        if (i10 == 0) {
            return "";
        }
        int i11 = 1;
        if (i10 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char charAt = charSequence.charAt(0);
            char[] cArr = new char[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                cArr[i12] = charAt;
            }
            return new String(cArr);
        }
        StringBuilder sb2 = new StringBuilder(charSequence.length() * i10);
        if (1 <= i10) {
            while (true) {
                sb2.append(charSequence);
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.M.m(sb3);
        return sb3;
    }

    @Ef.f
    public static final String y1(StringBuilder stringBuilder) {
        kotlin.jvm.internal.M.p(stringBuilder, "stringBuilder");
        return new String(stringBuilder);
    }

    @NotNull
    public static final String y2(@NotNull String str, char c10, char c11, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (!z10) {
            String replace = str.replace(c10, c11);
            kotlin.jvm.internal.M.o(replace, "replace(...)");
            return replace;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (C3624f.J(charAt, c10, z10)) {
                charAt = c11;
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    @Ef.f
    public static final String z1(byte[] bytes) {
        kotlin.jvm.internal.M.p(bytes, "bytes");
        return new String(bytes, C3625g.f32086b);
    }

    @NotNull
    public static final String z2(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(oldValue, "oldValue");
        kotlin.jvm.internal.M.p(newValue, "newValue");
        int i10 = 0;
        int H32 = P.H3(str, oldValue, 0, z10);
        if (H32 < 0) {
            return str;
        }
        int length = oldValue.length();
        int w10 = Vf.u.w(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb2 = new StringBuilder(length2);
        do {
            sb2.append((CharSequence) str, i10, H32);
            sb2.append(newValue);
            i10 = H32 + length;
            if (H32 >= str.length()) {
                break;
            }
            H32 = P.H3(str, oldValue, H32 + w10, z10);
        } while (H32 > 0);
        sb2.append((CharSequence) str, i10, str.length());
        String sb3 = sb2.toString();
        kotlin.jvm.internal.M.o(sb3, "toString(...)");
        return sb3;
    }
}
