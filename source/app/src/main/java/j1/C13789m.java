package j1;

import javax.annotation.CheckForNull;

public final class C13789m extends C13781e {
    public static boolean a(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
