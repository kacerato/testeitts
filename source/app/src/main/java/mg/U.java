package mg;

import eg.F0;
import org.jetbrains.annotations.NotNull;

public final class U {
    @F0
    public static void a() {
    }

    @F0
    public static final <T> T b(@NotNull Object obj, @NotNull Mf.a<? extends T> aVar) {
        T invoke;
        synchronized (obj) {
            try {
                invoke = aVar.invoke();
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th2) {
                kotlin.jvm.internal.J.d(1);
                kotlin.jvm.internal.J.c(1);
                throw th2;
            }
        }
        kotlin.jvm.internal.J.c(1);
        return invoke;
    }
}
