package androidx.lifecycle;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;

public final class LiveDataKt {
    public static final <T> Observer<T> observe(LiveData<T> observe, LifecycleOwner owner, final l<? super T, P0> onChanged) {
        M.q(observe, "$this$observe");
        M.q(owner, "owner");
        M.q(onChanged, "onChanged");
        Observer<T> observer = new Observer<T>() {
            @Override
            public final void onChanged(T t10) {
                l.this.invoke(t10);
            }
        };
        observe.observe(owner, observer);
        return observer;
    }
}
