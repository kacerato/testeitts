package androidx.core.transition;

import Mf.l;
import android.transition.Transition;
import kotlin.jvm.internal.M;
import nf.P0;

public final class TransitionKt$addListener$listener$1 implements Transition.TransitionListener {
    final l<Transition, P0> $onCancel;
    final l<Transition, P0> $onEnd;
    final l<Transition, P0> $onPause;
    final l<Transition, P0> $onResume;
    final l<Transition, P0> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public TransitionKt$addListener$listener$1(l<? super Transition, P0> lVar, l<? super Transition, P0> lVar2, l<? super Transition, P0> lVar3, l<? super Transition, P0> lVar4, l<? super Transition, P0> lVar5) {
        this.$onEnd = lVar;
        this.$onResume = lVar2;
        this.$onPause = lVar3;
        this.$onCancel = lVar4;
        this.$onStart = lVar5;
    }

    @Override
    public void onTransitionCancel(Transition transition) {
        M.p(transition, "transition");
        this.$onCancel.invoke(transition);
    }

    @Override
    public void onTransitionEnd(Transition transition) {
        M.p(transition, "transition");
        this.$onEnd.invoke(transition);
    }

    @Override
    public void onTransitionPause(Transition transition) {
        M.p(transition, "transition");
        this.$onPause.invoke(transition);
    }

    @Override
    public void onTransitionResume(Transition transition) {
        M.p(transition, "transition");
        this.$onResume.invoke(transition);
    }

    @Override
    public void onTransitionStart(Transition transition) {
        M.p(transition, "transition");
        this.$onStart.invoke(transition);
    }
}
