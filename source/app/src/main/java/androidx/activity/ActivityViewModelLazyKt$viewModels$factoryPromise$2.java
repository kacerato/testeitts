package androidx.activity;

import androidx.lifecycle.ViewModelProvider;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class ActivityViewModelLazyKt$viewModels$factoryPromise$2 extends O implements Mf.a<ViewModelProvider.Factory> {
    final ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityViewModelLazyKt$viewModels$factoryPromise$2(ComponentActivity componentActivity) {
        super(0);
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory defaultViewModelProviderFactory = this.$this_viewModels.getDefaultViewModelProviderFactory();
        M.o(defaultViewModelProviderFactory, "defaultViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
