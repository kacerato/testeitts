package androidx.fragment.app;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.n0;
import kotlin.reflect.KClass;
import nf.I;

public final class FragmentViewModelLazyKt {
    public static final <VM extends ViewModel> I<VM> activityViewModels(Fragment activityViewModels, Mf.a<? extends ViewModelProvider.Factory> aVar) {
        M.q(activityViewModels, "$this$activityViewModels");
        M.y(4, "VM");
        KClass d10 = n0.d(ViewModel.class);
        FragmentViewModelLazyKt$activityViewModels$1 fragmentViewModelLazyKt$activityViewModels$1 = new FragmentViewModelLazyKt$activityViewModels$1(activityViewModels);
        if (aVar == null) {
            aVar = new FragmentViewModelLazyKt$activityViewModels$2(activityViewModels);
        }
        return createViewModelLazy(activityViewModels, d10, fragmentViewModelLazyKt$activityViewModels$1, aVar);
    }

    public static I activityViewModels$default(Fragment activityViewModels, Mf.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = null;
        }
        M.q(activityViewModels, "$this$activityViewModels");
        M.y(4, "VM");
        KClass d10 = n0.d(ViewModel.class);
        FragmentViewModelLazyKt$activityViewModels$1 fragmentViewModelLazyKt$activityViewModels$1 = new FragmentViewModelLazyKt$activityViewModels$1(activityViewModels);
        if (aVar == null) {
            aVar = new FragmentViewModelLazyKt$activityViewModels$2(activityViewModels);
        }
        return createViewModelLazy(activityViewModels, d10, fragmentViewModelLazyKt$activityViewModels$1, aVar);
    }

    public static final <VM extends ViewModel> I<VM> createViewModelLazy(Fragment createViewModelLazy, KClass<VM> viewModelClass, Mf.a<? extends ViewModelStore> storeProducer, Mf.a<? extends ViewModelProvider.Factory> aVar) {
        M.q(createViewModelLazy, "$this$createViewModelLazy");
        M.q(viewModelClass, "viewModelClass");
        M.q(storeProducer, "storeProducer");
        if (aVar == null) {
            aVar = new FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1(createViewModelLazy);
        }
        return new ViewModelLazy(viewModelClass, storeProducer, aVar);
    }

    public static I createViewModelLazy$default(Fragment fragment, KClass kClass, Mf.a aVar, Mf.a aVar2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            aVar2 = null;
        }
        return createViewModelLazy(fragment, kClass, aVar, aVar2);
    }

    public static final <VM extends ViewModel> I<VM> viewModels(Fragment viewModels, Mf.a<? extends ViewModelStoreOwner> ownerProducer, Mf.a<? extends ViewModelProvider.Factory> aVar) {
        M.q(viewModels, "$this$viewModels");
        M.q(ownerProducer, "ownerProducer");
        M.y(4, "VM");
        return createViewModelLazy(viewModels, n0.d(ViewModel.class), new FragmentViewModelLazyKt$viewModels$2(ownerProducer), aVar);
    }

    public static I viewModels$default(Fragment viewModels, Mf.a ownerProducer, Mf.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            ownerProducer = new FragmentViewModelLazyKt$viewModels$1(viewModels);
        }
        if ((i10 & 2) != 0) {
            aVar = null;
        }
        M.q(viewModels, "$this$viewModels");
        M.q(ownerProducer, "ownerProducer");
        M.y(4, "VM");
        return createViewModelLazy(viewModels, n0.d(ViewModel.class), new FragmentViewModelLazyKt$viewModels$2(ownerProducer), aVar);
    }
}
