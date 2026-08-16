package og;

import og.ExecutorC14502a;
import org.jetbrains.annotations.NotNull;

public final class b {
    @Lf.j(name = "isSchedulerWorker")
    public static final boolean a(@NotNull Thread thread) {
        return thread instanceof ExecutorC14502a.c;
    }

    @Lf.j(name = "mayNotBlock")
    public static final boolean b(@NotNull Thread thread) {
        return (thread instanceof ExecutorC14502a.c) && ((ExecutorC14502a.c) thread).f98721d == ExecutorC14502a.d.CPU_ACQUIRED;
    }
}
