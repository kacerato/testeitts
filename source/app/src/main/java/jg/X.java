package jg;

import eg.C13135q;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kg.AbstractC13981c;
import kg.C13980b;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,428:1\n1#2:429\n314#3,11:430\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n298#1:430,11\n*E\n"})
public final class X extends AbstractC13981c<V<?>> {

    @NotNull
    public static final AtomicReferenceFieldUpdater f93276a = AtomicReferenceFieldUpdater.newUpdater(X.class, Object.class, "_state");

    @Lf.x
    @Nullable
    private volatile Object _state;

    @Override
    public boolean a(@NotNull V<?> v10) {
        mg.T t10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93276a;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        t10 = W.f93274a;
        atomicReferenceFieldUpdater.set(this, t10);
        return true;
    }

    @Nullable
    public final Object e(@NotNull yf.f<? super P0> fVar) {
        mg.T t10;
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93276a;
        t10 = W.f93274a;
        if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, t10, c13135q)) {
            C14416i0.a aVar = C14416i0.f98201c;
            c13135q.resumeWith(C14416i0.b(P0.f98194a));
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    @Override
    @NotNull
    public yf.f<P0>[] b(@NotNull V<?> v10) {
        f93276a.set(this, null);
        return C13980b.f95082a;
    }

    public final void g(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public final void h() {
        mg.T t10;
        mg.T t11;
        mg.T t12;
        mg.T t13;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93276a;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return;
            }
            t10 = W.f93275b;
            if (obj == t10) {
                return;
            }
            t11 = W.f93274a;
            if (obj == t11) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f93276a;
                t12 = W.f93275b;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, obj, t12)) {
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f93276a;
                t13 = W.f93274a;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater3, this, obj, t13)) {
                    C14416i0.a aVar = C14416i0.f98201c;
                    ((C13135q) obj).resumeWith(C14416i0.b(P0.f98194a));
                    return;
                }
            }
        }
    }

    public final boolean i() {
        mg.T t10;
        mg.T t11;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93276a;
        t10 = W.f93274a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, t10);
        kotlin.jvm.internal.M.m(andSet);
        t11 = W.f93275b;
        return andSet == t11;
    }
}
