package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import eg.K0;
import kotlin.jvm.internal.M;

public final class LifecycleController {
    private final DispatchQueue dispatchQueue;
    private final Lifecycle lifecycle;
    private final Lifecycle.State minState;
    private final LifecycleEventObserver observer;

    public LifecycleController(Lifecycle lifecycle, Lifecycle.State minState, DispatchQueue dispatchQueue, final K0 parentJob) {
        M.p(lifecycle, "lifecycle");
        M.p(minState, "minState");
        M.p(dispatchQueue, "dispatchQueue");
        M.p(parentJob, "parentJob");
        this.lifecycle = lifecycle;
        this.minState = minState;
        this.dispatchQueue = dispatchQueue;
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() {
            @Override
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                LifecycleController.m684observer$lambda0(LifecycleController.this, parentJob, lifecycleOwner, event);
            }
        };
        this.observer = lifecycleEventObserver;
        if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
            lifecycle.addObserver(lifecycleEventObserver);
        } else {
            K0.a.b(parentJob, null, 1, null);
            finish();
        }
    }

    private final void handleDestroy(K0 k02) {
        K0.a.b(k02, null, 1, null);
        finish();
    }

    public static final void m684observer$lambda0(LifecycleController this$0, K0 parentJob, LifecycleOwner source, Lifecycle.Event event) {
        M.p(this$0, "this$0");
        M.p(parentJob, "$parentJob");
        M.p(source, "source");
        M.p(event, "<anonymous parameter 1>");
        if (source.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            K0.a.b(parentJob, null, 1, null);
            this$0.finish();
        } else if (source.getLifecycle().getCurrentState().compareTo(this$0.minState) < 0) {
            this$0.dispatchQueue.pause();
        } else {
            this$0.dispatchQueue.resume();
        }
    }

    public final void finish() {
        this.lifecycle.removeObserver(this.observer);
        this.dispatchQueue.finish();
    }
}
