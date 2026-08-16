package com.android.tools.r8.internal;

import fd.C13208a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class C10656zq0 {

    public static final char[] f54545a = new char[0];

    public static final String[] f54546b = new String[0];

    public static final String f54547c = System.getProperty("line.separator");

    public static final boolean f54548d = true;

    public enum a {
        f54549b,
        f54550c,
        f54551d,
        f54552e;

        a() {
        }

        public final String a() {
            int i10 = AbstractC10489yq0.f54167a[ordinal()];
            if (i10 == 1) {
                return "(";
            }
            if (i10 == 2) {
                return "[";
            }
            if (i10 == 3) {
                return "{";
            }
            if (i10 == 4) {
                return "";
            }
            throw new C5417Jv0("Invalid brace type: " + ((Object) this));
        }

        public final String b() {
            int i10 = AbstractC10489yq0.f54167a[ordinal()];
            if (i10 == 1) {
                return ")";
            }
            if (i10 == 2) {
                return "]";
            }
            if (i10 == 3) {
                return VectorFormat.DEFAULT_SUFFIX;
            }
            if (i10 == 4) {
                return "";
            }
            throw new C5417Jv0("Invalid brace type: " + ((Object) this));
        }
    }

    public static void a(String str, char c10, Consumer consumer) {
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) == c10) {
                consumer.accept(str.substring(i10, i11));
                i10 = i11 + 1;
            }
        }
        consumer.accept(str.substring(i10));
    }

    public static void b(StringBuilder sb2, String str, int i10) {
        sb2.append(str);
        for (int length = str.length(); length < i10; length++) {
            sb2.append(" ");
        }
    }

    public static String c(String... strArr) {
        return a("\n", Arrays.asList(strArr));
    }

    public static HashSet d(String str) {
        final HashSet hashSet = new HashSet();
        a(str, false, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add((String) obj);
            }
        });
        return hashSet;
    }

    public static String e(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (31 >= charAt || charAt >= '\u007f') {
                sb2.append("\\u");
                sb2.append(a((int) charAt, 4, false));
            } else {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    public static String f(String str) {
        return str.toLowerCase(Locale.ROOT);
    }

    public static String g(String str) {
        return str.toUpperCase(Locale.ROOT);
    }

    public static String h(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length && a(str.charAt(i10))) {
            i10++;
        }
        while (true) {
            int i11 = length - 1;
            if (i11 <= i10 || !a(str.charAt(i11))) {
                break;
            }
            length--;
        }
        return (i10 > 0 || length < str.length()) ? str.substring(i10, length) : str;
    }

    public static String i(String str) {
        String replace = str.replace(C13208a.f86201f, "\n");
        String str2 = f54547c;
        if (str2.equals(C13208a.f86201f)) {
            return replace.replace("\n", C13208a.f86201f);
        }
        if (f54548d || str2.equals("\n")) {
            return replace;
        }
        throw new AssertionError();
    }

    public static List<String> c(String str) {
        return a(str, false);
    }

    public static String b(String... strArr) {
        return a((List<String>) Arrays.asList(strArr));
    }

    public static List<String> a(String str, char c10) {
        ArrayList arrayList = new ArrayList();
        a(str, c10, new C8730oF1(arrayList));
        return arrayList;
    }

    public static String b(int i10, int i11) {
        return a(i11, Integer.toString(i10));
    }

    public static String b(String str) {
        return JavadocConstants.ANCHOR_PREFIX_END + str + JavadocConstants.ANCHOR_PREFIX_END;
    }

    public static String[] a(String str, char c10, final int i10) {
        if (!f54548d && i10 <= 1) {
            throw new AssertionError();
        }
        final String[] strArr = new String[i10];
        final IH ih2 = new IH(0);
        a(str, c10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10656zq0.a(IH.this, i10, strArr, (String) obj);
            }
        });
        if (i10 == ih2.a()) {
            return strArr;
        }
        return null;
    }

    public static void a(IH ih2, int i10, String[] strArr, String str) {
        int b10 = ih2.b();
        if (b10 < i10) {
            strArr[b10] = str;
        }
    }

    public static boolean a(StringBuilder sb2, String str, Object obj) {
        if (obj == null) {
            return false;
        }
        String obj2 = obj.toString();
        if (obj2.isEmpty()) {
            return false;
        }
        if (str != null) {
            sb2.append(str);
        }
        sb2.append(obj2);
        return true;
    }

    public static void a(StringBuilder sb2, String str, int i10) {
        for (int length = str.length(); length < i10; length++) {
            sb2.append(" ");
        }
        sb2.append(str);
    }

    public static <T> StringBuilder a(StringBuilder sb2, Collection<T> collection) {
        return a(sb2, collection, ", ", a.f54549b);
    }

    public static <T> StringBuilder a(StringBuilder sb2, Iterable<T> iterable, String str, a aVar) {
        sb2.append(aVar.a());
        boolean z10 = true;
        for (T t10 : iterable) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(str);
            }
            sb2.append((Object) t10);
        }
        sb2.append(aVar.b());
        return sb2;
    }

    public static void a(StringBuilder sb2, String... strArr) {
        for (String str : strArr) {
            sb2.append(str);
            sb2.append(f54547c);
        }
    }

    public static String a(String str, String... strArr) {
        return a(str, (Iterable) Arrays.asList(strArr));
    }

    public static <T> String a(String str, Iterable<T> iterable) {
        return a(str, iterable, a.f54552e);
    }

    public static <T> String a(String str, Iterable<T> iterable, Function<T, String> function) {
        return a(str, iterable, function, a.f54552e);
    }

    public static String a(Stream stream, Function function) {
        return a(" <OR> ", (Iterable) stream.collect(Collectors.toList()), function, a.f54552e);
    }

    public static <T> String a(String str, T[] tArr, Function<T, String> function, a aVar) {
        return a(str, Arrays.asList(tArr), function, aVar);
    }

    public static <T> String a(String str, Iterable<T> iterable, a aVar) {
        return a(str, iterable, new Function() {
            @Override
            public final Object apply(Object obj) {
                return obj.toString();
            }
        }, aVar);
    }

    public static <T> String a(String str, Iterable<T> iterable, Function<T, String> function, a aVar) {
        StringBuilder sb2 = new StringBuilder();
        a(sb2, C9073qK.b(iterable, function), str, aVar);
        return sb2.toString();
    }

    public static String a(List<String> list) {
        return a(f54547c, (List) list);
    }

    public static String a(String str, List list) {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static String a(String... strArr) {
        return a(f54547c, strArr);
    }

    public static <T> String a(Collection<T> collection) {
        return a(f54547c, collection, a.f54552e);
    }

    public static List<String> a(String str, boolean z10) {
        ArrayList arrayList = new ArrayList();
        a(str, z10, new C8730oF1(arrayList));
        return arrayList;
    }

    public static void a(String str, boolean z10, Consumer consumer) {
        int i10;
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            char charAt = str.charAt(i11);
            if (charAt != '\r' || (i10 = i11 + 1) >= length || str.charAt(i10) != '\n') {
                if (charAt != '\n') {
                    i11++;
                } else {
                    i10 = i11;
                }
            }
            consumer.accept(str.substring(i12, i11));
            i12 = i10 + 1;
            i11 = i10;
            i11++;
        }
        if (i12 < length) {
            String substring = str.substring(i12);
            if (z10 || !substring.isEmpty()) {
                consumer.accept(substring);
            }
        }
    }

    public static String a(int i10, String str) {
        if (!f54548d && i10 > 16) {
            throw new AssertionError();
        }
        int length = i10 - str.length();
        if (length <= 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "0000000000000000", 0, length);
        sb2.append(str);
        return sb2.toString();
    }

    public static String a(int i10, int i11) {
        return a(i10, i11, true);
    }

    public static String a(int i10, int i11, boolean z10) {
        boolean z11 = f54548d;
        if (!z11 && (i11 < 0 || i11 > 8)) {
            throw new AssertionError();
        }
        String str = z10 ? "0x" : "";
        String hexString = Integer.toHexString(i10);
        if (i10 >= 0) {
            return str + a(i11, hexString);
        }
        if (!z11 && hexString.length() != 8) {
            throw new AssertionError();
        }
        return str + hexString;
    }

    public static String a(int i10, long j10) {
        boolean z10 = f54548d;
        if (!z10 && (i10 < 0 || i10 > 16)) {
            throw new AssertionError();
        }
        String hexString = Long.toHexString(j10);
        if (j10 >= 0) {
            return "0x" + a(i10, hexString);
        }
        if (!z10 && hexString.length() != 16) {
            throw new AssertionError();
        }
        return "0x" + hexString;
    }

    public static String a(String str, int i10) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            i10--;
            if (i10 >= 0) {
                sb2.append(str);
            } else {
                return sb2.toString();
            }
        }
    }

    public static boolean a(int i10) {
        return Character.isWhitespace(i10) || i10 == 65279;
    }

    public static String a(String str, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            str = a(str, entry.getKey(), entry.getValue());
        }
        return str;
    }

    public static String a(String str, String str2, String str3) {
        return str.replaceAll(Pattern.quote(str2), Matcher.quoteReplacement(str3));
    }

    public static String a(String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        return str.substring(0, 1).toUpperCase(Locale.ROOT) + str.substring(1);
    }

    public static int a(String str, String str2) {
        int indexOf = str.indexOf(str2);
        int i10 = 0;
        while (indexOf > -1) {
            i10++;
            indexOf = str.indexOf(str2, indexOf + 1);
        }
        return i10;
    }
}
