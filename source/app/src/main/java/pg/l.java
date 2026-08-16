package pg;

import Lf.x;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import eg.AbstractC13129n;
import eg.C13135q;
import eg.InterfaceC13128m0;
import eg.InterfaceC13133p;
import eg.InterfaceC13153z0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import mg.P;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.G;
import pf.S;
import pg.InterfaceC14996c;

@t0({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,873:1\n1#2:874\n2624#3,3:875\n1855#3,2:888\n1855#3,2:896\n1855#3,2:898\n314#4,9:878\n323#4,2:890\n19#5:887\n153#6,4:892\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n505#1:875,3\n569#1:888,2\n726#1:896,2\n751#1:898,2\n545#1:878,9\n545#1:890,2\n561#1:887\n711#1:892,4\n*E\n"})
@InterfaceC14410f0
public class l<R> extends AbstractC13129n implements InterfaceC14996c<R>, n<R> {

    @NotNull
    public static final AtomicReferenceFieldUpdater f103928g = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "state");

    @NotNull
    public final yf.j f103929b;

    @Nullable
    public Object f103931d;

    @x
    @Nullable
    private volatile Object state = o.j();

    @Nullable
    public List<l<R>.a> f103930c = new ArrayList(2);

    public int f103932e = -1;

    @Nullable
    public Object f103933f = o.g();

    @t0({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n1#2:874\n*E\n"})
    public final class a {

        @Lf.g
        @NotNull
        public final Object f103934a;

        @NotNull
        public final Mf.q<Object, m<?>, Object, P0> f103935b;

        @NotNull
        public final Mf.q<Object, Object, Object, Object> f103936c;

        @Nullable
        public final Object f103937d;

        @NotNull
        public final Object f103938e;

        @Lf.g
        @Nullable
        public final Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> f103939f;

        @Lf.g
        @Nullable
        public Object f103940g;

        @Lf.g
        public int f103941h = -1;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Object obj, @NotNull Mf.q<Object, ? super m<?>, Object, P0> qVar, @NotNull Mf.q<Object, Object, Object, ? extends Object> qVar2, @Nullable Object obj2, @NotNull Object obj3, @Nullable Mf.q<? super m<?>, Object, Object, ? extends Mf.l<? super Throwable, P0>> qVar3) {
            this.f103934a = obj;
            this.f103935b = qVar;
            this.f103936c = qVar2;
            this.f103937d = obj2;
            this.f103938e = obj3;
            this.f103939f = qVar3;
        }

        @Nullable
        public final Mf.l<Throwable, P0> a(@NotNull m<?> mVar, @Nullable Object obj) {
            Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> qVar = this.f103939f;
            if (qVar != null) {
                return qVar.n(mVar, this.f103937d, obj);
            }
            return null;
        }

        public final void b() {
            Object obj = this.f103940g;
            l<R> lVar = l.this;
            if (obj instanceof P) {
                ((P) obj).q(this.f103941h, null, lVar.getContext());
                return;
            }
            InterfaceC13128m0 interfaceC13128m0 = obj instanceof InterfaceC13128m0 ? (InterfaceC13128m0) obj : null;
            if (interfaceC13128m0 != null) {
                interfaceC13128m0.dispose();
            }
        }

        @Nullable
        public final Object c(@Nullable Object obj, @NotNull yf.f<? super R> fVar) {
            Object obj2 = this.f103938e;
            if (this.f103937d == o.l()) {
                M.n(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Mf.l) obj2).invoke(fVar);
            }
            M.n(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Mf.p) obj2).invoke(obj, fVar);
        }

        @Nullable
        public final Object d(@Nullable Object obj) {
            return this.f103936c.n(this.f103934a, this.f103937d, obj);
        }

        public final boolean e(@NotNull l<R> lVar) {
            this.f103935b.n(this.f103934a, lVar, this.f103937d);
            return lVar.f103933f == o.g();
        }
    }

    @Bf.f(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {0}, l = {431, 434}, m = "doSelectSuspend", n = {"this"}, s = {"L$0"})
    public static final class b extends Bf.d {

        public Object f103943b;

        public Object f103944c;

        public final l<R> f103945d;

        public int f103946e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(l<R> lVar, yf.f<? super b> fVar) {
            super(fVar);
            this.f103945d = lVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f103944c = obj;
            this.f103946e |= Integer.MIN_VALUE;
            return this.f103945d.Z(this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {}, l = {TypedValues.TransitionType.TYPE_STAGGERED}, m = "processResultAndInvokeBlockRecoveringException", n = {}, s = {})
    public static final class c extends Bf.d {

        public Object f103947b;

        public final l<R> f103948c;

        public int f103949d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(l<R> lVar, yf.f<? super c> fVar) {
            super(fVar);
            this.f103948c = lVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f103947b = obj;
            this.f103949d |= Integer.MIN_VALUE;
            return this.f103948c.f0(null, null, this);
        }
    }

    public l(@NotNull yf.j jVar) {
        this.f103929b = jVar;
    }

    @InterfaceC14410f0
    public static <R> Object Y(l<R> lVar, yf.f<? super R> fVar) {
        return lVar.d0() ? lVar.W(fVar) : lVar.Z(fVar);
    }

    public final boolean c0() {
        return f103928g.get(this) == o.h();
    }

    private final boolean d0() {
        return f103928g.get(this) instanceof a;
    }

    private final void e0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    public static void h0(l lVar, a aVar, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        lVar.g0(aVar, z10);
    }

    public final void U(Object obj) {
        List<l<R>.a> list = this.f103930c;
        M.m(list);
        List<l<R>.a> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return;
        }
        Iterator<l<R>.a> it = list2.iterator();
        while (it.hasNext()) {
            if (it.next().f103934a == obj) {
                throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
            }
        }
    }

    public final void V(l<R>.a aVar) {
        List<l<R>.a> list = this.f103930c;
        if (list == null) {
            return;
        }
        for (l<R>.a aVar2 : list) {
            if (aVar2 != aVar) {
                aVar2.b();
            }
        }
        f103928g.set(this, o.i());
        this.f103933f = o.g();
        this.f103930c = null;
    }

    public final Object W(yf.f<? super R> fVar) {
        Object obj = f103928g.get(this);
        M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        l<R>.a aVar = (a) obj;
        Object obj2 = this.f103933f;
        V(aVar);
        return aVar.c(aVar.d(obj2), fVar);
    }

    @InterfaceC14410f0
    @Nullable
    public Object X(@NotNull yf.f<? super R> fVar) {
        return Y(this, fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0057 A[PHI: r6
  0x0057: PHI (r6v5 java.lang.Object) = (r6v4 java.lang.Object), (r6v1 java.lang.Object) binds: [B:17:0x0054, B:10:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object Z(yf.f<? super R> fVar) {
        b bVar;
        int i10;
        l<R> lVar;
        if (fVar instanceof b) {
            bVar = (b) fVar;
            int i11 = bVar.f103946e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f103946e = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f103944c;
                Object l10 = Af.d.l();
                i10 = bVar.f103946e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    bVar.f103943b = this;
                    bVar.f103946e = 1;
                    if (m0(bVar) == l10) {
                        return l10;
                    }
                    lVar = this;
                } else {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            C14418j0.n(obj);
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    lVar = (l) bVar.f103943b;
                    C14418j0.n(obj);
                }
                bVar.f103943b = null;
                bVar.f103946e = 2;
                obj = lVar.W(bVar);
                return obj != l10 ? l10 : obj;
            }
        }
        bVar = new b(this, fVar);
        Object obj2 = bVar.f103944c;
        Object l102 = Af.d.l();
        i10 = bVar.f103946e;
        if (i10 != 0) {
        }
        bVar.f103943b = null;
        bVar.f103946e = 2;
        obj2 = lVar.W(bVar);
        if (obj2 != l102) {
        }
    }

    public final l<R>.a a0(Object obj) {
        List<l<R>.a> list = this.f103930c;
        l<R>.a aVar = null;
        if (list == null) {
            return null;
        }
        Iterator<l<R>.a> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            l<R>.a next = it.next();
            if (next.f103934a == obj) {
                aVar = next;
                break;
            }
        }
        l<R>.a aVar2 = aVar;
        if (aVar2 != null) {
            return aVar2;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    @Override
    public <P, Q> void b(@NotNull i<? super P, ? extends Q> iVar, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar) {
        InterfaceC14996c.a.a(this, iVar, pVar);
    }

    public final boolean b0() {
        Object obj = f103928g.get(this);
        return obj == o.j() || (obj instanceof List);
    }

    @Override
    public <Q> void d(@NotNull g<? extends Q> gVar, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar) {
        h0(this, new a(gVar.d(), gVar.c(), gVar.b(), null, pVar, gVar.a()), false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f0(l<R>.a aVar, Object obj, yf.f<? super R> fVar) {
        c cVar;
        int i10;
        if (fVar instanceof c) {
            cVar = (c) fVar;
            int i11 = cVar.f103949d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f103949d = i11 - Integer.MIN_VALUE;
                Object obj2 = cVar.f103947b;
                Object l10 = Af.d.l();
                i10 = cVar.f103949d;
                if (i10 != 0) {
                    C14418j0.n(obj2);
                    Object d10 = aVar.d(obj);
                    cVar.f103949d = 1;
                    obj2 = aVar.c(d10, cVar);
                    if (obj2 == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj2);
                }
                return obj2;
            }
        }
        cVar = new c(this, fVar);
        Object obj22 = cVar.f103947b;
        Object l102 = Af.d.l();
        i10 = cVar.f103949d;
        if (i10 != 0) {
        }
        return obj22;
    }

    @Lf.j(name = "register")
    public final void g0(@NotNull l<R>.a aVar, boolean z10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f103928g;
        if (atomicReferenceFieldUpdater.get(this) instanceof a) {
            return;
        }
        if (!z10) {
            U(aVar.f103934a);
        }
        if (!aVar.e(this)) {
            atomicReferenceFieldUpdater.set(this, aVar);
            return;
        }
        if (!z10) {
            List<l<R>.a> list = this.f103930c;
            M.m(list);
            list.add(aVar);
        }
        aVar.f103940g = this.f103931d;
        aVar.f103941h = this.f103932e;
        this.f103931d = null;
        this.f103932e = -1;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return this.f103929b;
    }

    @Override
    public void h(@NotNull InterfaceC14998e interfaceC14998e, @NotNull Mf.l<? super yf.f<? super R>, ? extends Object> lVar) {
        h0(this, new a(interfaceC14998e.d(), interfaceC14998e.c(), interfaceC14998e.b(), o.l(), lVar, interfaceC14998e.a()), false, 1, null);
    }

    @Override
    @InterfaceC13153z0
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Replaced with the same extension function", replaceWith = @InterfaceC14412g0(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @Ef.i
    public void i(long j10, @NotNull Mf.l<? super yf.f<? super R>, ? extends Object> lVar) {
        InterfaceC14996c.a.b(this, j10, lVar);
    }

    public final void i0(Object obj) {
        l<R>.a a02 = a0(obj);
        M.m(a02);
        a02.f103940g = null;
        a02.f103941h = -1;
        g0(a02, true);
    }

    @Override
    public P0 invoke(Throwable th2) {
        y(th2);
        return P0.f98194a;
    }

    @NotNull
    public final r j0(@NotNull Object obj, @Nullable Object obj2) {
        return o.e(k0(obj, obj2));
    }

    @Override
    public <P, Q> void k(@NotNull i<? super P, ? extends Q> iVar, P p10, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar) {
        h0(this, new a(iVar.d(), iVar.c(), iVar.b(), p10, pVar, iVar.a()), false, 1, null);
    }

    public final int k0(Object obj, Object obj2) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f103928g;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof InterfaceC13133p) {
                l<R>.a a02 = a0(obj);
                if (a02 == null) {
                    continue;
                } else {
                    Mf.l<Throwable, P0> a10 = a02.a(this, obj2);
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, a02)) {
                        this.f103933f = obj2;
                        if (o.k((InterfaceC13133p) obj3, a10)) {
                            return 0;
                        }
                        this.f103933f = null;
                        return 2;
                    }
                }
            } else {
                if (M.g(obj3, o.i()) ? true : obj3 instanceof a) {
                    return 3;
                }
                if (M.g(obj3, o.h())) {
                    return 2;
                }
                if (M.g(obj3, o.j())) {
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, G.l(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, S.K4((Collection) obj3, obj))) {
                        return 1;
                    }
                }
            }
        }
    }

    public final void l0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, ? extends Object> lVar, Object obj) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, lVar.invoke(obj2)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        r0 = r0.D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
    
        if (r0 != Af.d.l()) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
    
        Bf.h.c(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
    
        if (r0 != Af.d.l()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0075, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0078, code lost:
    
        return nf.P0.f98194a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m0(yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f103928g;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == o.j()) {
                if (androidx.concurrent.futures.a.a(f103928g, this, obj, c13135q)) {
                    c13135q.K(this);
                    break;
                }
            } else if (obj instanceof List) {
                if (androidx.concurrent.futures.a.a(f103928g, this, obj, o.j())) {
                    Iterator it = ((Iterable) obj).iterator();
                    while (it.hasNext()) {
                        i0(it.next());
                    }
                }
            } else {
                if (!(obj instanceof a)) {
                    throw new IllegalStateException(("unexpected state: " + obj).toString());
                }
                c13135q.o(P0.f98194a, ((a) obj).a(this, this.f103933f));
            }
        }
    }

    @Override
    public void o(@NotNull InterfaceC13128m0 interfaceC13128m0) {
        this.f103931d = interfaceC13128m0;
    }

    @Override
    public void t(@NotNull P<?> p10, int i10) {
        this.f103931d = p10;
        this.f103932e = i10;
    }

    @Override
    public void w(@Nullable Object obj) {
        this.f103933f = obj;
    }

    @Override
    public boolean x(@NotNull Object obj, @Nullable Object obj2) {
        return k0(obj, obj2) == 0;
    }

    @Override
    public void y(@Nullable Throwable th2) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f103928g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == o.i()) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, o.h()));
        List<l<R>.a> list = this.f103930c;
        if (list == null) {
            return;
        }
        Iterator<l<R>.a> it = list.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        this.f103933f = o.g();
        this.f103930c = null;
    }
}
