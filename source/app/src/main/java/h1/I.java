package h1;

import javax.annotation.CheckForNull;
import org.jspecify.annotations.NullMarked;

@NullMarked
public final class I extends G {
    public static boolean a(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
