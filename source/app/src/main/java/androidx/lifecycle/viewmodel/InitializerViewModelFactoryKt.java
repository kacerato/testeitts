package androidx.lifecycle.viewmodel;

import Mf.l;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.n0;
import nf.P0;

public final class InitializerViewModelFactoryKt {
    public static final <VM extends ViewModel> void initializer(InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder, l<? super CreationExtras, ? extends VM> initializer) {
        M.p(initializerViewModelFactoryBuilder, "<this>");
        M.p(initializer, "initializer");
        M.y(4, "VM");
        initializerViewModelFactoryBuilder.addInitializer(n0.d(ViewModel.class), initializer);
    }

    public static final ViewModelProvider.Factory viewModelFactory(l<? super InitializerViewModelFactoryBuilder, P0> builder) {
        M.p(builder, "builder");
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        builder.invoke(initializerViewModelFactoryBuilder);
        return initializerViewModelFactoryBuilder.build();
    }
}
