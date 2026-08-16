package mg;

import eg.AbstractC13100M;
import eg.AbstractC13116g0;
import eg.AbstractC13136q0;
import eg.C13092E;
import eg.C13096I;
import eg.C13099L;
import eg.C13135q;
import eg.InterfaceC13133p;
import eg.K0;
import eg.n1;
import eg.w1;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n243#1,8:381\n255#1:389\n256#1,2:400\n258#1:404\n1#2:318\n1#2:324\n1#2:365\n297#3,5:319\n302#3,12:325\n314#3:359\n297#3,5:360\n302#3,12:366\n314#3:419\n200#4,3:337\n203#4,14:345\n200#4,3:378\n203#4,14:405\n95#5,5:340\n107#5,10:390\n118#5,2:402\n107#5,13:420\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n224#1:381,8\n225#1:389\n225#1:400,2\n225#1:404\n202#1:324\n223#1:365\n202#1:319,5\n202#1:325,12\n202#1:359\n223#1:360,5\n223#1:366,12\n223#1:419\n202#1:337,3\n202#1:345,14\n223#1:378,3\n223#1:405,14\n203#1:340,5\n225#1:390,10\n225#1:402,2\n255#1:420,13\n*E\n"})
@InterfaceC14410f0
public final class C14251l<T> extends AbstractC13116g0<T> implements Bf.e, yf.f<T> {

    @NotNull
    public static final AtomicReferenceFieldUpdater f97074i = AtomicReferenceFieldUpdater.newUpdater(C14251l.class, Object.class, "_reusableCancellableContinuation");

    @Lf.x
    @Nullable
    private volatile Object _reusableCancellableContinuation;

    @Lf.g
    @NotNull
    public final AbstractC13100M f97075e;

    @Lf.g
    @NotNull
    public final yf.f<T> f97076f;

    @Lf.g
    @Nullable
    public Object f97077g;

    @Lf.g
    @NotNull
    public final Object f97078h;

    /* JADX WARN: Multi-variable type inference failed */
    public C14251l(@NotNull AbstractC13100M abstractC13100M, @NotNull yf.f<? super T> fVar) {
        super(-1);
        this.f97075e = abstractC13100M;
        this.f97076f = fVar;
        this.f97077g = C14252m.a();
        this.f97078h = Z.b(getContext());
    }

    public static void r() {
    }

    private final void u(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public final void A(@NotNull Object obj) {
        yf.f<T> fVar = this.f97076f;
        Object obj2 = this.f97078h;
        yf.j context = fVar.getContext();
        Object c10 = Z.c(context, obj2);
        w1<?> g10 = c10 != Z.f97043a ? C13099L.g(fVar, context, c10) : null;
        try {
            this.f97076f.resumeWith(obj);
            P0 p02 = P0.f98194a;
        } finally {
            kotlin.jvm.internal.J.d(1);
            if (g10 == null || g10.C1()) {
                Z.a(context, c10);
            }
            kotlin.jvm.internal.J.c(1);
        }
    }

    @Nullable
    public final Throwable D(@NotNull InterfaceC13133p<?> interfaceC13133p) {
        T t10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97074i;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            t10 = C14252m.f97080b;
            if (obj != t10) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(f97074i, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f97074i, this, t10, interfaceC13133p));
        return null;
    }

    @Override
    public void c(@Nullable Object obj, @NotNull Throwable th2) {
        if (obj instanceof C13092E) {
            ((C13092E) obj).f85606b.invoke(th2);
        }
    }

    @Override
    @NotNull
    public yf.f<T> e() {
        return this;
    }

    @Override
    @Nullable
    public Bf.e getCallerFrame() {
        yf.f<T> fVar = this.f97076f;
        if (fVar instanceof Bf.e) {
            return (Bf.e) fVar;
        }
        return null;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return this.f97076f.getContext();
    }

    @Override
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    @Nullable
    public Object l() {
        Object obj = this.f97077g;
        this.f97077g = C14252m.a();
        return obj;
    }

    public final void m() {
        do {
        } while (f97074i.get(this) == C14252m.f97080b);
    }

