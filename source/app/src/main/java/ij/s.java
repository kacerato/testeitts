package ij;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class s {

    public static class a extends HashMap<String, String[]> {

        public static final String f92383b = "";

        public final String a(String str) {
            if (containsKey(str)) {
                return str;
            }
            for (String str2 : o()) {
                if (str.equalsIgnoreCase(str2)) {
                    return str2;
                }
            }
            return null;
        }

        public void b(String str, String str2) {
            put(str, s.a(get(str), str2));
        }

        public final String[] c(String[] strArr) {
            int length = strArr.length;
            String[] strArr2 = new String[length];
            System.arraycopy(strArr, 0, strArr2, 0, length);
            return strArr2;
        }

        @Override
        public Object clone() {
            a aVar = new a();
            for (Map.Entry<String, String[]> entry : entrySet()) {
                aVar.put(entry.getKey(), c(entry.getValue()));
            }
            return aVar;
        }

        public void d(String str, String str2) {
            if (containsKey(str)) {
                return;
            }
            i(str, str2);
        }

        public String e(String str) {
            String[] g10 = g(str);
            if (g10 == null || g10.length <= 0) {
                return null;
            }
            return g10[0];
        }

        public String f(String str) {
            String[] g10 = g(str);
            return (g10 == null || g10.length <= 0) ? "" : g10[0];
        }

        public String[] g(String str) {
            String a10 = a(str);
            if (a10 == null) {
                return null;
            }
            return get(a10);
        }

        public final boolean h(String str) {
            return a(str) != null;
        }

        public void i(String str, String str2) {
            put(str, new String[]{str2});
        }
    }

    public static class b {

        public final String f92384a;

        public int f92385b = 0;

        public int f92386c = 0;

        public b(String str) {
            this.f92384a = str;
        }

        public Map<String, String> a() {
            HashMap hashMap = new HashMap();
            while (this.f92386c < this.f92384a.length()) {
                g();
                String b10 = b();
                if (b10.length() == 0) {
                    throw new IllegalArgumentException("Expecting alpha label.");
                }
                g();
                if (!c('=')) {
                    throw new IllegalArgumentException("Expecting assign: '='");
                }
                g();
                if (!c('\"')) {
                    throw new IllegalArgumentException("Expecting start quote: '\"'");
                }
                e();
                String d10 = d('\"');
                f(1);
                hashMap.put(b10, d10);
                g();
                if (!c(IIndexConstants.PARAMETER_SEPARATOR)) {
                    break;
                }
                e();
            }
            return hashMap;
        }

        public final String b() {
            char charAt = this.f92384a.charAt(this.f92386c);
            while (this.f92386c < this.f92384a.length() && ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z'))) {
                int i10 = this.f92386c + 1;
                this.f92386c = i10;
                charAt = this.f92384a.charAt(i10);
            }
            String substring = this.f92384a.substring(this.f92385b, this.f92386c);
            this.f92385b = this.f92386c;
            return substring;
        }

        public final boolean c(char c10) {
            if (this.f92386c >= this.f92384a.length() || this.f92384a.charAt(this.f92386c) != c10) {
                return false;
            }
            this.f92386c++;
            return true;
        }

        public final String d(char c10) {
            while (this.f92386c < this.f92384a.length() && this.f92384a.charAt(this.f92386c) != c10) {
                this.f92386c++;
            }
            String substring = this.f92384a.substring(this.f92385b, this.f92386c);
            this.f92385b = this.f92386c;
            return substring;
        }

        public final void e() {
            this.f92385b = this.f92386c;
        }

        public final void f(int i10) {
            int i11 = this.f92386c + i10;
            this.f92386c = i11;
            this.f92385b = i11;
        }

        public final void g() {
            while (this.f92386c < this.f92384a.length() && this.f92384a.charAt(this.f92386c) < '!') {
                this.f92386c++;
            }
            this.f92385b = this.f92386c;
        }
    }

    public static String[] a(String[] strArr, String str) {
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }

    public static String b(String str, Map<String, String> map) {
        StringWriter stringWriter = new StringWriter();
        stringWriter.write(str);
        stringWriter.write(32);
        boolean z10 = false;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (z10) {
                stringWriter.write(44);
            } else {
                z10 = true;
            }
            stringWriter.write(entry.getKey());
            stringWriter.write("=\"");
            stringWriter.write(entry.getValue());
            stringWriter.write(34);
        }
        return stringWriter.toString();
    }

    public static Map<String, String> c(String str, String str2) {
        String trim = str2.trim();
        if (trim.startsWith(str)) {
            trim = trim.substring(str.length());
        }
        return new b(trim).a();
    }
}
