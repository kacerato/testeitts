package androidx.activity;

import androidx.lifecycle.ViewModelStore;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class ActivityViewModelLazyKt$viewModels$3 extends O implements Mf.a<ViewModelStore> {
    final ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityViewModelLazyKt$viewModels$3(ComponentActivity componentActivity) {
        super(0);
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = this.$this_viewModels.getViewModelStore();
        M.o(viewModelStore, "viewModelStore");
        return viewModelStore;
    }
}
