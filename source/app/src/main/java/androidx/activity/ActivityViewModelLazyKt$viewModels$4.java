package androidx.activity;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class ActivityViewModelLazyKt$viewModels$4 extends O implements Mf.a<CreationExtras> {
    final Mf.a<CreationExtras> $extrasProducer;
    final ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActivityViewModelLazyKt$viewModels$4(Mf.a<? extends CreationExtras> aVar, ComponentActivity componentActivity) {
        super(0);
        this.$extrasProducer = aVar;
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final CreationExtras invoke() {
        CreationExtras invoke;
        Mf.a<CreationExtras> aVar = this.$extrasProducer;
        if (aVar != null && (invoke = aVar.invoke()) != null) {
            return invoke;
        }
        CreationExtras defaultViewModelCreationExtras = this.$this_viewModels.getDefaultViewModelCreationExtras();
        M.o(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
        return defaultViewModelCreationExtras;
    }
}
