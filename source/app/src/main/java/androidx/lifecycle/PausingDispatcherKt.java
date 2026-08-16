package androidx.lifecycle;

import Mf.p;
import androidx.lifecycle.Lifecycle;
import eg.C13119i;
import eg.C13122j0;
import eg.S;
import kotlin.jvm.internal.M;
import yf.f;

public final class PausingDispatcherKt {
    public static final <T> Object whenCreated(LifecycleOwner lifecycleOwner, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        return whenCreated(lifecycle, pVar, fVar);
    }

    public static final <T> Object whenResumed(LifecycleOwner lifecycleOwner, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        return whenResumed(lifecycle, pVar, fVar);
    }

    public static final <T> Object whenStarted(LifecycleOwner lifecycleOwner, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        return whenStarted(lifecycle, pVar, fVar);
    }

    public static final <T> Object whenStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        return C13119i.h(C13122j0.e().s(), new PausingDispatcherKt$whenStateAtLeast$2(lifecycle, state, pVar, null), fVar);
    }

    public static final <T> Object whenCreated(Lifecycle lifecycle, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.CREATED, pVar, fVar);
    }

    public static final <T> Object whenResumed(Lifecycle lifecycle, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.RESUMED, pVar, fVar);
    }

    public static final <T> Object whenStarted(Lifecycle lifecycle, p<? super S, ? super f<? super T>, ? extends Object> pVar, f<? super T> fVar) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.STARTED, pVar, fVar);
    }
}
