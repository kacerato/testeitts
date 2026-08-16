package rg;

import Bf.h;
import Lf.x;
import Mf.l;
import Mf.q;
import eg.AbstractC13100M;
import eg.C13135q;
import eg.C13138s;
import eg.F0;
import eg.InterfaceC13128m0;
import eg.InterfaceC13133p;
import eg.InterfaceC13153z0;
import eg.W;
import eg.y1;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import mg.P;
import mg.T;
import nf.P0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.i;
import pg.m;
import pg.n;
import yf.j;

@t0({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n332#2,12:311\n1#3:323\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n175#1:311,12\n*E\n"})
public class C15176b extends C15179e implements InterfaceC15175a {

    @NotNull
    public static final AtomicReferenceFieldUpdater f108955i = AtomicReferenceFieldUpdater.newUpdater(C15176b.class, Object.class, "owner");

    @NotNull
    public final q<m<?>, Object, Object, l<Throwable, P0>> f108956h;

    @x
    @Nullable
    private volatile Object owner;

    @t0({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
    public final class a implements InterfaceC13133p<P0>, y1 {

        @Lf.g
        @NotNull
        public final C13135q<P0> f108957b;

        @Lf.g
        @Nullable
        public final Object f108958c;

        public static final class C1997a extends O implements l<Throwable, P0> {

            public final C15176b f108960b;

            public final a f108961c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1997a(C15176b c15176b, a aVar) {
                super(1);
                this.f108960b = c15176b;
                this.f108961c = aVar;
            }

            @Override
            public P0 invoke(Throwable th2) {
                invoke2(th2);
                return P0.f98194a;
            }

            public final void invoke2(@NotNull Throwable th2) {
                this.f108960b.i(this.f108961c.f108958c);
            }
        }

        @t0({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
        public static final class C1998b extends O implements l<Throwable, P0> {

            public final C15176b f108962b;

            public final a f108963c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1998b(C15176b c15176b, a aVar) {
                super(1);
                this.f108962b = c15176b;
                this.f108963c = aVar;
            }

            @Override
            public P0 invoke(Throwable th2) {
                invoke2(th2);
                return P0.f98194a;
            }

            public final void invoke2(@NotNull Throwable th2) {
                C15176b.f108955i.set(this.f108962b, this.f108963c.f108958c);
                this.f108962b.i(this.f108963c.f108958c);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull C13135q<? super P0> c13135q, @Nullable Object obj) {
            this.f108957b = c13135q;
            this.f108958c = obj;
        }

        @Override
        @F0
        public void B(@NotNull Object obj) {
            this.f108957b.B(obj);
        }

        @Override
        @F0
        @Nullable
        public Object E(@NotNull Throwable th2) {
            return this.f108957b.E(th2);
        }

        @Override
        public void K(@NotNull l<? super Throwable, P0> lVar) {
            this.f108957b.K(lVar);
        }

        @Override
        @F0
        public void O() {
            this.f108957b.O();
        }

        @Override
        public void o(@NotNull P0 p02, @Nullable l<? super Throwable, P0> lVar) {
            C15176b.f108955i.set(C15176b.this, this.f108958c);
            this.f108957b.o(p02, new C1997a(C15176b.this, this));
        }

        @Override
        public boolean b(@Nullable Throwable th2) {
            return this.f108957b.b(th2);
        }

        @Override
        @InterfaceC13153z0
        public void x(@NotNull AbstractC13100M abstractC13100M, @NotNull P0 p02) {
            this.f108957b.x(abstractC13100M, p02);
        }

        @Override
        public boolean d() {
            return this.f108957b.d();
        }

        @Override
        @F0
        @Nullable
        public Object C(@NotNull P0 p02, @Nullable Object obj) {
            return this.f108957b.C(p02, obj);
        }

        @Override
        @Nullable
        public Object k(@NotNull P0 p02, @Nullable Object obj, @Nullable l<? super Throwable, P0> lVar) {
            Object k10 = this.f108957b.k(p02, obj, new C1998b(C15176b.this, this));
            if (k10 != null) {
                C15176b.f108955i.set(C15176b.this, this.f108958c);
            }
            return k10;
        }

        @Override
        @NotNull
        public j getContext() {
            return this.f108957b.getContext();
        }

        @Override
        @InterfaceC13153z0
        public void i(@NotNull AbstractC13100M abstractC13100M, @NotNull Throwable th2) {
            this.f108957b.i(abstractC13100M, th2);
        }

        @Override
        public boolean isActive() {
            return this.f108957b.isActive();
        }

        @Override
        public boolean isCancelled() {
            return this.f108957b.isCancelled();
        }

        @Override
        public void resumeWith(@NotNull Object obj) {
            this.f108957b.resumeWith(obj);
        }

        @Override
        public void t(@NotNull P<?> p10, int i10) {
            this.f108957b.t(p10, i10);
        }
    }

    @t0({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
    public final class C1999b<Q> implements n<Q> {

        @Lf.g
        @NotNull
        public final n<Q> f108964b;

        @Lf.g
        @Nullable
        public final Object f108965c;

        public C1999b(@NotNull n<Q> nVar, @Nullable Object obj) {
            this.f108964b = nVar;
            this.f108965c = obj;
        }

        @Override
        @NotNull
        public j getContext() {
            return this.f108964b.getContext();
        }

        @Override
        public void o(@NotNull InterfaceC13128m0 interfaceC13128m0) {
            this.f108964b.o(interfaceC13128m0);
        }

        @Override
        public void t(@NotNull P<?> p10, int i10) {
            this.f108964b.t(p10, i10);
        }

        @Override
        public void w(@Nullable Object obj) {
            C15176b.f108955i.set(C15176b.this, this.f108965c);
            this.f108964b.w(obj);
        }

        @Override
        public boolean x(@NotNull Object obj, @Nullable Object obj2) {
            boolean x10 = this.f108964b.x(obj, obj2);
            C15176b c15176b = C15176b.this;
            if (x10) {
                C15176b.f108955i.set(c15176b, this.f108965c);
            }
            return x10;
        }
    }

    public class c extends I implements q<C15176b, m<?>, Object, P0> {

        public static final c f108967b = new c();

        public c() {
            super(3, C15176b.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull C15176b c15176b, @NotNull m<?> mVar, @Nullable Object obj) {
            c15176b.C(mVar, obj);
        }

        @Override
        public P0 n(C15176b c15176b, m<?> mVar, Object obj) {
            b(c15176b, mVar, obj);
            return P0.f98194a;
        }
    }

    public class d extends I implements q<C15176b, Object, Object, Object> {

        public static final d f108968b = new d();

        public d() {
            super(3, C15176b.class, "onLockProcessResult", "onLockProcessResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull C15176b c15176b, @Nullable Object obj, @Nullable Object obj2) {
            return c15176b.B(obj, obj2);
        }
    }

    public static final class e extends O implements q<m<?>, Object, Object, l<? super Throwable, ? extends P0>> {

        public static final class a extends O implements l<Throwable, P0> {

            public final C15176b f108970b;

            public final Object f108971c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(C15176b c15176b, Object obj) {
                super(1);
                this.f108970b = c15176b;
                this.f108971c = obj;
            }

            @Override
            public P0 invoke(Throwable th2) {
                invoke2(th2);
                return P0.f98194a;
            }

            public final void invoke2(@NotNull Throwable th2) {
                this.f108970b.i(this.f108971c);
            }
        }

        public e() {
            super(3);
        }

        @Override
        @NotNull
        public final l<Throwable, P0> n(@NotNull m<?> mVar, @Nullable Object obj, @Nullable Object obj2) {
            return new a(C15176b.this, obj);
        }
    }

    public C15176b(boolean z10) {
        super(1, z10 ? 1 : 0);
        this.owner = z10 ? null : C15177c.f108972a;
        this.f108956h = new e();
    }

    public static void x() {
    }

    public static Object z(C15176b c15176b, Object obj, yf.f<? super P0> fVar) {
        Object A10;
        return (!c15176b.b(obj) && (A10 = c15176b.A(obj, fVar)) == Af.d.l()) ? A10 : P0.f98194a;
    }

    public final Object A(Object obj, yf.f<? super P0> fVar) {
        C13135q b10 = C13138s.b(Af.c.e(fVar));
        try {
            l(new a(b10, obj));
            Object D10 = b10.D();
            if (D10 == Af.d.l()) {
                h.c(fVar);
            }
            return D10 == Af.d.l() ? D10 : P0.f98194a;
        } catch (Throwable th2) {
            b10.T();
            throw th2;
        }
    }

    @Nullable
    public Object B(@Nullable Object obj, @Nullable Object obj2) {
        T t10;
        t10 = C15177c.f108973b;
        if (!M.g(obj2, t10)) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    public void C(@NotNull m<?> mVar, @Nullable Object obj) {
        T t10;
        if (obj == null || !d(obj)) {
            M.n(mVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
            s(new C1999b((n) mVar, obj), obj);
        } else {
            t10 = C15177c.f108973b;
            mVar.w(t10);
        }
    }

    public final int D(Object obj) {
        while (!a()) {
            if (obj == null) {
                return 1;
            }
            int y10 = y(obj);
            if (y10 == 1) {
                return 2;
            }
            if (y10 == 2) {
                return 1;
            }
        }
        f108955i.set(this, obj);
        return 0;
    }

    @Override
    public boolean b(@Nullable Object obj) {
        int D10 = D(obj);
        if (D10 == 0) {
            return true;
        }
        if (D10 == 1) {
            return false;
        }
        if (D10 != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    @Override
    public boolean c() {
        return f() == 0;
    }

    @Override
    public boolean d(@NotNull Object obj) {
        return y(obj) == 1;
    }

    @Override
    @NotNull
    public i<Object, InterfaceC15175a> e() {
        c cVar = c.f108967b;
        M.n(cVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        q qVar = (q) w0.q(cVar, 3);
        d dVar = d.f108968b;
        M.n(dVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new pg.j(this, qVar, (q) w0.q(dVar, 3), this.f108956h);
    }

    @Override
    @Nullable
    public Object h(@Nullable Object obj, @NotNull yf.f<? super P0> fVar) {
        return z(this, obj, fVar);
    }

    @Override
    public void i(@Nullable Object obj) {
        T t10;
        T t11;
        while (c()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f108955i;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            t10 = C15177c.f108972a;
            if (obj2 != t10) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                t11 = C15177c.f108972a;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj2, t11)) {
                    release();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    @NotNull
    public String toString() {
        return "Mutex@" + W.b(this) + "[isLocked=" + c() + ",owner=" + f108955i.get(this) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public final int y(Object obj) {
        T t10;
        while (c()) {
            Object obj2 = f108955i.get(this);
            t10 = C15177c.f108972a;
            if (obj2 != t10) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }
}
