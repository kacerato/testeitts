package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.P0;
import yf.f;

final class ContinuationRunnable extends AtomicBoolean implements Runnable {
    private final f<P0> continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationRunnable(f<? super P0> continuation) {
        super(false);
        M.p(continuation, "continuation");
        this.continuation = continuation;
    }

    @Override
    public void run() {
        if (compareAndSet(false, true)) {
            f<P0> fVar = this.continuation;
            C14416i0.a aVar = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(P0.f98194a));
        }
    }

    @Override
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
