package androidx.lifecycle;

import Mf.p;
import eg.C13123k;
import eg.K0;
import eg.S;
import kotlin.jvm.internal.M;
import nf.P0;
import yf.f;

public abstract class LifecycleCoroutineScope implements S {
    public abstract Lifecycle getLifecycle$lifecycle_runtime_ktx_release();

    public final K0 launchWhenCreated(p<? super S, ? super f<? super P0>, ? extends Object> block) {
        K0 f10;
        M.p(block, "block");
        f10 = C13123k.f(this, null, null, new LifecycleCoroutineScope$launchWhenCreated$1(this, block, null), 3, null);
        return f10;
    }

    public final K0 launchWhenResumed(p<? super S, ? super f<? super P0>, ? extends Object> block) {
        K0 f10;
        M.p(block, "block");
        f10 = C13123k.f(this, null, null, new LifecycleCoroutineScope$launchWhenResumed$1(this, block, null), 3, null);
        return f10;
    }

    public final K0 launchWhenStarted(p<? super S, ? super f<? super P0>, ? extends Object> block) {
        K0 f10;
        M.p(block, "block");
        f10 = C13123k.f(this, null, null, new LifecycleCoroutineScope$launchWhenStarted$1(this, block, null), 3, null);
        return f10;
    }
}
