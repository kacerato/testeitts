package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;

public final class u {

    public final String[] f99444a;

    public static final class a {

        public final List<String> f99445a = new ArrayList(20);

        public a a(String str) {
            int indexOf = str.indexOf(b3.s.f32937c);
            if (indexOf != -1) {
                return b(str.substring(0, indexOf).trim(), str.substring(indexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        public a b(String str, String str2) {
            u.b(str);
            u.c(str2, str);
            return f(str, str2);
        }

        public a c(String str, Date date) {
            if (date != null) {
                b(str, Lg.d.a(date));
                return this;
            }
            throw new NullPointerException("value for name " + str + " == null");
        }

        public a d(u uVar) {
            int l10 = uVar.l();
            for (int i10 = 0; i10 < l10; i10++) {
                f(uVar.g(i10), uVar.n(i10));
            }
            return this;
        }

        public a e(String str) {
            int indexOf = str.indexOf(b3.s.f32937c, 1);
            return indexOf != -1 ? f(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(b3.s.f32937c) ? f("", str.substring(1)) : f("", str);
        }

        public a f(String str, String str2) {
            this.f99445a.add(str);
            this.f99445a.add(str2.trim());
            return this;
        }

        public a g(String str, String str2) {
            u.b(str);
            return f(str, str2);
        }

        public u h() {
            return new u(this);
        }

        public String i(String str) {
            for (int size = this.f99445a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f99445a.get(size))) {
                    return this.f99445a.get(size + 1);
                }
            }
            return null;
        }

        public a j(String str) {
            int i10 = 0;
            while (i10 < this.f99445a.size()) {
                if (str.equalsIgnoreCase(this.f99445a.get(i10))) {
                    this.f99445a.remove(i10);
                    this.f99445a.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        public a k(String str, String str2) {
            u.b(str);
            u.c(str2, str);
            j(str);
            f(str, str2);
            return this;
        }

        public a l(String str, Date date) {
            if (date != null) {
                k(str, Lg.d.a(date));
                return this;
            }
            throw new NullPointerException("value for name " + str + " == null");
        }
    }

    public u(a aVar) {
        List<String> list = aVar.f99445a;
        this.f99444a = (String[]) list.toArray(new String[list.size()]);
    }

    public static void b(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt <= ' ' || charAt >= '\u007f') {
                throw new IllegalArgumentException(Gg.c.s("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str));
            }
        }
    }

    public static void c(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("value for name " + str2 + " == null");
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if ((charAt <= 31 && charAt != '\t') || charAt >= '\u007f') {
                throw new IllegalArgumentException(Gg.c.s("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str2, str));
            }
        }
    }

    public static String e(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static u j(Map<String, String> map) {
        if (map == null) {
            throw new NullPointerException("headers == null");
        }
        String[] strArr = new String[map.size() * 2];
        int i10 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null || entry.getValue() == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            String trim = entry.getKey().trim();
            String trim2 = entry.getValue().trim();
            b(trim);
            c(trim2, trim);
            strArr[i10] = trim;
            strArr[i10 + 1] = trim2;
            i10 += 2;
        }
        return new u(strArr);
    }

    public static u k(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        }
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i10 = 0; i10 < strArr2.length; i10++) {
            String str = strArr2[i10];
            if (str == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i10] = str.trim();
        }
        for (int i11 = 0; i11 < strArr2.length; i11 += 2) {
            String str2 = strArr2[i11];
            String str3 = strArr2[i11 + 1];
            b(str2);
            c(str3, str2);
        }
        return new u(strArr2);
    }

    public long a() {
        String[] strArr = this.f99444a;
        long length = strArr.length * 2;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            length += this.f99444a[i10].length();
        }
        return length;
    }

    @Nullable
    public String d(String str) {
        return e(this.f99444a, str);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof u) && Arrays.equals(((u) obj).f99444a, this.f99444a);
    }

    @Nullable
    public Date f(String str) {
        String d10 = d(str);
        if (d10 != null) {
            return Lg.d.b(d10);
        }
        return null;
    }

    public String g(int i10) {
        return this.f99444a[i10 * 2];
    }

    public Set<String> h() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int l10 = l();
        for (int i10 = 0; i10 < l10; i10++) {
            treeSet.add(g(i10));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f99444a);
    }

    public a i() {
        a aVar = new a();
        Collections.addAll(aVar.f99445a, this.f99444a);
        return aVar;
    }

    public int l() {
        return this.f99444a.length / 2;
    }

    public Map<String, List<String>> m() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int l10 = l();
        for (int i10 = 0; i10 < l10; i10++) {
            String lowerCase = g(i10).toLowerCase(Locale.US);
            Collection collection = (List) treeMap.get(lowerCase);
            if (collection == null) {
                collection = new ArrayList(2);
                treeMap.put(lowerCase, collection);
            }
            collection.add(n(i10));
        }
        return treeMap;
    }

    public String n(int i10) {
        return this.f99444a[(i10 * 2) + 1];
    }

    public List<String> o(String str) {
        int l10 = l();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < l10; i10++) {
            if (str.equalsIgnoreCase(g(i10))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(n(i10));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int l10 = l();
        for (int i10 = 0; i10 < l10; i10++) {
            sb2.append(g(i10));
            sb2.append(": ");
            sb2.append(n(i10));
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public u(String[] strArr) {
        this.f99444a = strArr;
    }
}
