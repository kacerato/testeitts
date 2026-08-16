package p000if;

import android.text.format.DateUtils;
import com.jme3.math.Matrix3f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.JavadocConstants;
import w2.C15883c;

public final class C13724t {

    public static final Logger f92158a = Logger.getLogger(C13724t.class.getName());

    public static final Pattern f92159b = Pattern.compile("[Ee][+-]?\\d+$");

    public static final String[] f92160c = {"X", "Y", Signature.SIG_BOOLEAN};

    public static final boolean f92161d = false;

    public static String A(String str) {
        Matcher matcher = f92159b.matcher(str);
        if (matcher.find()) {
            int start = matcher.start();
            str = A(str.substring(0, start)) + str.substring(start);
        } else if (str.contains(".")) {
            int length = str.length();
            char[] charArray = str.toCharArray();
            while (length >= 1 && charArray[length - 1] == '0') {
                length--;
            }
            if (length >= 1 && charArray[length - 1] == '.') {
                length--;
            }
            str = str.substring(0, length);
        }
        return "-0".equals(str) ? "0" : str;
    }

    public static String B(CharSequence charSequence) {
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            if (z10) {
                if (charAt == '\\' || charAt == '\"') {
                    sb2.append(charAt);
                } else if (charAt == 'n') {
                    sb2.append('\n');
                } else {
                    sb2.append('\t');
                }
                z10 = false;
            } else if (charAt == '\\') {
                z10 = true;
            } else {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    public static List<String> a(Collection<String> collection, String str, List<String> list) {
        C13702E.t(collection, "input collection");
        C13702E.t(str, "prefix");
        if (list == null) {
            list = new ArrayList(collection.size());
        }
        for (String str2 : collection) {
            if (str2.startsWith(str)) {
                list.add(str2);
            }
        }
        return list;
    }

    public static int b(String str) {
        int i10 = 0;
        while (true) {
            String[] strArr = f92160c;
            if (i10 >= strArr.length) {
                throw new IllegalArgumentException(s(str));
            }
            if (strArr[i10].equals(str)) {
                return i10;
            }
            i10++;
        }
    }

    public static String c(int i10) {
        C13702E.a(i10, "axis index");
        return f92160c[i10];
    }

    public static void d(List<String> list, String str) {
        C13702E.t(list, "list");
        for (String str2 : list) {
            Iterator<String> it = list.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (it.next().equals(str2)) {
                    i10++;
                }
            }
            int i11 = 1;
            if (i10 > 1) {
                int size = list.size();
                for (int i12 = 0; i12 < size; i12++) {
                    String str3 = list.get(i12);
                    if (str3.equals(str2)) {
                        String format = String.format("%s%s%d", str3, str, Integer.valueOf(i11));
                        i11++;
                        list.set(i12, format);
                    }
                }
            }
        }
    }

    public static String e(float f10) {
        return A(String.format(Locale.US, DateUtils.YEAR_FORMAT_TWO_DIGITS, Float.valueOf(f10)));
    }

    public static String f(float f10) {
        return A(String.format(Locale.US, "%.2f", Float.valueOf(f10)));
    }

    public static String g(float f10) {
        return A(String.format(Locale.US, "%.3f", Float.valueOf(f10)));
    }

    public static String h(Matrix3f matrix3f) {
        if (matrix3f == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder(80);
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                sb2.append(e(matrix3f.get(i10, i11)));
                if (i10 < 2 || i11 < 2) {
                    sb2.append(C15883c.f126249O);
                }
            }
            if (i10 < 2) {
                sb2.append(C15883c.f126249O);
            }
        }
        return sb2.toString();
    }

