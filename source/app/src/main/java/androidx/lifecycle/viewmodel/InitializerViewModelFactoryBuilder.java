package androidx.lifecycle.viewmodel;

import Lf.b;
import Mf.l;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.reflect.KClass;

@ViewModelFactoryDsl
public final class InitializerViewModelFactoryBuilder {
    private final List<ViewModelInitializer<?>> initializers = new ArrayList();

    public final <T extends ViewModel> void addInitializer(KClass<T> clazz, l<? super CreationExtras, ? extends T> initializer) {
        M.p(clazz, "clazz");
        M.p(initializer, "initializer");
        this.initializers.add(new ViewModelInitializer<>(b.e(clazz), initializer));
    }

    public final ViewModelProvider.Factory build() {
        Object[] array = this.initializers.toArray(new ViewModelInitializer[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) array;
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
