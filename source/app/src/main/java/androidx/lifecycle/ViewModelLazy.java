package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.reflect.KClass;
import nf.I;

public final class ViewModelLazy<VM extends ViewModel> implements I<VM> {
    private VM cached;
    private final Mf.a<CreationExtras> extrasProducer;
    private final Mf.a<ViewModelProvider.Factory> factoryProducer;
    private final Mf.a<ViewModelStore> storeProducer;
    private final KClass<VM> viewModelClass;

    public static final class AnonymousClass1 extends O implements Mf.a<CreationExtras.Empty> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final CreationExtras.Empty invoke() {
            return CreationExtras.Empty.INSTANCE;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(KClass<VM> viewModelClass, Mf.a<? extends ViewModelStore> storeProducer, Mf.a<? extends ViewModelProvider.Factory> factoryProducer) {
        this(viewModelClass, storeProducer, factoryProducer, null, 8, null);
        M.p(viewModelClass, "viewModelClass");
        M.p(storeProducer, "storeProducer");
        M.p(factoryProducer, "factoryProducer");
    }

    @Override
    public boolean isInitialized() {
        return this.cached != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelLazy(KClass<VM> viewModelClass, Mf.a<? extends ViewModelStore> storeProducer, Mf.a<? extends ViewModelProvider.Factory> factoryProducer, Mf.a<? extends CreationExtras> extrasProducer) {
        M.p(viewModelClass, "viewModelClass");
        M.p(storeProducer, "storeProducer");
        M.p(factoryProducer, "factoryProducer");
        M.p(extrasProducer, "extrasProducer");
        this.viewModelClass = viewModelClass;
        this.storeProducer = storeProducer;
        this.factoryProducer = factoryProducer;
        this.extrasProducer = extrasProducer;
    }

    @Override
    public VM getValue() {
        VM vm2 = this.cached;
        if (vm2 != null) {
            return vm2;
        }
        VM vm3 = (VM) new ViewModelProvider(this.storeProducer.invoke(), this.factoryProducer.invoke(), this.extrasProducer.invoke()).get(Lf.b.e(this.viewModelClass));
        this.cached = vm3;
        return vm3;
    }

    public ViewModelLazy(KClass kClass, Mf.a aVar, Mf.a aVar2, Mf.a aVar3, int i10, C14026x c14026x) {
        this(kClass, aVar, aVar2, (i10 & 8) != 0 ? AnonymousClass1.INSTANCE : aVar3);
    }
}