    public static String i(CharSequence charSequence) {
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length + 10);
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            if (charAt == '\t') {
                sb2.append("\\t");
            } else if (charAt == '\n') {
                sb2.append("\\n");
            } else if (charAt == '\"') {
                sb2.append("\\\"");
            } else if (charAt != '\\') {
                sb2.append(charAt);
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    public static int j(String[] strArr, String str) {
        C13702E.t(strArr, "array");
        C13702E.t(str, "value");
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (str.equals(strArr[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public static String k(Collection<String> collection) {
        String[] z10 = z(collection);
        int length = z10.length;
        CharSequence charSequence = "";
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str = z10[i10];
            i10++;
            for (int i12 = i10; i12 < length; i12++) {
                int y10 = y(str, z10[i12]);
                if (y10 > i11) {
                    charSequence = str.subSequence(0, y10);
                    i11 = y10;
                }
            }
        }
        return charSequence.toString();
    }

    public static String l(String str) {
        if (str.isEmpty()) {
            return str;
        }
        return str.substring(0, 1).toLowerCase(Locale.ROOT) + str.substring(1);
    }

    public static Map<String, String> m(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (treeMap.containsKey(key)) {
                throw new IllegalArgumentException("Non-invertible map.");
            }
            treeMap.put(entry.getValue(), key);
        }
        return treeMap;
    }

    public static boolean n(List<String> list) {
        int size = list.size();
        int i10 = 0;
        while (i10 < size - 1) {
            String str = list.get(i10);
            i10++;
            if (str.compareTo(list.get(i10)) >= 0) {
                return false;
            }
        }
        return true;
    }

    public static String o(CharSequence charSequence, Iterable iterable) {
        C13702E.t(charSequence, "separator");
        C13702E.t(iterable, "list");
        StringBuilder sb2 = new StringBuilder(80);
        for (Object obj : iterable) {
            if (obj != null) {
                if (sb2.length() > 0) {
                    sb2.append(charSequence);
                }
                sb2.append(obj);
            }
        }
        return sb2.toString();
    }

    public static String p(Iterable iterable) {
        C13702E.t(iterable, "objects");
        return o(" ", iterable);
    }

    public static String q(Object[] objArr) {
        C13702E.t(objArr, "array");
        StringBuilder sb2 = new StringBuilder(80);
        for (Object obj : objArr) {
            if (obj != null) {
                if (sb2.length() > 0) {
                    sb2.append(C15883c.f126249O);
                }
                sb2.append(obj);
            }
        }
        return sb2.toString();
    }

    public static void r(Collection<String> collection, String str) {
        C13702E.t(collection, "collection");
        C13702E.t(str, "prefix");
        for (String str2 : z(collection)) {
            if (!str2.startsWith(str)) {
                collection.remove(str2);
            }
        }
    }

    public static String s(CharSequence charSequence) {
        if (charSequence == null) {
            return "null";
        }
        return JavadocConstants.ANCHOR_PREFIX_END + i(charSequence) + JavadocConstants.ANCHOR_PREFIX_END;
    }

    public static String t(CharSequence charSequence) {
        if (charSequence == null) {
            return "(no name)";
        }
        return JavadocConstants.ANCHOR_PREFIX_END + i(charSequence) + JavadocConstants.ANCHOR_PREFIX_END;
    }

    public static void u(Collection<String> collection, int i10) {
        C13702E.F(i10, "size goal");
        while (collection.size() > i10) {
            String k10 = k(collection);
            if (k10.isEmpty()) {
                return;
            }
            for (String str : z(collection)) {
                if (str.startsWith(k10)) {
                    collection.remove(str);
                }
            }
            collection.add(k10);
        }
    }

    public static String v(String str, String str2) {
        C13702E.t(str2, "prefix");
        if (str.startsWith(str2)) {
            return str.substring(str2.length());
        }
        f92158a.log(Level.SEVERE, "input={0}, prefix={1}", new Object[]{s(str), s(str2)});
        throw new IllegalArgumentException("input must start with prefix.");
    }

    public static String w(String str, String str2) {
        C13702E.t(str2, "suffix");
        if (str.endsWith(str2)) {
            return str.substring(0, str.length() - str2.length());
        }
        f92158a.log(Level.SEVERE, "input={0}, suffix={1}", new Object[]{s(str), s(str2)});
        throw new IllegalArgumentException("input must end with suffix.");
    }

    public static String x(CharSequence charSequence, int i10) {
        C13702E.t(charSequence, "sequence");
        C13702E.q(i10, "number of times");
        StringBuilder sb2 = new StringBuilder(charSequence.length() * i10);
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(charSequence);
        }
        return sb2.toString();
    }

    public static int y(CharSequence charSequence, CharSequence charSequence2) {
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i10 = 0;
        while (i10 < min && charSequence.charAt(i10) == charSequence2.charAt(i10)) {
            i10++;
        }
        return i10;
    }

    public static String[] z(Collection<String> collection) {
        return (String[]) collection.toArray(new String[0]);
    }
}
