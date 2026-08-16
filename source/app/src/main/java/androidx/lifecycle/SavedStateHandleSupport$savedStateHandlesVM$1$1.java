package androidx.lifecycle;

import Mf.l;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class SavedStateHandleSupport$savedStateHandlesVM$1$1 extends O implements l<CreationExtras, SavedStateHandlesVM> {
    public static final SavedStateHandleSupport$savedStateHandlesVM$1$1 INSTANCE = new SavedStateHandleSupport$savedStateHandlesVM$1$1();

    public SavedStateHandleSupport$savedStateHandlesVM$1$1() {
        super(1);
    }

    @Override
    public final SavedStateHandlesVM invoke(CreationExtras initializer) {
        M.p(initializer, "$this$initializer");
        return new SavedStateHandlesVM();
    }
}
