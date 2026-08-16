package androidx.core.animation;

import Mf.l;
import android.animation.Animator;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;

public final class AnimatorKt$addPauseListener$1 extends O implements l<Animator, P0> {
    public static final AnimatorKt$addPauseListener$1 INSTANCE = new AnimatorKt$addPauseListener$1();

    public AnimatorKt$addPauseListener$1() {
        super(1);
    }

    public final void invoke2(Animator it) {
        M.p(it, "it");
    }

    @Override
    public P0 invoke(Animator animator) {
        invoke2(animator);
        return P0.f98194a;
    }
}
