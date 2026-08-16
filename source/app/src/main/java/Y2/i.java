package y2;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.C14021s;
import w2.H;

@v2.b
@f
public final class i {

    public static final h f129941a = new a();

    public class a extends d {
        @Override
        public String b(String str) {
            return (String) H.E(str);
        }

        @Override
        @CheckForNull
        public char[] c(char c10) {
            return null;
        }
    }

    public class b extends l {

        public final d f129942c;

        public b(d dVar) {
            this.f129942c = dVar;
        }

        @Override
        @CheckForNull
        public char[] d(int i10) {
            if (i10 < 65536) {
                return this.f129942c.c((char) i10);
            }
            char[] cArr = new char[2];
            Character.toChars(i10, cArr, 0);
            char[] c10 = this.f129942c.c(cArr[0]);
            char[] c11 = this.f129942c.c(cArr[1]);
            if (c10 == null && c11 == null) {
                return null;
            }
            int length = c10 != null ? c10.length : 1;
            char[] cArr2 = new char[(c11 != null ? c11.length : 1) + length];
            if (c10 != null) {
                for (int i11 = 0; i11 < c10.length; i11++) {
                    cArr2[i11] = c10[i11];
                }
            } else {
                cArr2[0] = cArr[0];
            }
            if (c11 != null) {
                for (int i12 = 0; i12 < c11.length; i12++) {
                    cArr2[length + i12] = c11[i12];
                }
            } else {
                cArr2[length] = cArr[1];
            }
            return cArr2;
        }
    }

    public static final class c {

        public final Map<Character, String> f129943a;

        public char f129944b;

        public char f129945c;

        @CheckForNull
        public String f129946d;

        public class a extends AbstractC16135a {

            @CheckForNull
            public final char[] f129947g;

            public a(Map map, char c10, char c11) {
                super((Map<Character, String>) map, c10, c11);
                this.f129947g = c.this.f129946d != null ? c.this.f129946d.toCharArray() : null;
            }

            @Override
            @CheckForNull
            public char[] f(char c10) {
                return this.f129947g;
            }
        }

        public c(a aVar) {
            this();
        }

        @I2.a
        public c b(char c10, String str) {
            H.E(str);
            this.f129943a.put(Character.valueOf(c10), str);
            return this;
        }

        public h c() {
            return new a(this.f129943a, this.f129944b, this.f129945c);
        }

        @I2.a
        public c d(char c10, char c11) {
            this.f129944b = c10;
            this.f129945c = c11;
            return this;
        }

        @I2.a
        public c e(String str) {
            this.f129946d = str;
            return this;
        }

        public c() {
            this.f129943a = new HashMap();
            this.f129944b = (char) 0;
            this.f129945c = C14021s.f95775c;
            this.f129946d = null;
        }
    }

    public static l a(h hVar) {
        H.E(hVar);
        if (hVar instanceof l) {
            return (l) hVar;
        }
        if (hVar instanceof d) {
            return g((d) hVar);
        }
        String name = hVar.getClass().getName();
        throw new IllegalArgumentException(name.length() != 0 ? "Cannot create a UnicodeEscaper from: ".concat(name) : new String("Cannot create a UnicodeEscaper from: "));
    }

    public static c b() {
        return new c(null);
    }

    @CheckForNull
    public static String c(d dVar, char c10) {
        return f(dVar.c(c10));
    }

    @CheckForNull
    public static String d(l lVar, int i10) {
        return f(lVar.d(i10));
    }

    public static h e() {
        return f129941a;
    }

    @CheckForNull
    public static String f(@CheckForNull char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public static l g(d dVar) {
        return new b(dVar);
    }
}
