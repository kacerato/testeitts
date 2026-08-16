package y2;

import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;
import w2.H;

@v2.b
@f
public final class b {

    public static final char[][] f129926b = (char[][]) Array.newInstance(Character.TYPE, 0, 0);

    public final char[][] f129927a;

    public b(char[][] cArr) {
        this.f129927a = cArr;
    }

    public static b a(Map<Character, String> map) {
        return new b(b(map));
    }

    @v2.d
    public static char[][] b(Map<Character, String> map) {
        H.E(map);
        if (map.isEmpty()) {
            return f129926b;
        }
        char[][] cArr = new char[((Character) Collections.max(map.o())).charValue() + 1];
        for (Character ch2 : map.o()) {
            cArr[ch2.charValue()] = map.get(ch2).toCharArray();
        }
        return cArr;
    }

    public char[][] c() {
        return this.f129927a;
    }
}
