package androidx.lifecycle;

import Mf.p;
import androidx.lifecycle.Lifecycle;
import eg.S;
import eg.T;
import kotlin.jvm.internal.M;
import nf.P0;
import yf.f;

public final class RepeatOnLifecycleKt {
    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, p<? super S, ? super f<? super P0>, ? extends Object> pVar, f<? super P0> fVar) {
        if (state != Lifecycle.State.INITIALIZED) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                return P0.f98194a;
            }
            Object g10 = T.g(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, pVar, null), fVar);
            return g10 == Af.d.l() ? g10 : P0.f98194a;
        }
        throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, p<? super S, ? super f<? super P0>, ? extends Object> pVar, f<? super P0> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Object repeatOnLifecycle = repeatOnLifecycle(lifecycle, state, pVar, fVar);
        return repeatOnLifecycle == Af.d.l() ? repeatOnLifecycle : P0.f98194a;
    }
}
