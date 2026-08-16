package androidx.lifecycle;

import eg.AbstractC13100M;
import eg.C13122j0;
import kotlin.jvm.internal.M;
import yf.j;

public final class PausingDispatcher extends AbstractC13100M {
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override
    public void dispatch(j context, Runnable block) {
        M.p(context, "context");
        M.p(block, "block");
        this.dispatchQueue.dispatchAndEnqueue(context, block);
    }

    @Override
    public boolean isDispatchNeeded(j context) {
        M.p(context, "context");
        if (C13122j0.e().s().isDispatchNeeded(context)) {
            return true;
        }
        return !this.dispatchQueue.canRun();
    }
}
