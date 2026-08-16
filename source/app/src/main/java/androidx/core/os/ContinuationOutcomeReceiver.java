package androidx.core.os;

import android.os.OutcomeReceiver;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.C14418j0;

public final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver {
    private final yf.f<R> continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationOutcomeReceiver(yf.f<? super R> continuation) {
        super(false);
        M.p(continuation, "continuation");
        this.continuation = continuation;
    }

    public void onError(E error) {
        M.p(error, "error");
        if (compareAndSet(false, true)) {
            yf.f<R> fVar = this.continuation;
            C14416i0.a aVar = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(C14418j0.a(error)));
        }
    }

    public void onResult(R r10) {
        if (compareAndSet(false, true)) {
            yf.f<R> fVar = this.continuation;
            C14416i0.a aVar = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(r10));
        }
    }

    @Override
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
