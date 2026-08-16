package y2;

import java.util.Map;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.C14021s;
import w2.H;

@v2.b
@f
public abstract class AbstractC16135a extends d {

    public final char[][] f129922c;

    public final int f129923d;

    public final char f129924e;

    public final char f129925f;

    public AbstractC16135a(Map<Character, String> map, char c10, char c11) {
        this(b.a(map), c10, c11);
    }

    @Override
    public final String b(String str) {
        H.E(str);
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if ((charAt < this.f129923d && this.f129922c[charAt] != null) || charAt > this.f129925f || charAt < this.f129924e) {
                return d(str, i10);
            }
        }
        return str;
    }

    @Override
    @CheckForNull
    public final char[] c(char c10) {
        char[] cArr;
        if (c10 < this.f129923d && (cArr = this.f129922c[c10]) != null) {
            return cArr;
        }
        if (c10 < this.f129924e || c10 > this.f129925f) {
            return f(c10);
        }
        return null;
    }

    @CheckForNull
    public abstract char[] f(char c10);

    public AbstractC16135a(b bVar, char c10, char c11) {
        H.E(bVar);
        char[][] c12 = bVar.c();
        this.f129922c = c12;
        this.f129923d = c12.length;
        if (c11 < c10) {
            c11 = 0;
            c10 = C14021s.f95775c;
        }
        this.f129924e = c10;
        this.f129925f = c11;
    }
}
