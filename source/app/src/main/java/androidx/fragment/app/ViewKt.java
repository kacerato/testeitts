package androidx.fragment.app;

import android.view.View;
import kotlin.jvm.internal.M;

public final class ViewKt {
    public static final <F extends Fragment> F findFragment(View findFragment) {
        M.q(findFragment, "$this$findFragment");
        F f10 = (F) FragmentManager.findFragment(findFragment);
        M.h(f10, "FragmentManager.findFragment(this)");
        return f10;
    }
}
