package Be;

import Ke.C2674a;
import Ke.C2675b;
import Ke.C2676c;
import Ke.C2677d;
import Ke.C2678e;
import Ke.C2679f;
import Ke.C2680g;
import Ke.C2681h;
import Ke.C2682i;
import Ke.C2683j;
import Ke.C2684k;
import Ke.C2685l;
import Ke.C2686m;
import Ke.C2687n;
import Ke.C2688o;
import Ke.C2689p;
import Ke.C2690q;
import Ke.C2691s;
import Me.C2829o;
import Qe.C2989g;
import af.C3604b;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class AbstractC2353c implements InterfaceC2359i {
    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c B(InterfaceC2357g interfaceC2357g) {
        He.b.g(interfaceC2357g, "source is null");
        return Ye.a.O(new C2680g(interfaceC2357g));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c C(Callable<? extends InterfaceC2359i> callable) {
        He.b.g(callable, "completableSupplier");
        return Ye.a.O(new C2681h(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c R(Throwable th2) {
        He.b.g(th2, "error is null");
        return Ye.a.O(new C2688o(th2));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c S(Callable<? extends Throwable> callable) {
        He.b.g(callable, "errorSupplier is null");
        return Ye.a.O(new C2689p(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c T(Fe.a aVar) {
        He.b.g(aVar, "run is null");
        return Ye.a.O(new C2690q(aVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c U(Callable<?> callable) {
        He.b.g(callable, "callable is null");
        return Ye.a.O(new Ke.r(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c V(Future<?> future) {
        He.b.g(future, "future is null");
        return T(He.a.j(future));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static AbstractC2353c V0(long j10, TimeUnit timeUnit) {
        return W0(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2353c W(y<T> yVar) {
        He.b.g(yVar, "maybe is null");
        return Ye.a.O(new Me.Q(yVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static AbstractC2353c W0(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.O(new Ke.N(j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2353c X(G<T> g10) {
        He.b.g(g10, "observable is null");
        return Ye.a.O(new C2691s(g10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public static <T> AbstractC2353c Y(hn.b<T> bVar) {
        He.b.g(bVar, "publisher is null");
        return Ye.a.O(new Ke.t(bVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c Z(Runnable runnable) {
        He.b.g(runnable, "run is null");
        return Ye.a.O(new Ke.u(runnable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2353c a0(Q<T> q10) {
        He.b.g(q10, "single is null");
        return Ye.a.O(new Ke.v(q10));
    }

    public static NullPointerException a1(Throwable th2) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th2);
        return nullPointerException;
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c e0(hn.b<? extends InterfaceC2359i> bVar) {
        return h0(bVar, Integer.MAX_VALUE, false);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c e1(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "source is null");
        if (interfaceC2359i instanceof AbstractC2353c) {
            throw new IllegalArgumentException("Use of unsafeCreate(Completable)!");
        }
        return Ye.a.O(new Ke.w(interfaceC2359i));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c f0(hn.b<? extends InterfaceC2359i> bVar, int i10) {
        return h0(bVar, i10, false);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c g(Iterable<? extends InterfaceC2359i> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.O(new C2674a(null, iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c g0(Iterable<? extends InterfaceC2359i> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.O(new Ke.E(iterable));
    }

    @Ce.d
    @Ce.h("none")
    public static <R> AbstractC2353c g1(Callable<R> callable, Fe.o<? super R, ? extends InterfaceC2359i> oVar, Fe.g<? super R> gVar) {
        return h1(callable, oVar, gVar, true);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c h(InterfaceC2359i... interfaceC2359iArr) {
        He.b.g(interfaceC2359iArr, "sources is null");
        return interfaceC2359iArr.length == 0 ? u() : interfaceC2359iArr.length == 1 ? i1(interfaceC2359iArr[0]) : Ye.a.O(new C2674a(interfaceC2359iArr, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static AbstractC2353c h0(hn.b<? extends InterfaceC2359i> bVar, int i10, boolean z10) {
        He.b.g(bVar, "sources is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.O(new Ke.A(bVar, i10, z10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <R> AbstractC2353c h1(Callable<R> callable, Fe.o<? super R, ? extends InterfaceC2359i> oVar, Fe.g<? super R> gVar, boolean z10) {
        He.b.g(callable, "resourceSupplier is null");
        He.b.g(oVar, "completableFunction is null");
        He.b.g(gVar, "disposer is null");
        return Ye.a.O(new Ke.S(callable, oVar, gVar, z10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c i0(InterfaceC2359i... interfaceC2359iArr) {
        He.b.g(interfaceC2359iArr, "sources is null");
        return interfaceC2359iArr.length == 0 ? u() : interfaceC2359iArr.length == 1 ? i1(interfaceC2359iArr[0]) : Ye.a.O(new Ke.B(interfaceC2359iArr));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c i1(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "source is null");
        return interfaceC2359i instanceof AbstractC2353c ? Ye.a.O((AbstractC2353c) interfaceC2359i) : Ye.a.O(new Ke.w(interfaceC2359i));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c j0(InterfaceC2359i... interfaceC2359iArr) {
        He.b.g(interfaceC2359iArr, "sources is null");
        return Ye.a.O(new Ke.C(interfaceC2359iArr));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c k0(hn.b<? extends InterfaceC2359i> bVar) {
        return h0(bVar, Integer.MAX_VALUE, true);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c l0(hn.b<? extends InterfaceC2359i> bVar, int i10) {
        return h0(bVar, i10, true);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c m0(Iterable<? extends InterfaceC2359i> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.O(new Ke.D(iterable));
    }

    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c o0() {
        return Ye.a.O(Ke.F.f11148b);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c u() {
        return Ye.a.O(C2687n.f11309b);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c w(hn.b<? extends InterfaceC2359i> bVar) {
        return x(bVar, 2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static AbstractC2353c x(hn.b<? extends InterfaceC2359i> bVar, int i10) {
        He.b.g(bVar, "sources is null");
        He.b.h(i10, "prefetch");
        return Ye.a.O(new C2677d(bVar, i10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c y(Iterable<? extends InterfaceC2359i> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.O(new C2679f(iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static AbstractC2353c z(InterfaceC2359i... interfaceC2359iArr) {
        He.b.g(interfaceC2359iArr, "sources is null");
        return interfaceC2359iArr.length == 0 ? u() : interfaceC2359iArr.length == 1 ? i1(interfaceC2359iArr[0]) : Ye.a.O(new C2678e(interfaceC2359iArr));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c A(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.O(new C2675b(this, interfaceC2359i));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c A0(long j10, Fe.r<? super Throwable> rVar) {
        return Y(Y0().r5(j10, rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c B0(Fe.d<? super Integer, ? super Throwable> dVar) {
        return Y(Y0().s5(dVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c C0(Fe.r<? super Throwable> rVar) {
        return Y(Y0().t5(rVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2353c D(long j10, TimeUnit timeUnit) {
        return F(j10, timeUnit, C3604b.a(), false);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c D0(Fe.o<? super AbstractC2362l<Throwable>, ? extends hn.b<?>> oVar) {
        return Y(Y0().v5(oVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c E(long j10, TimeUnit timeUnit, J j11) {
        return F(j10, timeUnit, j11, false);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c E0(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return z(interfaceC2359i, this);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c F(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.O(new C2682i(this, j10, timeUnit, j11, z10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <T> AbstractC2362l<T> F0(hn.b<T> bVar) {
        He.b.g(bVar, "other is null");
        return Y0().c6(bVar);
    }

    @Ce.e
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2353c G(long j10, TimeUnit timeUnit) {
        return H(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <T> B<T> G0(B<T> b10) {
        He.b.g(b10, "other is null");
        return b10.o1(b1());
    }

    @Ce.e
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c H(long j10, TimeUnit timeUnit, J j11) {
        return W0(j10, timeUnit, j11).j(this);
    }

    @Ce.h("none")
    public final De.c H0() {
        Je.o oVar = new Je.o();
        b(oVar);
        return oVar;
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c I(Fe.a aVar) {
        Fe.g<? super De.c> h10 = He.a.h();
        Fe.g<? super Throwable> h11 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return O(h10, h11, aVar2, aVar2, aVar, aVar2);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final De.c I0(Fe.a aVar) {
        He.b.g(aVar, "onComplete is null");
        Je.j jVar = new Je.j(aVar);
        b(jVar);
        return jVar;
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c J(Fe.a aVar) {
        He.b.g(aVar, "onFinally is null");
        return Ye.a.O(new C2685l(this, aVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final De.c J0(Fe.a aVar, Fe.g<? super Throwable> gVar) {
        He.b.g(gVar, "onError is null");
        He.b.g(aVar, "onComplete is null");
        Je.j jVar = new Je.j(gVar, aVar);
        b(jVar);
        return jVar;
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c K(Fe.a aVar) {
        Fe.g<? super De.c> h10 = He.a.h();
        Fe.g<? super Throwable> h11 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return O(h10, h11, aVar, aVar2, aVar2, aVar2);
    }

    public abstract void K0(InterfaceC2356f interfaceC2356f);

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c L(Fe.a aVar) {
        Fe.g<? super De.c> h10 = He.a.h();
        Fe.g<? super Throwable> h11 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return O(h10, h11, aVar2, aVar2, aVar2, aVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c L0(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.O(new Ke.K(this, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c M(Fe.g<? super Throwable> gVar) {
        Fe.g<? super De.c> h10 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return O(h10, gVar, aVar, aVar, aVar, aVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <E extends InterfaceC2356f> E M0(E e10) {
        b(e10);
        return e10;
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c N(Fe.g<? super Throwable> gVar) {
        He.b.g(gVar, "onEvent is null");
        return Ye.a.O(new C2686m(this, gVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c N0(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.O(new Ke.L(this, interfaceC2359i));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c O(Fe.g<? super De.c> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2, Fe.a aVar3, Fe.a aVar4) {
        He.b.g(gVar, "onSubscribe is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        He.b.g(aVar2, "onTerminate is null");
        He.b.g(aVar3, "onAfterTerminate is null");
        He.b.g(aVar4, "onDispose is null");
        return Ye.a.O(new Ke.I(this, gVar, gVar2, aVar, aVar2, aVar3, aVar4));
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<Void> O0() {
        We.n<Void> nVar = new We.n<>();
        b(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c P(Fe.g<? super De.c> gVar) {
        Fe.g<? super Throwable> h10 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return O(gVar, h10, aVar, aVar, aVar, aVar);
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<Void> P0(boolean z10) {
        We.n<Void> nVar = new We.n<>();
        if (z10) {
            nVar.cancel();
        }
        b(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c Q(Fe.a aVar) {
        Fe.g<? super De.c> h10 = He.a.h();
        Fe.g<? super Throwable> h11 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return O(h10, h11, aVar2, aVar, aVar2, aVar2);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2353c Q0(long j10, TimeUnit timeUnit) {
        return U0(j10, timeUnit, C3604b.a(), null);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2353c R0(long j10, TimeUnit timeUnit, InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return U0(j10, timeUnit, C3604b.a(), interfaceC2359i);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c S0(long j10, TimeUnit timeUnit, J j11) {
        return U0(j10, timeUnit, j11, null);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c T0(long j10, TimeUnit timeUnit, J j11, InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return U0(j10, timeUnit, j11, interfaceC2359i);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c U0(long j10, TimeUnit timeUnit, J j11, InterfaceC2359i interfaceC2359i) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.O(new Ke.M(this, j10, timeUnit, j11, interfaceC2359i));
    }

    @Ce.d
    @Ce.h("none")
    public final <U> U X0(Fe.o<? super AbstractC2353c, U> oVar) {
        try {
            return (U) ((Fe.o) He.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <T> AbstractC2362l<T> Y0() {
        return this instanceof Ie.b ? ((Ie.b) this).f() : Ye.a.P(new Ke.O(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <T> AbstractC2368s<T> Z0() {
        return this instanceof Ie.c ? ((Ie.c) this).d() : Ye.a.Q(new Me.K(this));
    }

    @Override
    @Ce.h("none")
    public final void b(InterfaceC2356f interfaceC2356f) {
        He.b.g(interfaceC2356f, "observer is null");
        try {
            InterfaceC2356f d02 = Ye.a.d0(this, interfaceC2356f);
            He.b.g(d02, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            K0(d02);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
            throw a1(th2);
        }
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c b0() {
        return Ye.a.O(new Ke.x(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <T> B<T> b1() {
        return this instanceof Ie.d ? ((Ie.d) this).c() : Ye.a.R(new Ke.P(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c c0(InterfaceC2358h interfaceC2358h) {
        He.b.g(interfaceC2358h, "onLift is null");
        return Ye.a.O(new Ke.y(this, interfaceC2358h));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <T> K<T> c1(Callable<? extends T> callable) {
        He.b.g(callable, "completionValueSupplier is null");
        return Ye.a.S(new Ke.Q(this, callable, null));
    }

    @Ce.e
    @Ce.d
    @Ce.h("none")
    public final <T> K<A<T>> d0() {
        return Ye.a.S(new Ke.z(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <T> K<T> d1(T t10) {
        He.b.g(t10, "completionValue is null");
        return Ye.a.S(new Ke.Q(this, null, t10));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c f1(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.O(new C2684k(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c i(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return h(this, interfaceC2359i);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c j(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "next is null");
        return Ye.a.O(new C2675b(this, interfaceC2359i));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <T> AbstractC2362l<T> k(hn.b<T> bVar) {
        He.b.g(bVar, "next is null");
        return Ye.a.P(new Ne.b(this, bVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <T> AbstractC2368s<T> l(y<T> yVar) {
        He.b.g(yVar, "next is null");
        return Ye.a.Q(new C2829o(yVar, this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <T> B<T> m(G<T> g10) {
        He.b.g(g10, "next is null");
        return Ye.a.R(new Ne.a(this, g10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <T> K<T> n(Q<T> q10) {
        He.b.g(q10, "next is null");
        return Ye.a.S(new C2989g(q10, this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c n0(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return i0(this, interfaceC2359i);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> R o(@Ce.f InterfaceC2354d<? extends R> interfaceC2354d) {
        return (R) ((InterfaceC2354d) He.b.g(interfaceC2354d, "converter is null")).a(this);
    }

    @Ce.h("none")
    public final void p() {
        Je.h hVar = new Je.h();
        b(hVar);
        hVar.d();
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2353c p0(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.O(new Ke.G(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final boolean q(long j10, TimeUnit timeUnit) {
        He.b.g(timeUnit, "unit is null");
        Je.h hVar = new Je.h();
        b(hVar);
        return hVar.c(j10, timeUnit);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c q0() {
        return r0(He.a.c());
    }

    @Ce.g
    @Ce.d
    @Ce.h("none")
    public final Throwable r() {
        Je.h hVar = new Je.h();
        b(hVar);
        return hVar.g();
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c r0(Fe.r<? super Throwable> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.O(new Ke.H(this, rVar));
    }

    @Ce.g
    @Ce.d
    @Ce.h("none")
    public final Throwable s(long j10, TimeUnit timeUnit) {
        He.b.g(timeUnit, "unit is null");
        Je.h hVar = new Je.h();
        b(hVar);
        return hVar.h(j10, timeUnit);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c s0(Fe.o<? super Throwable, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "errorMapper is null");
        return Ye.a.O(new Ke.J(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c t() {
        return Ye.a.O(new C2676c(this));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c t0() {
        return Ye.a.O(new C2683j(this));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c u0() {
        return Y(Y0().V4());
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c v(InterfaceC2360j interfaceC2360j) {
        return i1(((InterfaceC2360j) He.b.g(interfaceC2360j, "transformer is null")).a(this));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c v0(long j10) {
        return Y(Y0().W4(j10));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c w0(Fe.e eVar) {
        return Y(Y0().X4(eVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c x0(Fe.o<? super AbstractC2362l<Object>, ? extends hn.b<?>> oVar) {
        return Y(Y0().Y4(oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c y0() {
        return Y(Y0().p5());
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c z0(long j10) {
        return Y(Y0().q5(j10));
    }
}
