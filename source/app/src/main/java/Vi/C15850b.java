package vi;

import java.util.HashSet;
import java.util.Set;
import li.C14146h;

public class C15850b {
    public static Set a(C14146h[] c14146hArr) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 != c14146hArr.length; i10++) {
            hashSet.addAll(c14146hArr[i10].a());
        }
        return hashSet;
    }
}
