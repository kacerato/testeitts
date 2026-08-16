package androidx.core.animation;

import Mf.l;
import android.animation.Animator;
import kotlin.jvm.internal.M;
import nf.P0;

public final class AnimatorKt$addListener$listener$1 implements Animator.AnimatorListener {
    final l<Animator, P0> $onCancel;
    final l<Animator, P0> $onEnd;
    final l<Animator, P0> $onRepeat;
    final l<Animator, P0> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatorKt$addListener$listener$1(l<? super Animator, P0> lVar, l<? super Animator, P0> lVar2, l<? super Animator, P0> lVar3, l<? super Animator, P0> lVar4) {
        this.$onRepeat = lVar;
        this.$onEnd = lVar2;
        this.$onCancel = lVar3;
        this.$onStart = lVar4;
    }

    @Override
    public void onAnimationCancel(Animator animator) {
        M.p(animator, "animator");
        this.$onCancel.invoke(animator);
    }

    @Override
    public void onAnimationEnd(Animator animator) {
        M.p(animator, "animator");
        this.$onEnd.invoke(animator);
    }

    @Override
    public void onAnimationRepeat(Animator animator) {
        M.p(animator, "animator");
        this.$onRepeat.invoke(animator);
    }

    @Override
    public void onAnimationStart(Animator animator) {
        M.p(animator, "animator");
        this.$onStart.invoke(animator);
    }
}
