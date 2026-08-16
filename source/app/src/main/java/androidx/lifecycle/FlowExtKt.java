package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import jg.C13844k;
import jg.InterfaceC13842i;
import kotlin.jvm.internal.M;

public final class FlowExtKt {
    public static final <T> InterfaceC13842i<T> flowWithLifecycle(InterfaceC13842i<? extends T> interfaceC13842i, Lifecycle lifecycle, Lifecycle.State minActiveState) {
        M.p(interfaceC13842i, "<this>");
        M.p(lifecycle, "lifecycle");
        M.p(minActiveState, "minActiveState");
        return C13844k.s(new FlowExtKt$flowWithLifecycle$1(lifecycle, minActiveState, interfaceC13842i, null));
    }

    public static InterfaceC13842i flowWithLifecycle$default(InterfaceC13842i interfaceC13842i, Lifecycle lifecycle, Lifecycle.State state, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(interfaceC13842i, lifecycle, state);
    }
}
