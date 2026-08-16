package Od;

import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class q {
    public static final void a(@Nullable String str, @NotNull Mf.l<? super String, P0> whatIf) {
        M.p(whatIf, "whatIf");
        if (str == null || str.length() == 0) {
            return;
        }
        whatIf.invoke(str);
    }

    public static final void b(@Nullable String str, @NotNull Mf.l<? super String, P0> whatIf, @NotNull Mf.a<P0> whatIfNot) {
        M.p(whatIf, "whatIf");
        M.p(whatIfNot, "whatIfNot");
        if (str == null || str.length() == 0) {
            whatIfNot.invoke();
        } else {
            whatIf.invoke(str);
        }
    }
}
