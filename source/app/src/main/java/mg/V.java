package mg;

import eg.F0;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nSynchronized.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,33:1\n20#2:34\n*S KotlinDebug\n*F\n+ 1 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n*L\n31#1:34\n*E\n"})
public final class V {
    @F0
    public static final <T> T a(@NotNull Object obj, @NotNull Mf.a<? extends T> aVar) {
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
