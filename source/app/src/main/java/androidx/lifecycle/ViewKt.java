package androidx.lifecycle;

import android.view.View;
import kotlin.jvm.internal.M;

public final class ViewKt {
    public static final LifecycleOwner findViewTreeLifecycleOwner(View view) {
        M.p(view, "<this>");
        return ViewTreeLifecycleOwner.get(view);
    }
}
