package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import eg.C13122j0;
import eg.C13123k;
import eg.P0;
import kotlin.jvm.internal.M;
import yf.j;

public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {
    private final j coroutineContext;
    private final Lifecycle lifecycle;

    public LifecycleCoroutineScopeImpl(Lifecycle lifecycle, j coroutineContext) {
        M.p(lifecycle, "lifecycle");
        M.p(coroutineContext, "coroutineContext");
        this.lifecycle = lifecycle;
        this.coroutineContext = coroutineContext;
        if (getLifecycle$lifecycle_runtime_ktx_release().getCurrentState() == Lifecycle.State.DESTROYED) {
            P0.j(getCoroutineContext(), null, 1, null);
        }
    }

    @Override
    public j getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override
    public Lifecycle getLifecycle$lifecycle_runtime_ktx_release() {
        return this.lifecycle;
    }

    @Override
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        M.p(source, "source");
        M.p(event, "event");
        if (getLifecycle$lifecycle_runtime_ktx_release().getCurrentState().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            getLifecycle$lifecycle_runtime_ktx_release().removeObserver(this);
            P0.j(getCoroutineContext(), null, 1, null);
        }
    }

    public final void register() {
        C13123k.f(this, C13122j0.e().u(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }
}
