package androidx.lifecycle;

import eg.P0;
import eg.S;
import java.io.Closeable;
import kotlin.jvm.internal.M;
import yf.j;

public final class CloseableCoroutineScope implements Closeable, S {
    private final j coroutineContext;

    public CloseableCoroutineScope(j context) {
        M.p(context, "context");
        this.coroutineContext = context;
    }

    @Override
    public void close() {
        P0.j(getCoroutineContext(), null, 1, null);
    }

    @Override
    public j getCoroutineContext() {
        return this.coroutineContext;
    }
}
