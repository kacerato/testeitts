package androidx.savedstate;

import android.view.View;
import kotlin.jvm.internal.M;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;

public final class ViewKt {
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Replaced by View.findViewTreeSavedStateRegistryOwner() from savedstate module", replaceWith = @InterfaceC14412g0(expression = "findViewTreeSavedStateRegistryOwner()", imports = {"androidx.savedstate.findViewTreeSavedStateRegistryOwner"}))
    public static final SavedStateRegistryOwner findViewTreeSavedStateRegistryOwner(View view) {
        M.p(view, "<this>");
        return findViewTreeSavedStateRegistryOwner(view);
    }
}
