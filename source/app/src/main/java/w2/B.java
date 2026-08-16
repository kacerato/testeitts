package w2;

import java.util.Arrays;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public final class B extends AbstractC15897n {
    public static boolean a(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(@CheckForNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
