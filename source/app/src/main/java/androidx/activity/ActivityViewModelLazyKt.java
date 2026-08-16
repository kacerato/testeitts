package androidx.activity;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.n0;
import nf.EnumC14431q;
import nf.I;
import nf.InterfaceC14427o;

public final class ActivityViewModelLazyKt {
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Superseded by viewModels that takes a CreationExtras")
    public static final <VM extends ViewModel> I<VM> viewModels(ComponentActivity componentActivity, Mf.a<? extends ViewModelProvider.Factory> aVar) {
        M.p(componentActivity, "<this>");
        if (aVar == null) {
            aVar = new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        M.y(4, "VM");
        return new ViewModelLazy(n0.d(ViewModel.class), new ActivityViewModelLazyKt$viewModels$1(componentActivity), aVar, new ActivityViewModelLazyKt$viewModels$2(componentActivity));
    }

    public static I viewModels$default(ComponentActivity componentActivity, Mf.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = null;
        }
        M.p(componentActivity, "<this>");
        if (aVar == null) {
            aVar = new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        M.y(4, "VM");
        return new ViewModelLazy(n0.d(ViewModel.class), new ActivityViewModelLazyKt$viewModels$1(componentActivity), aVar, new ActivityViewModelLazyKt$viewModels$2(componentActivity));
    }

    public static final <VM extends ViewModel> I<VM> viewModels(ComponentActivity componentActivity, Mf.a<? extends CreationExtras> aVar, Mf.a<? extends ViewModelProvider.Factory> aVar2) {
        M.p(componentActivity, "<this>");
        if (aVar2 == null) {
            aVar2 = new ActivityViewModelLazyKt$viewModels$factoryPromise$2(componentActivity);
        }
        M.y(4, "VM");
        return new ViewModelLazy(n0.d(ViewModel.class), new ActivityViewModelLazyKt$viewModels$3(componentActivity), aVar2, new ActivityViewModelLazyKt$viewModels$4(aVar, componentActivity));
    }

    public static I viewModels$default(ComponentActivity componentActivity, Mf.a aVar, Mf.a aVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = null;
        }
        if ((i10 & 2) != 0) {
            aVar2 = null;
        }
        M.p(componentActivity, "<this>");
        if (aVar2 == null) {
            aVar2 = new ActivityViewModelLazyKt$viewModels$factoryPromise$2(componentActivity);
        }
        M.y(4, "VM");
        return new ViewModelLazy(n0.d(ViewModel.class), new ActivityViewModelLazyKt$viewModels$3(componentActivity), aVar2, new ActivityViewModelLazyKt$viewModels$4(aVar, componentActivity));
    }
}
