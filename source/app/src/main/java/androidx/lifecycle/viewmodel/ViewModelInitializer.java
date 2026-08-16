package androidx.lifecycle.viewmodel;

import Mf.l;
import androidx.lifecycle.ViewModel;
import kotlin.jvm.internal.M;

public final class ViewModelInitializer<T extends ViewModel> {
    private final Class<T> clazz;
    private final l<CreationExtras, T> initializer;

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelInitializer(Class<T> clazz, l<? super CreationExtras, ? extends T> initializer) {
        M.p(clazz, "clazz");
        M.p(initializer, "initializer");
        this.clazz = clazz;
        this.initializer = initializer;
    }

    public final Class<T> getClazz$lifecycle_viewmodel_release() {
        return this.clazz;
    }

    public final l<CreationExtras, T> getInitializer$lifecycle_viewmodel_release() {
        return this.initializer;
    }
}
