package y2;

import java.util.Map;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.C14021s;
import w2.H;

@v2.b
@f
public abstract class c extends l {

    public final char[][] f129928c;

    public final int f129929d;

    public final int f129930e;

    public final int f129931f;

    public final char f129932g;

    public final char f129933h;

    public c(Map<Character, String> map, int i10, int i11, String str) {
        this(b.a(map), i10, i11, str);
    }

    @Override
    public final String b(String str) {
        H.E(str);
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if ((charAt < this.f129929d && this.f129928c[charAt] != null) || charAt > this.f129933h || charAt < this.f129932g) {
                return e(str, i10);
            }
        }
        return str;
    }

    @Override
    @CheckForNull
    public final char[] d(int i10) {
        char[] cArr;
        if (i10 < this.f129929d && (cArr = this.f129928c[i10]) != null) {
            return cArr;
        }
        if (i10 < this.f129930e || i10 > this.f129931f) {
            return h(i10);
        }
        return null;
    }

    @Override
    public final int g(CharSequence charSequence, int i10, int i11) {
        while (i10 < i11) {
            char charAt = charSequence.charAt(i10);
            if ((charAt < this.f129929d && this.f129928c[charAt] != null) || charAt > this.f129933h || charAt < this.f129932g) {
                break;
            }
            i10++;
        }
        return i10;
    }

    @CheckForNull
    public abstract char[] h(int i10);

    public c(b bVar, int i10, int i11, String str) {
        H.E(bVar);
        char[][] c10 = bVar.c();
        this.f129928c = c10;
        this.f129929d = c10.length;
        if (i11 < i10) {
            i11 = -1;
            i10 = Integer.MAX_VALUE;
        }
        this.f129930e = i10;
        this.f129931f = i11;
        if (i10 >= 55296) {
            this.f129932g = C14021s.f95775c;
            this.f129933h = (char) 0;
        } else {
            this.f129932g = (char) i10;
            this.f129933h = (char) Math.min(i11, 55295);
        }
    }
}
