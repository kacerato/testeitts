package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.internal.C10656zq0;
import com.bumptech.glide.load.engine.GlideException;
import java.util.List;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C10690f extends AbstractC10693i {
    public final void a() {
        this.f54660c = this.f54660c + GlideException.a.f59088e;
    }

    public final void b(String str) {
        if (str.length() < 53 || str.contains("()")) {
            a(str);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        List<String> a10 = C10656zq0.a(str, '(');
        sb2.append(a10.get(0));
        sb2.append("(<br>&nbsp;");
        if (a10.get(1).length() < 51) {
            sb2.append(a10.get(1));
            a(sb2.toString());
            return;
        }
        List<String> a11 = C10656zq0.a(a10.get(1), IIndexConstants.PARAMETER_SEPARATOR);
        sb2.append("&nbsp;");
        for (int i10 = 0; i10 < a11.size(); i10++) {
            sb2.append(a11.get(i10));
            if (i10 != a11.size() - 1) {
                sb2.append(",<br>&nbsp;");
            }
        }
        a(sb2.toString());
    }

    public final void c(String str) {
        this.f54659b.append("<code><br><br><div style=\"font-size:small;font-weight:bold;\">&nbsp;" + a(2, str) + "</div></code><br><br></td>");
        this.f54659b.append(this.f54658a);
    }

    public final void d(String str) {
        this.f54659b.append(this.f54660c);
        this.f54659b.append("<td><p>" + str + "</p></td>");
        this.f54659b.append(this.f54658a);
    }

    public final void e(String str) {
        String str2 = "<td><code><em>" + a(4, str) + "</em></code><br>";
        this.f54659b.append(this.f54660c);
        this.f54659b.append(str2);
        if (str.startsWith("java.time")) {
            this.f54659b.append("<a href=\"#java-time-customizations\">See customizations</a><br");
        } else if (str.startsWith("java.nio")) {
            this.f54659b.append("<a href=\"#java-nio-customizations\">See customizations</a><br");
        }
    }

    public final C10690f f(String str) {
        this.f54660c = AbstractC4281a.a(this.f54660c, 2, 0);
        this.f54659b.append(this.f54660c);
        this.f54659b.append("</" + str + ">");
        this.f54659b.append(this.f54658a);
        return this;
    }

    public final C10690f g(String str) {
        this.f54659b.append(this.f54660c);
        this.f54659b.append("<" + str + ">");
        this.f54659b.append(this.f54658a);
        a();
        return this;
    }

    public static String a(int i10, String str) {
        List<String> a10 = C10656zq0.a(str, '.');
        if (a10.size() < i10) {
            return str;
        }
        int i11 = i10 / 2;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 += a10.get(i13).length();
        }
        int i14 = i12 + i11;
        return str.substring(0, i14) + "<br>&nbsp;" + str.substring(i14);
    }

    public final C10690f a(String str) {
        this.f54659b.append(this.f54660c);
        this.f54659b.append("<li class=\"java8_table\"><code>" + str + "</code></li>");
        this.f54659b.append(this.f54658a);
        return this;
    }
}
