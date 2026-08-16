package androidx.savedstate;

import Mf.l;
import android.view.View;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2 extends O implements l<View, SavedStateRegistryOwner> {
    public static final ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2 INSTANCE = new ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2();

    public ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2() {
        super(1);
    }

    @Override
    public final SavedStateRegistryOwner invoke(View view) {
        M.p(view, "view");
        Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
        if (tag instanceof SavedStateRegistryOwner) {
            return (SavedStateRegistryOwner) tag;
        }
        return null;
    }
}
