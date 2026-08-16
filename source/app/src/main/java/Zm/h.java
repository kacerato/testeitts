package Zm;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class h {

    public static final Map<String, String> f31534c = Collections.emptyMap();

    public final Appendable f31535a;

    public char f31536b = 0;

    public h(Appendable appendable) {
        if (appendable == null) {
            throw new NullPointerException("out must not be null");
        }
        this.f31535a = appendable;
    }

    public void a(String str) {
        try {
            this.f31535a.append(str);
            int length = str.length();
            if (length != 0) {
                this.f31536b = str.charAt(length - 1);
            }
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void b() {
        char c10 = this.f31536b;
        if (c10 == 0 || c10 == '\n') {
            return;
        }
        a("\n");
    }

    public void c(String str) {
        a(str);
    }

    public void d(String str) {
        e(str, f31534c);
    }

    public void e(String str, Map<String, String> map) {
        f(str, map, false);
    }

    public void f(String str, Map<String, String> map, boolean z10) {
        a("<");
        a(str);
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a(" ");
                a(Tm.a.b(entry.getKey()));
                a("=\"");
                a(Tm.a.b(entry.getValue()));
                a(JavadocConstants.ANCHOR_PREFIX_END);
            }
        }
        if (z10) {
            a(" /");
        }
        a(">");
    }

    public void g(String str) {
        a(Tm.a.b(str));
    }
}
