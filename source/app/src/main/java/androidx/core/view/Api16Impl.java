package androidx.core.view;

import android.view.View;

final class Api16Impl {
    public static final Api16Impl INSTANCE = new Api16Impl();

    private Api16Impl() {
    }

    @Lf.o
    public static final void postOnAnimationDelayed(View view, Runnable action, long j10) {
        kotlin.jvm.internal.M.p(view, "view");
        kotlin.jvm.internal.M.p(action, "action");
        view.postOnAnimationDelayed(action, j10);
    }
}
