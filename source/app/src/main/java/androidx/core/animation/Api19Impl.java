package androidx.core.animation;

import Lf.o;
import android.animation.Animator;
import kotlin.jvm.internal.M;

final class Api19Impl {
    public static final Api19Impl INSTANCE = new Api19Impl();

    private Api19Impl() {
    }

    @o
    public static final void addPauseListener(Animator animator, Animator.AnimatorPauseListener listener) {
        M.p(animator, "animator");
        M.p(listener, "listener");
        animator.addPauseListener(listener);
    }
}
