package eg;

import eg.K0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlinx.coroutines.CompletionHandlerException;
import mg.C14251l;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,662:1\n230#1,2:666\n232#1,8:669\n230#1,10:677\n230#1,10:688\n1#2:663\n24#3:664\n24#3:665\n22#3:687\n21#3:698\n22#3,3:699\n21#3:702\n22#3,3:703\n22#3:711\n21#3,4:712\n22#4:668\n13#4:710\n61#5,2:706\n61#5,2:708\n61#5,2:716\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n246#1:666,2\n246#1:669,8\n249#1:677,10\n254#1:688,10\n72#1:664\n158#1:665\n252#1:687\n277#1:698\n278#1:699,3\n287#1:702\n288#1:703,3\n389#1:711\n392#1:712,4\n246#1:668\n350#1:710\n329#1:706,2\n339#1:708,2\n613#1:716,2\n*E\n"})
@InterfaceC14410f0
public class C13135q<T> extends AbstractC13116g0<T> implements InterfaceC13133p<T>, Bf.e, y1 {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85750g = AtomicIntegerFieldUpdater.newUpdater(C13135q.class, "_decisionAndIndex");

    @NotNull
    public static final AtomicReferenceFieldUpdater f85751h = AtomicReferenceFieldUpdater.newUpdater(C13135q.class, Object.class, "_state");

    @NotNull
    public static final AtomicReferenceFieldUpdater f85752i = AtomicReferenceFieldUpdater.newUpdater(C13135q.class, Object.class, "_parentHandle");

    @Lf.x
    private volatile int _decisionAndIndex;

    @Lf.x
    @Nullable
    private volatile Object _parentHandle;

    @Lf.x
    @Nullable
    private volatile Object _state;

    @NotNull
    public final yf.f<T> f85753e;

    @NotNull
    public final yf.j f85754f;

    /* JADX WARN: Multi-variable type inference failed */
    public C13135q(@NotNull yf.f<? super T> fVar, int i10) {
        super(i10);
        this.f85753e = fVar;
        this.f85754f = fVar.getContext();
        this._decisionAndIndex = 536870911;
        this._state = C13109d.f85702b;
    }

    private final void L(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Mf.l<? super Integer, nf.P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void W(C13135q c13135q, Object obj, int i10, Mf.l lVar, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        c13135q.V(obj, i10, lVar);
    }

    private final boolean Y() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85750g;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f85750g.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
        return true;
    }

