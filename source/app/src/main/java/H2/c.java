package H2;

import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavaElement;
import y2.h;
import y2.i;

@a
@v2.b
public class c {

    public static final char f7958a = 0;

    public static final char f7959b = 31;

    public static final h f7960c;

    public static final h f7961d;

    public static final h f7962e;

    static {
        i.c b10 = i.b();
        b10.d((char) 0, '\ufffd');
        b10.e("\ufffd");
        for (char c10 = 0; c10 <= 31; c10 = (char) (c10 + 1)) {
            if (c10 != '\t' && c10 != '\n' && c10 != '\r') {
                b10.b(c10, "\ufffd");
            }
        }
        b10.b('&', "&amp;");
        b10.b('<', "&lt;");
        b10.b('>', "&gt;");
        f7961d = b10.c();
        b10.b(JavaElement.JEM_MODULAR_CLASSFILE, "&apos;");
        b10.b('\"', "&quot;");
        f7960c = b10.c();
        b10.b('\t', "&#x9;");
        b10.b('\n', "&#xA;");
        b10.b(CharUtils.CR, "&#xD;");
        f7962e = b10.c();
    }

    public static h a() {
        return f7962e;
    }

    public static h b() {
        return f7961d;
    }
}
