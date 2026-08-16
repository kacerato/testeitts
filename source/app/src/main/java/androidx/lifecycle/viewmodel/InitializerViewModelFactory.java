package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.jvm.internal.M;

public final class InitializerViewModelFactory implements ViewModelProvider.Factory {
    private final ViewModelInitializer<?>[] initializers;

    public InitializerViewModelFactory(ViewModelInitializer<?>... initializers) {
        M.p(initializers, "initializers");
        this.initializers = initializers;
    }

    @Override
    public <T extends ViewModel> T create(Class<T> modelClass, CreationExtras extras) {
        M.p(modelClass, "modelClass");
        M.p(extras, "extras");
        T t10 = null;
        for (ViewModelInitializer<?> viewModelInitializer : this.initializers) {
            if (M.g(viewModelInitializer.getClazz$lifecycle_viewmodel_release(), modelClass)) {
                Object invoke = viewModelInitializer.getInitializer$lifecycle_viewmodel_release().invoke(extras);
                t10 = invoke instanceof ViewModel ? (T) invoke : null;
            }
        }
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException("No initializer set for given class " + modelClass.getName());
    }
}