    private final boolean a0() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85750g;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f85750g.compareAndSet(this, i10, 536870912 + (536870911 & i10)));
        return true;
    }

    public final InterfaceC13128m0 A() {
        return (InterfaceC13128m0) f85752i.get(this);
    }

    @Override
    public void B(@NotNull Object obj) {
        y(this.f85726d);
    }

    @Override
    @Nullable
    public Object C(T t10, @Nullable Object obj) {
        return Z(t10, obj, null);
    }

    @InterfaceC14410f0
    @Nullable
    public final Object D() {
        K0 k02;
        boolean J10 = J();
        if (a0()) {
            if (A() == null) {
                H();
            }
            if (J10) {
                T();
            }
            return Af.d.l();
        }
        if (J10) {
            T();
        }
        Object F10 = F();
        if (F10 instanceof C13091D) {
            throw ((C13091D) F10).f85604a;
        }
        if (!C13118h0.c(this.f85726d) || (k02 = (K0) getContext().get(K0.f85619y4)) == null || k02.isActive()) {
            return h(F10);
        }
        CancellationException Q10 = k02.Q();
        c(F10, Q10);
        throw Q10;
    }

    @Override
    @Nullable
    public Object E(@NotNull Throwable th2) {
        return Z(new C13091D(th2, false, 2, null), null, null);
    }

    @Nullable
    public final Object F() {
        return f85751h.get(this);
    }

    public final String G() {
        Object F10 = F();
        return F10 instanceof Z0 ? "Active" : F10 instanceof C13140t ? "Cancelled" : "Completed";
    }

    public final InterfaceC13128m0 H() {
        K0 k02 = (K0) getContext().get(K0.f85619y4);
        if (k02 == null) {
            return null;
        }
        InterfaceC13128m0 g10 = K0.a.g(k02, true, false, new C13142u(this), 2, null);
        androidx.concurrent.futures.a.a(f85752i, this, null, g10);
        return g10;
    }

    public final void I(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85751h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof C13109d)) {
                if (obj2 instanceof AbstractC13129n ? true : obj2 instanceof mg.P) {
                    P(obj, obj2);
                } else {
                    if (obj2 instanceof C13091D) {
                        C13091D c13091d = (C13091D) obj2;
                        if (!c13091d.b()) {
                            P(obj, obj2);
                        }
                        if (obj2 instanceof C13140t) {
                            if (!(obj2 instanceof C13091D)) {
                                c13091d = null;
                            }
                            Throwable th2 = c13091d != null ? c13091d.f85604a : null;
                            if (obj instanceof AbstractC13129n) {
                                p((AbstractC13129n) obj, th2);
                                return;
                            } else {
                                kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                s((mg.P) obj, th2);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj2 instanceof C13090C) {
                        C13090C c13090c = (C13090C) obj2;
                        if (c13090c.f85598b != null) {
                            P(obj, obj2);
                        }
                        if (obj instanceof mg.P) {
                            return;
                        }
                        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        AbstractC13129n abstractC13129n = (AbstractC13129n) obj;
                        if (c13090c.h()) {
                            p(abstractC13129n, c13090c.f85601e);
                            return;
                        } else {
                            if (androidx.concurrent.futures.a.a(f85751h, this, obj2, C13090C.g(c13090c, null, abstractC13129n, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else {
                        if (obj instanceof mg.P) {
                            return;
                        }
                        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (androidx.concurrent.futures.a.a(f85751h, this, obj2, new C13090C(obj2, (AbstractC13129n) obj, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            } else if (androidx.concurrent.futures.a.a(f85751h, this, obj2, obj)) {
                return;
            }
        }
    }

    public final boolean J() {
        if (C13118h0.d(this.f85726d)) {
            yf.f<T> fVar = this.f85753e;
            kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((C14251l) fVar).s()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void K(@NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        I(N(lVar));
    }

    public final void M(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, nf.P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public final AbstractC13129n N(Mf.l<? super Throwable, nf.P0> lVar) {
        return lVar instanceof AbstractC13129n ? (AbstractC13129n) lVar : new H0(lVar);
    }

    @Override
    public void O() {
        InterfaceC13128m0 H10 = H();
        if (H10 != null && d()) {
            H10.dispose();
            f85752i.set(this, Y0.f85696b);
        }
    }

    public final void P(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    @NotNull
    public String Q() {
        return "CancellableContinuation";
    }

    public final void S(@NotNull Throwable th2) {
        if (u(th2)) {
            return;
        }
        b(th2);
        w();
    }

    public final void T() {
        Throwable D10;
        yf.f<T> fVar = this.f85753e;
        C14251l c14251l = fVar instanceof C14251l ? (C14251l) fVar : null;
        if (c14251l == null || (D10 = c14251l.D(this)) == null) {
            return;
        }
        v();
        b(D10);
    }

    @Lf.j(name = "resetStateReusable")
    public final boolean U() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85751h;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if ((obj instanceof C13090C) && ((C13090C) obj).f85600d != null) {
            v();
            return false;
        }
        f85750g.set(this, 536870911);
        atomicReferenceFieldUpdater.set(this, C13109d.f85702b);
        return true;
    }

    public final void V(Object obj, int i10, Mf.l<? super Throwable, nf.P0> lVar) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85751h;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof Z0)) {
                if (obj2 instanceof C13140t) {
                    C13140t c13140t = (C13140t) obj2;
                    if (c13140t.c()) {
                        if (lVar != null) {
                            r(lVar, c13140t.f85604a);
                            return;
                        }
                        return;
                    }
                }
                m(obj);
                throw new KotlinNothingValueException();
            }
        } while (!androidx.concurrent.futures.a.a(f85751h, this, obj2, X((Z0) obj2, obj, i10, lVar, null)));
        w();
        y(i10);
    }

    public final Object X(Z0 z02, Object obj, int i10, Mf.l<? super Throwable, nf.P0> lVar, Object obj2) {
        if (obj instanceof C13091D) {
            return obj;
        }
        if (!C13118h0.c(i10) && obj2 == null) {
            return obj;
        }
        if (lVar == null && !(z02 instanceof AbstractC13129n) && obj2 == null) {
            return obj;
        }
        return new C13090C(obj, z02 instanceof AbstractC13129n ? (AbstractC13129n) z02 : null, lVar, obj2, null, 16, null);
    }

    public final mg.T Z(Object obj, Object obj2, Mf.l<? super Throwable, nf.P0> lVar) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85751h;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof Z0)) {
                if ((obj3 instanceof C13090C) && obj2 != null && ((C13090C) obj3).f85600d == obj2) {
                    return r.f85767g;
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f85751h, this, obj3, X((Z0) obj3, obj, this.f85726d, lVar, obj2)));
        w();
        return r.f85767g;
    }

    @Override
    public boolean b(@Nullable Throwable th2) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85751h;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof Z0)) {
                return false;
            }
        } while (!androidx.concurrent.futures.a.a(f85751h, this, obj, new C13140t(this, th2, (obj instanceof AbstractC13129n) || (obj instanceof mg.P))));
        Z0 z02 = (Z0) obj;
        if (z02 instanceof AbstractC13129n) {
            p((AbstractC13129n) obj, th2);
        } else if (z02 instanceof mg.P) {
            s((mg.P) obj, th2);
        }
        w();
        y(this.f85726d);
        return true;
    }

    public final void b0(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Mf.l<? super Integer, Integer> lVar, Object obj) {
        int i10;
        do {
            i10 = atomicIntegerFieldUpdater.get(obj);
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i10, lVar.invoke(Integer.valueOf(i10)).intValue()));
    }

    @Override
    public void c(@Nullable Object obj, @NotNull Throwable th2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85751h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof Z0) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof C13091D) {
                return;
            }
            if (obj2 instanceof C13090C) {
                C13090C c13090c = (C13090C) obj2;
                if (c13090c.h()) {
                    throw new IllegalStateException("Must be called at most once");
                }
                if (androidx.concurrent.futures.a.a(f85751h, this, obj2, C13090C.g(c13090c, null, null, null, null, th2, 15, null))) {
                    c13090c.i(this, th2);
                    return;
                }
            } else {
                if (androidx.concurrent.futures.a.a(f85751h, this, obj2, new C13090C(obj2, null, null, null, th2, 14, null))) {
                    return;
                }
            }
        }
    }

    @Override
    public boolean d() {
        return !(F() instanceof Z0);
    }

    @Override
    @NotNull
    public final yf.f<T> e() {
        return this.f85753e;
    }

    @Override
    @Nullable
    public Throwable f(@Nullable Object obj) {
        Throwable f10 = super.f(obj);
        if (f10 != null) {
            return f10;
        }
        return null;
    }

    @Override
    @Nullable
    public Bf.e getCallerFrame() {
        yf.f<T> fVar = this.f85753e;
        if (fVar instanceof Bf.e) {
            return (Bf.e) fVar;
        }
        return null;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return this.f85754f;
    }

    @Override
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T> T h(@Nullable Object obj) {
        return obj instanceof C13090C ? (T) ((C13090C) obj).f85597a : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void i(@NotNull AbstractC13100M abstractC13100M, @NotNull Throwable th2) {
        yf.f<T> fVar = this.f85753e;
        Object[] objArr = 0;
        C14251l c14251l = fVar instanceof C14251l ? (C14251l) fVar : null;
        W(this, new C13091D(th2, false, 2, objArr == true ? 1 : 0), (c14251l != null ? c14251l.f97075e : null) == abstractC13100M ? 4 : this.f85726d, null, 4, null);
    }

    @Override
    public boolean isActive() {
        return F() instanceof Z0;
    }

    @Override
    public boolean isCancelled() {
        return F() instanceof C13140t;
    }

    @Override
    @Nullable
    public Object k(T t10, @Nullable Object obj, @Nullable Mf.l<? super Throwable, nf.P0> lVar) {
        return Z(t10, obj, lVar);
    }

    @Override
    @Nullable
    public Object l() {
        return F();
    }

    public final Void m(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    public final void n(Mf.l<? super Throwable, nf.P0> lVar, Throwable th2) {
        try {
            lVar.invoke(th2);
        } catch (Throwable th3) {
            O.b(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + ((Object) this), th3));
        }
    }

    @Override
    public void o(T t10, @Nullable Mf.l<? super Throwable, nf.P0> lVar) {
        V(t10, this.f85726d, lVar);
    }

    public final void p(@NotNull AbstractC13129n abstractC13129n, @Nullable Throwable th2) {
        try {
            abstractC13129n.y(th2);
        } catch (Throwable th3) {
            O.b(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + ((Object) this), th3));
        }
    }

    public final void q(Mf.a<nf.P0> aVar) {
        try {
            aVar.invoke();
        } catch (Throwable th2) {
            O.b(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + ((Object) this), th2));
        }
    }

    public final void r(@NotNull Mf.l<? super Throwable, nf.P0> lVar, @NotNull Throwable th2) {
        try {
            lVar.invoke(th2);
        } catch (Throwable th3) {
            O.b(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + ((Object) this), th3));
        }
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        W(this, C13096I.c(obj, this), this.f85726d, null, 4, null);
    }

    public final void s(mg.P<?> p10, Throwable th2) {
        int i10 = f85750g.get(this) & 536870911;
        if (i10 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            p10.q(i10, th2, getContext());
        } catch (Throwable th3) {
            O.b(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + ((Object) this), th3));
        }
    }

    @Override
    public void t(@NotNull mg.P<?> p10, int i10) {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85750g;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        I(p10);
    }

    @NotNull
    public String toString() {
        return Q() + '(' + W.c(this.f85753e) + "){" + G() + "}@" + W.b(this);
    }

    public final boolean u(Throwable th2) {
        if (!J()) {
            return false;
        }
        yf.f<T> fVar = this.f85753e;
        kotlin.jvm.internal.M.n(fVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((C14251l) fVar).v(th2);
    }

    public final void v() {
        InterfaceC13128m0 A10 = A();
        if (A10 == null) {
            return;
        }
        A10.dispose();
        f85752i.set(this, Y0.f85696b);
    }

    public final void w() {
        if (J()) {
            return;
        }
        v();
    }

    @Override
    public void x(@NotNull AbstractC13100M abstractC13100M, T t10) {
        yf.f<T> fVar = this.f85753e;
        C14251l c14251l = fVar instanceof C14251l ? (C14251l) fVar : null;
        W(this, t10, (c14251l != null ? c14251l.f97075e : null) == abstractC13100M ? 4 : this.f85726d, null, 4, null);
    }

    public final void y(int i10) {
        if (Y()) {
            return;
        }
        C13118h0.a(this, i10);
    }

    @NotNull
    public Throwable z(@NotNull K0 k02) {
        return k02.Q();
    }
}
