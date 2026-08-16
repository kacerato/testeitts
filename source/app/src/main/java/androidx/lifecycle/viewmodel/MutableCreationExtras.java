package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public final class MutableCreationExtras extends CreationExtras {
    /* JADX WARN: Multi-variable type inference failed */
    public MutableCreationExtras() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public <T> T get(CreationExtras.Key<T> key) {
        M.p(key, "key");
        return (T) getMap$lifecycle_viewmodel_release().get(key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void set(CreationExtras.Key<T> key, T t10) {
        M.p(key, "key");
        getMap$lifecycle_viewmodel_release().put(key, t10);
    }

    public MutableCreationExtras(CreationExtras initialExtras) {
        M.p(initialExtras, "initialExtras");
        getMap$lifecycle_viewmodel_release().putAll(initialExtras.getMap$lifecycle_viewmodel_release());
    }

    public MutableCreationExtras(CreationExtras creationExtras, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }
}
