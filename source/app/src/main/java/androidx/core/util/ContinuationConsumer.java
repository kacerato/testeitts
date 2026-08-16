package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import yf.f;

final class ContinuationConsumer<T> extends AtomicBoolean implements java.util.function.Consumer<T> {
    private final f<T> continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationConsumer(f<? super T> continuation) {
        super(false);
        M.p(continuation, "continuation");
        this.continuation = continuation;
    }

    @Override
    public void accept(T t10) {
        if (compareAndSet(false, true)) {
            f<T> fVar = this.continuation;
            C14416i0.a aVar = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(t10));
        }
    }

    @Override
    public String toString() {
        return "ContinuationConsumer(resultAccepted = " + get() + ')';
    }
}
