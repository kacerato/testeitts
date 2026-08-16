package androidx.core.transition;

import Mf.l;
import android.transition.Transition;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;

public final class TransitionKt$addListener$2 extends O implements l<Transition, P0> {
    public static final TransitionKt$addListener$2 INSTANCE = new TransitionKt$addListener$2();

    public TransitionKt$addListener$2() {
        super(1);
    }

    public final void invoke2(Transition it) {
        M.p(it, "it");
    }

    @Override
    public P0 invoke(Transition transition) {
        invoke2(transition);
        return P0.f98194a;
    }
}
