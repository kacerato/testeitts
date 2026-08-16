package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.M;

public final class ViewModelProviderGetKt {
    public static final CreationExtras defaultCreationExtras(ViewModelStoreOwner owner) {
        M.p(owner, "owner");
        if (!(owner instanceof HasDefaultViewModelProviderFactory)) {
            return CreationExtras.Empty.INSTANCE;
        }
        CreationExtras defaultViewModelCreationExtras = ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelCreationExtras();
        M.o(defaultViewModelCreationExtras, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }");
        return defaultViewModelCreationExtras;
    }

    public static final <VM extends ViewModel> VM get(ViewModelProvider viewModelProvider) {
        M.p(viewModelProvider, "<this>");
        M.y(4, "VM");
        return (VM) viewModelProvider.get(ViewModel.class);
    }
}
