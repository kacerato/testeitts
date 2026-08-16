package androidx.core.animation;

import Mf.l;
import android.animation.Animator;
import kotlin.jvm.internal.M;
import nf.P0;

public final class AnimatorKt {
    public static final Animator.AnimatorListener addListener(Animator animator, l<? super Animator, P0> onEnd, l<? super Animator, P0> onStart, l<? super Animator, P0> onCancel, l<? super Animator, P0> onRepeat) {
        M.p(animator, "<this>");
        M.p(onEnd, "onEnd");
        M.p(onStart, "onStart");
        M.p(onCancel, "onCancel");
        M.p(onRepeat, "onRepeat");
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(onRepeat, onEnd, onCancel, onStart);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static Animator.AnimatorListener addListener$default(Animator animator, l onEnd, l onStart, l onCancel, l onRepeat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            onEnd = AnimatorKt$addListener$1.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            onStart = AnimatorKt$addListener$2.INSTANCE;
        }
        if ((i10 & 4) != 0) {
            onCancel = AnimatorKt$addListener$3.INSTANCE;
        }
        if ((i10 & 8) != 0) {
            onRepeat = AnimatorKt$addListener$4.INSTANCE;
        }
        M.p(animator, "<this>");
        M.p(onEnd, "onEnd");
        M.p(onStart, "onStart");
        M.p(onCancel, "onCancel");
        M.p(onRepeat, "onRepeat");
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(onRepeat, onEnd, onCancel, onStart);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static final Animator.AnimatorPauseListener addPauseListener(Animator animator, final l<? super Animator, P0> onResume, final l<? super Animator, P0> onPause) {
        M.p(animator, "<this>");
        M.p(onResume, "onResume");
        M.p(onPause, "onPause");
        Animator.AnimatorPauseListener animatorPauseListener = new Animator.AnimatorPauseListener() {
            @Override
            public void onAnimationPause(Animator animator2) {
                M.p(animator2, "animator");
                onPause.invoke(animator2);
            }

            @Override
            public void onAnimationResume(Animator animator2) {
                M.p(animator2, "animator");
                onResume.invoke(animator2);
            }
        };
        Api19Impl.addPauseListener(animator, animatorPauseListener);
        return animatorPauseListener;
    }

    public static Animator.AnimatorPauseListener addPauseListener$default(Animator animator, l lVar, l lVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = AnimatorKt$addPauseListener$1.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            lVar2 = AnimatorKt$addPauseListener$2.INSTANCE;
        }
        return addPauseListener(animator, lVar, lVar2);
    }

    public static final Animator.AnimatorListener doOnCancel(Animator animator, final l<? super Animator, P0> action) {
        M.p(animator, "<this>");
        M.p(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
                M.p(animator2, "animator");
                l.this.invoke(animator2);
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator2) {
                M.p(animator2, "animator");
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorListener doOnEnd(Animator animator, final l<? super Animator, P0> action) {
        M.p(animator, "<this>");
        M.p(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
                M.p(animator2, "animator");
                l.this.invoke(animator2);
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator2) {
                M.p(animator2, "animator");
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorPauseListener doOnPause(Animator animator, l<? super Animator, P0> action) {
        M.p(animator, "<this>");
        M.p(action, "action");
        return addPauseListener$default(animator, null, action, 1, null);
    }

    public static final Animator.AnimatorListener doOnRepeat(Animator animator, final l<? super Animator, P0> action) {
        M.p(animator, "<this>");
        M.p(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
                M.p(animator2, "animator");
                l.this.invoke(animator2);
            }

            @Override
            public void onAnimationStart(Animator animator2) {
                M.p(animator2, "animator");
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorPauseListener doOnResume(Animator animator, l<? super Animator, P0> action) {
        M.p(animator, "<this>");
        M.p(action, "action");
        return addPauseListener$default(animator, action, null, 2, null);
    }

    public static final Animator.AnimatorListener doOnStart(Animator animator, final l<? super Animator, P0> action) {
        M.p(animator, "<this>");
        M.p(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
                M.p(animator2, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator2) {
                M.p(animator2, "animator");
                l.this.invoke(animator2);
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }
}
