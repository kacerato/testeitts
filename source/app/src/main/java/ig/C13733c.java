package ig;

import kotlin.jvm.internal.M;
import mg.T;
import org.jetbrains.annotations.NotNull;

public final class C13733c {

    public static final int f92209a = -1640531527;

    public static final int f92210b = 16;

    @NotNull
    public static final T f92211c = new T("REHASH");

    @NotNull
    public static final l f92212d = new l(null);

    @NotNull
    public static final l f92213e = new l(Boolean.TRUE);

    public static final T a() {
        return f92211c;
    }

    public static final l b(Object obj) {
        return d(obj);
    }

    public static final Void c() {
        return e();
    }

    public static final l d(Object obj) {
        return obj == null ? f92212d : M.g(obj, Boolean.TRUE) ? f92213e : new l(obj);
    }

    public static final Void e() {
        throw new UnsupportedOperationException("not implemented");
    }
}
