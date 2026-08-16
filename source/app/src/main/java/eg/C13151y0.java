package eg;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.jetbrains.annotations.NotNull;

public final class C13151y0 {
    @InterfaceC13153z0
    public static void a() {
    }

    @NotNull
    public static final Executor b(@NotNull AbstractC13100M abstractC13100M) {
        Executor s10;
        AbstractC13147w0 abstractC13147w0 = abstractC13100M instanceof AbstractC13147w0 ? (AbstractC13147w0) abstractC13100M : null;
        return (abstractC13147w0 == null || (s10 = abstractC13147w0.s()) == null) ? new ExecutorC13120i0(abstractC13100M) : s10;
    }

    @Lf.j(name = TypedValues.TransitionType.S_FROM)
    @NotNull
    public static final AbstractC13100M c(@NotNull Executor executor) {
        AbstractC13100M abstractC13100M;
        ExecutorC13120i0 executorC13120i0 = executor instanceof ExecutorC13120i0 ? (ExecutorC13120i0) executor : null;
        return (executorC13120i0 == null || (abstractC13100M = executorC13120i0.f85733b) == null) ? new C13149x0(executor) : abstractC13100M;
    }

    @Lf.j(name = TypedValues.TransitionType.S_FROM)
    @NotNull
    public static final AbstractC13147w0 d(@NotNull ExecutorService executorService) {
        return new C13149x0(executorService);
    }
}
