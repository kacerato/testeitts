package Tm;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import ve.j;

public class a {

    public static final String f25522a = "[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]";

    public static final String f25523b = "&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});";

    public static final Pattern f25524c = Pattern.compile("[\\\\&]");

    public static final Pattern f25525d = Pattern.compile("\\\\[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);

    public static final Pattern f25526e = Pattern.compile("(%[a-fA-F0-9]{0,2}|[^:/?#@!$&'()*+,;=a-zA-Z0-9\\-._~])");

    public static final char[] f25527f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'B', 'C', 'D', IIndexConstants.ENUM_SUFFIX, 'F'};

    public static final Pattern f25528g = Pattern.compile("[ \t\r\n]+");

    public static final c f25529h = new C0710a();

    public static final c f25530i = new b();

    public static class C0710a implements c {
        @Override
        public void a(String str, StringBuilder sb2) {
            if (str.charAt(0) == '\\') {
                sb2.append((CharSequence) str, 1, str.length());
            } else {
                sb2.append(Tm.b.a(str));
            }
        }
    }

    public static class b implements c {
        @Override
        public void a(String str, StringBuilder sb2) {
            if (str.startsWith(j.f121589a)) {
                if (str.length() == 3) {
                    sb2.append(str);
                    return;
                } else {
                    sb2.append("%25");
                    sb2.append((CharSequence) str, 1, str.length());
                    return;
                }
            }
            for (byte b10 : str.getBytes(Charset.forName("UTF-8"))) {
                sb2.append(JavaElement.JEM_PACKAGEDECLARATION);
                sb2.append(a.f25527f[(b10 >> 4) & 15]);
                sb2.append(a.f25527f[b10 & 15]);
            }
        }
    }

    public interface c {
        void a(String str, StringBuilder sb2);
    }

    public static String b(String str) {
        String str2;
        StringBuilder sb2 = null;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\"') {
                str2 = "&quot;";
            } else if (charAt == '&') {
                str2 = "&amp;";
            } else if (charAt == '<') {
                str2 = "&lt;";
            } else if (charAt != '>') {
                if (sb2 != null) {
                    sb2.append(charAt);
                }
            } else {
                str2 = "&gt;";
            }
            if (sb2 == null) {
                sb2 = new StringBuilder();
                sb2.append((CharSequence) str, 0, i10);
            }
            sb2.append(str2);
        }
        return sb2 != null ? sb2.toString() : str;
    }

    public static String c(String str) {
        return f25528g.matcher(str.trim().toLowerCase(Locale.ROOT)).replaceAll(" ");
    }

    public static String d(String str) {
        return c(str.substring(1, str.length() - 1));
    }

    public static String e(String str) {
        return f(f25526e, str, f25530i);
    }

    public static String f(Pattern pattern, String str, c cVar) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 16);
        int i10 = 0;
        do {
            sb2.append((CharSequence) str, i10, matcher.start());
            cVar.a(matcher.group(), sb2);
            i10 = matcher.end();
        } while (matcher.find());
        if (i10 != str.length()) {
            sb2.append((CharSequence) str, i10, str.length());
        }
        return sb2.toString();
    }

    public static String g(String str) {
        return f25524c.matcher(str).find() ? f(f25525d, str, f25529h) : str;
    }
}
