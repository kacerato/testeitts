package androidx.activity;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class ActivityViewModelLazyKt$viewModels$2 extends O implements Mf.a<CreationExtras> {
    final ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityViewModelLazyKt$viewModels$2(ComponentActivity componentActivity) {
        super(0);
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final CreationExtras invoke() {
        CreationExtras defaultViewModelCreationExtras = this.$this_viewModels.getDefaultViewModelCreationExtras();
        M.o(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
        return defaultViewModelCreationExtras;
    }
}
