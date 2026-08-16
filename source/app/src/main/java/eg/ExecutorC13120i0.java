package eg;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

public final class ExecutorC13120i0 implements Executor {

    @Lf.g
    @NotNull
    public final AbstractC13100M f85733b;

    public ExecutorC13120i0(@NotNull AbstractC13100M abstractC13100M) {
        this.f85733b = abstractC13100M;
    }

    @Override
    public void execute(@NotNull Runnable runnable) {
        AbstractC13100M abstractC13100M = this.f85733b;
        yf.l lVar = yf.l.f130251b;
        if (abstractC13100M.isDispatchNeeded(lVar)) {
            this.f85733b.dispatch(lVar, runnable);
        } else {
            runnable.run();
        }
    }

    @NotNull
    public String toString() {
        return this.f85733b.toString();
    }
}