    @Nullable
    public final C13135q<T> n() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97074i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f97074i.set(this, C14252m.f97080b);
                return null;
            }
            if (obj instanceof C13135q) {
                if (androidx.concurrent.futures.a.a(f97074i, this, obj, C14252m.f97080b)) {
                    return (C13135q) obj;
                }
            } else if (obj != C14252m.f97080b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void p(@NotNull yf.j jVar, T t10) {
        this.f97077g = t10;
        this.f85726d = 1;
        this.f97075e.dispatchYield(jVar, this);
    }

    public final C13135q<?> q() {
        Object obj = f97074i.get(this);
        if (obj instanceof C13135q) {
            return (C13135q) obj;
        }
        return null;
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        yf.j context = this.f97076f.getContext();
        Object d10 = C13096I.d(obj, null, 1, null);
        if (this.f97075e.isDispatchNeeded(context)) {
            this.f97077g = d10;
            this.f85726d = 0;
            this.f97075e.dispatch(context, this);
            return;
        }
        AbstractC13136q0 b10 = n1.f85746a.b();
        if (b10.e0()) {
            this.f97077g = d10;
            this.f85726d = 0;
            b10.v(this);
            return;
        }
        b10.A(true);
        try {
            yf.j context2 = getContext();
            Object c10 = Z.c(context2, this.f97078h);
            try {
                this.f97076f.resumeWith(obj);
                P0 p02 = P0.f98194a;
                do {
                } while (b10.i0());
            } finally {
                Z.a(context2, c10);
            }
        } catch (Throwable th2) {
            try {
                j(th2, null);
            } finally {
                b10.s(true);
            }
        }
    }

    public final boolean s() {
        return f97074i.get(this) != null;
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + ((Object) this.f97075e) + ", " + eg.W.c(this.f97076f) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public final boolean v(@NotNull Throwable th2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97074i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            T t10 = C14252m.f97080b;
            if (kotlin.jvm.internal.M.g(obj, t10)) {
                if (androidx.concurrent.futures.a.a(f97074i, this, t10, th2)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.a.a(f97074i, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void w() {
        m();
        C13135q<?> q10 = q();
        if (q10 != null) {
            q10.v();
        }
    }

    public final void y(@NotNull Object obj, @Nullable Mf.l<? super Throwable, P0> lVar) {
        Object b10 = C13096I.b(obj, lVar);
        if (this.f97075e.isDispatchNeeded(getContext())) {
            this.f97077g = b10;
            this.f85726d = 1;
            this.f97075e.dispatch(getContext(), this);
            return;
        }
        AbstractC13136q0 b11 = n1.f85746a.b();
        if (b11.e0()) {
            this.f97077g = b10;
            this.f85726d = 1;
            b11.v(this);
            return;
        }
        b11.A(true);
        try {
            K0 k02 = (K0) getContext().get(K0.f85619y4);
            if (k02 == null || k02.isActive()) {
                yf.f<T> fVar = this.f97076f;
                Object obj2 = this.f97078h;
                yf.j context = fVar.getContext();
                Object c10 = Z.c(context, obj2);
                w1<?> g10 = c10 != Z.f97043a ? C13099L.g(fVar, context, c10) : null;
                try {
                    this.f97076f.resumeWith(obj);
                    P0 p02 = P0.f98194a;
                } finally {
                    kotlin.jvm.internal.J.d(1);
                    if (g10 == null || g10.C1()) {
                        Z.a(context, c10);
                    }
                    kotlin.jvm.internal.J.c(1);
                }
            } else {
                CancellationException Q10 = k02.Q();
                c(b10, Q10);
                C14416i0.a aVar = C14416i0.f98201c;
                resumeWith(C14416i0.b(C14418j0.a(Q10)));
            }
            do {
            } while (b11.i0());
            kotlin.jvm.internal.J.d(1);
        } catch (Throwable th2) {
            try {
                j(th2, null);
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th3) {
                kotlin.jvm.internal.J.d(1);
                b11.s(true);
                kotlin.jvm.internal.J.c(1);
                throw th3;
            }
        }
        b11.s(true);
        kotlin.jvm.internal.J.c(1);
    }

    public final boolean z(@Nullable Object obj) {
        K0 k02 = (K0) getContext().get(K0.f85619y4);
        if (k02 == null || k02.isActive()) {
            return false;
        }
        CancellationException Q10 = k02.Q();
        c(obj, Q10);
        C14416i0.a aVar = C14416i0.f98201c;
        resumeWith(C14416i0.b(C14418j0.a(Q10)));
        return true;
    }
}
