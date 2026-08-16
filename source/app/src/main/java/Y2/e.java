package y2;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.CheckForNull;
import w2.H;

@v2.b
@f
public final class e {

    public int f129936b = -1;

    public final Map<Character, String> f129935a = new HashMap();

    public static class a extends d {

        public final char[][] f129937c;

        public final int f129938d;

        public a(char[][] cArr) {
            this.f129937c = cArr;
            this.f129938d = cArr.length;
        }

        @Override
        public String b(String str) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                char[][] cArr = this.f129937c;
                if (charAt < cArr.length && cArr[charAt] != null) {
                    return d(str, i10);
                }
            }
            return str;
        }

        @Override
        @CheckForNull
        public char[] c(char c10) {
            if (c10 < this.f129938d) {
                return this.f129937c[c10];
            }
            return null;
        }
    }

    @I2.a
    public e a(char c10, String str) {
        this.f129935a.put(Character.valueOf(c10), (String) H.E(str));
        if (c10 > this.f129936b) {
            this.f129936b = c10;
        }
        return this;
    }

    @I2.a
    public e b(char[] cArr, String str) {
        H.E(str);
        for (char c10 : cArr) {
            a(c10, str);
        }
        return this;
    }

    public char[][] c() {
        char[][] cArr = new char[this.f129936b + 1];
        for (Map.Entry<Character, String> entry : this.f129935a.entrySet()) {
            cArr[entry.getKey().charValue()] = entry.getValue().toCharArray();
        }
        return cArr;
    }

    public h d() {
        return new a(c());
    }
}
