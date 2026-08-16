package androidx.core.transition;

import Mf.l;
import android.transition.Transition;
import kotlin.jvm.internal.M;
import nf.P0;

public final class TransitionKt {
    public static final Transition.TransitionListener addListener(Transition transition, l<? super Transition, P0> onEnd, l<? super Transition, P0> onStart, l<? super Transition, P0> onCancel, l<? super Transition, P0> onResume, l<? super Transition, P0> onPause) {
        M.p(transition, "<this>");
        M.p(onEnd, "onEnd");
        M.p(onStart, "onStart");
        M.p(onCancel, "onCancel");
        M.p(onResume, "onResume");
        M.p(onPause, "onPause");
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(onEnd, onResume, onPause, onCancel, onStart);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static Transition.TransitionListener addListener$default(Transition transition, l onEnd, l lVar, l lVar2, l onResume, l onPause, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            onEnd = TransitionKt$addListener$1.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            lVar = TransitionKt$addListener$2.INSTANCE;
        }
        l onStart = lVar;
        if ((i10 & 4) != 0) {
            lVar2 = TransitionKt$addListener$3.INSTANCE;
        }
        l onCancel = lVar2;
        if ((i10 & 8) != 0) {
            onResume = TransitionKt$addListener$4.INSTANCE;
        }
        if ((i10 & 16) != 0) {
            onPause = TransitionKt$addListener$5.INSTANCE;
        }
        M.p(transition, "<this>");
        M.p(onEnd, "onEnd");
        M.p(onStart, "onStart");
        M.p(onCancel, "onCancel");
        M.p(onResume, "onResume");
        M.p(onPause, "onPause");
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(onEnd, onResume, onPause, onCancel, onStart);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static final Transition.TransitionListener doOnCancel(Transition transition, final l<? super Transition, P0> action) {
        M.p(transition, "<this>");
        M.p(action, "action");
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
                M.p(transition2, "transition");
                l.this.invoke(transition2);
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                M.p(transition2, "transition");
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnEnd(Transition transition, final l<? super Transition, P0> action) {
        M.p(transition, "<this>");
        M.p(action, "action");
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
                M.p(transition2, "transition");
                l.this.invoke(transition2);
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                M.p(transition2, "transition");
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnPause(Transition transition, final l<? super Transition, P0> action) {
        M.p(transition, "<this>");
        M.p(action, "action");
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                M.p(transition2, "transition");
                l.this.invoke(transition2);
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                M.p(transition2, "transition");
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnResume(Transition transition, final l<? super Transition, P0> action) {
        M.p(transition, "<this>");
        M.p(action, "action");
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                M.p(transition2, "transition");
                l.this.invoke(transition2);
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                M.p(transition2, "transition");
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnStart(Transition transition, final l<? super Transition, P0> action) {
        M.p(transition, "<this>");
        M.p(action, "action");
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                M.p(transition2, "transition");
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                M.p(transition2, "transition");
                l.this.invoke(transition2);
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }
}
