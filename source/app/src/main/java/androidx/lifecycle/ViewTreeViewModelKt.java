package androidx.lifecycle;

import android.view.View;
import kotlin.jvm.internal.M;

public final class ViewTreeViewModelKt {
    public static final ViewModelStoreOwner findViewTreeViewModelStoreOwner(View view) {
        M.p(view, "<this>");
        return ViewTreeViewModelStoreOwner.get(view);
    }
}
