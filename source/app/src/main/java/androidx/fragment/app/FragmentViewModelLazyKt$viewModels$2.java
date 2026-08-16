package androidx.fragment.app;

import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class FragmentViewModelLazyKt$viewModels$2 extends O implements Mf.a<ViewModelStore> {
    final Mf.a $ownerProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$viewModels$2(Mf.a aVar) {
        super(0);
        this.$ownerProducer = aVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = ((ViewModelStoreOwner) this.$ownerProducer.invoke()).getViewModelStore();
        M.h(viewModelStore, "ownerProducer().viewModelStore");
        return viewModelStore;
    }
}
