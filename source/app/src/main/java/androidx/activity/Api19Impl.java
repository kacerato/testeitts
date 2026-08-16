package androidx.activity;

import android.view.View;
import kotlin.jvm.internal.M;

public final class Api19Impl {
    public static final Api19Impl INSTANCE = new Api19Impl();

    private Api19Impl() {
    }

    public final boolean isAttachedToWindow(View view) {
        M.p(view, "view");
        return view.isAttachedToWindow();
    }
}
