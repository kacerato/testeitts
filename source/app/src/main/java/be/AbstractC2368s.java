package Be;

import Le.C2705e0;
import Le.C2766z;
import Me.C2816b;
import Me.C2817c;
import Me.C2818d;
import Me.C2819e;
import Me.C2820f;
import Me.C2821g;
import Me.C2822h;
import Me.C2823i;
import Me.C2824j;
import Me.C2825k;
import Me.C2826l;
import Me.C2827m;
import Me.C2828n;
import Me.C2830p;
import Me.C2831q;
import Me.C2832s;
import Me.C2833t;
import Me.C2834u;
import Me.C2835v;
import Me.C2836w;
import Me.C2837x;
import Me.C2838y;
import Me.T;
import Me.U;
import Me.V;
import Me.W;
import Me.X;
import Me.Y;
import Me.Z;
import Me.a0;
import Me.b0;
import Me.c0;
import Me.d0;
import Me.e0;
import Me.f0;
import Me.g0;
import Me.h0;
import Me.i0;
import Me.j0;
import Me.k0;
import Me.l0;
import Me.m0;
import Me.n0;
import Me.o0;
import Me.p0;
import Me.q0;
import Me.r0;
import Me.s0;
import Me.t0;
import Me.u0;
import Me.v0;
import af.C3604b;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class AbstractC2368s<T> implements y<T> {
    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> A(hn.b<? extends y<? extends T>> bVar) {
        return AbstractC2362l.a3(bVar).c1(p0.b());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> B(Iterable<? extends y<? extends T>> iterable) {
        return AbstractC2362l.Z2(iterable).c1(p0.b());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> B0(y<? extends T> yVar, y<? extends T> yVar2) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        return I0(yVar, yVar2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> C0(y<? extends T> yVar, y<? extends T> yVar2, y<? extends T> yVar3) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        return I0(yVar, yVar2, yVar3);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> D0(y<? extends T> yVar, y<? extends T> yVar2, y<? extends T> yVar3, y<? extends T> yVar4) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        return I0(yVar, yVar2, yVar3, yVar4);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> E0(hn.b<? extends y<? extends T>> bVar) {
        return F0(bVar, Integer.MAX_VALUE);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> F0(hn.b<? extends y<? extends T>> bVar, int i10) {
        He.b.g(bVar, "source is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.P(new C2705e0(bVar, p0.b(), false, i10, 1));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> G(w<T> wVar) {
        He.b.g(wVar, "onSubscribe is null");
        return Ye.a.Q(new C2824j(wVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> G0(Iterable<? extends y<? extends T>> iterable) {
        return E0(AbstractC2362l.Z2(iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> H0(y<? extends y<? extends T>> yVar) {
        He.b.g(yVar, "source is null");
        return Ye.a.Q(new Me.H(yVar, He.a.k()));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> I(Callable<? extends y<? extends T>> callable) {
        He.b.g(callable, "maybeSupplier is null");
        return Ye.a.Q(new C2825k(callable));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> I0(y<? extends T>... yVarArr) {
        He.b.g(yVarArr, "sources is null");
        return yVarArr.length == 0 ? AbstractC2362l.m2() : yVarArr.length == 1 ? Ye.a.P(new n0(yVarArr[0])) : Ye.a.P(new Y(yVarArr));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> J0(y<? extends T>... yVarArr) {
        return yVarArr.length == 0 ? AbstractC2362l.m2() : AbstractC2362l.T2(yVarArr).D2(p0.b(), true, yVarArr.length);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> K0(y<? extends T> yVar, y<? extends T> yVar2) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        return J0(yVar, yVar2);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static AbstractC2368s<Long> K1(long j10, TimeUnit timeUnit) {
        return L1(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> L0(y<? extends T> yVar, y<? extends T> yVar2, y<? extends T> yVar3) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        return J0(yVar, yVar2, yVar3);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static AbstractC2368s<Long> L1(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.Q(new m0(Math.max(0L, j10), timeUnit, j11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> M0(y<? extends T> yVar, y<? extends T> yVar2, y<? extends T> yVar3, y<? extends T> yVar4) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        return J0(yVar, yVar2, yVar3, yVar4);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> N0(hn.b<? extends y<? extends T>> bVar) {
        return O0(bVar, Integer.MAX_VALUE);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> O0(hn.b<? extends y<? extends T>> bVar, int i10) {
        He.b.g(bVar, "source is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.P(new C2705e0(bVar, p0.b(), true, i10, 1));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> P0(Iterable<? extends y<? extends T>> iterable) {
        return AbstractC2362l.Z2(iterable).C2(p0.b(), true);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> R0() {
        return Ye.a.Q(Z.f14975b);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> R1(y<T> yVar) {
        if (yVar instanceof AbstractC2368s) {
            throw new IllegalArgumentException("unsafeCreate(Maybe) should be upgraded");
        }
        He.b.g(yVar, "onSubscribe is null");
        return Ye.a.Q(new r0(yVar));
    }

    @Ce.d
    @Ce.h("none")
    public static <T, D> AbstractC2368s<T> T1(Callable<? extends D> callable, Fe.o<? super D, ? extends y<? extends T>> oVar, Fe.g<? super D> gVar) {
        return U1(callable, oVar, gVar, true);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, D> AbstractC2368s<T> U1(Callable<? extends D> callable, Fe.o<? super D, ? extends y<? extends T>> oVar, Fe.g<? super D> gVar, boolean z10) {
        He.b.g(callable, "resourceSupplier is null");
        He.b.g(oVar, "sourceSupplier is null");
        He.b.g(gVar, "disposer is null");
        return Ye.a.Q(new t0(callable, oVar, gVar, z10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> V1(y<T> yVar) {
        if (yVar instanceof AbstractC2368s) {
            return Ye.a.Q((AbstractC2368s) yVar);
        }
        He.b.g(yVar, "onSubscribe is null");
        return Ye.a.Q(new r0(yVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> AbstractC2368s<R> W1(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, y<? extends T4> yVar4, y<? extends T5> yVar5, y<? extends T6> yVar6, y<? extends T7> yVar7, y<? extends T8> yVar8, y<? extends T9> yVar9, Fe.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        He.b.g(yVar5, "source5 is null");
        He.b.g(yVar6, "source6 is null");
        He.b.g(yVar7, "source7 is null");
        He.b.g(yVar8, "source8 is null");
        He.b.g(yVar9, "source9 is null");
        return f2(He.a.E(nVar), yVar, yVar2, yVar3, yVar4, yVar5, yVar6, yVar7, yVar8, yVar9);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> AbstractC2368s<R> X1(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, y<? extends T4> yVar4, y<? extends T5> yVar5, y<? extends T6> yVar6, y<? extends T7> yVar7, y<? extends T8> yVar8, Fe.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        He.b.g(yVar5, "source5 is null");
        He.b.g(yVar6, "source6 is null");
        He.b.g(yVar7, "source7 is null");
        He.b.g(yVar8, "source8 is null");
        return f2(He.a.D(mVar), yVar, yVar2, yVar3, yVar4, yVar5, yVar6, yVar7, yVar8);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> AbstractC2368s<R> Y1(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, y<? extends T4> yVar4, y<? extends T5> yVar5, y<? extends T6> yVar6, y<? extends T7> yVar7, Fe.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        He.b.g(yVar5, "source5 is null");
        He.b.g(yVar6, "source6 is null");
        He.b.g(yVar7, "source7 is null");
        return f2(He.a.C(lVar), yVar, yVar2, yVar3, yVar4, yVar5, yVar6, yVar7);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> Z() {
        return Ye.a.Q(C2834u.f15198b);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, R> AbstractC2368s<R> Z1(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, y<? extends T4> yVar4, y<? extends T5> yVar5, y<? extends T6> yVar6, Fe.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        He.b.g(yVar5, "source5 is null");
        He.b.g(yVar6, "source6 is null");
        return f2(He.a.B(kVar), yVar, yVar2, yVar3, yVar4, yVar5, yVar6);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> a0(Throwable th2) {
        He.b.g(th2, "exception is null");
        return Ye.a.Q(new C2836w(th2));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, R> AbstractC2368s<R> a2(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, y<? extends T4> yVar4, y<? extends T5> yVar5, Fe.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        He.b.g(yVar5, "source5 is null");
        return f2(He.a.A(jVar), yVar, yVar2, yVar3, yVar4, yVar5);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> b0(Callable<? extends Throwable> callable) {
        He.b.g(callable, "errorSupplier is null");
        return Ye.a.Q(new C2837x(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, R> AbstractC2368s<R> b2(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, y<? extends T4> yVar4, Fe.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        return f2(He.a.z(iVar), yVar, yVar2, yVar3, yVar4);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, R> AbstractC2368s<R> c2(y<? extends T1> yVar, y<? extends T2> yVar2, y<? extends T3> yVar3, Fe.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        return f2(He.a.y(hVar), yVar, yVar2, yVar3);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> AbstractC2368s<R> d2(y<? extends T1> yVar, y<? extends T2> yVar2, Fe.c<? super T1, ? super T2, ? extends R> cVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        return f2(He.a.x(cVar), yVar, yVar2);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2368s<R> e2(Iterable<? extends y<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        He.b.g(oVar, "zipper is null");
        He.b.g(iterable, "sources is null");
        return Ye.a.Q(new v0(iterable, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2368s<R> f2(Fe.o<? super Object[], ? extends R> oVar, y<? extends T>... yVarArr) {
        He.b.g(yVarArr, "sources is null");
        if (yVarArr.length == 0) {
            return Z();
        }
        He.b.g(oVar, "zipper is null");
        return Ye.a.Q(new u0(yVarArr, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> g(Iterable<? extends y<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.Q(new C2816b(null, iterable));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> h(y<? extends T>... yVarArr) {
        return yVarArr.length == 0 ? Z() : yVarArr.length == 1 ? V1(yVarArr[0]) : Ye.a.Q(new C2816b(yVarArr, null));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> n0(Fe.a aVar) {
        He.b.g(aVar, "run is null");
        return Ye.a.Q(new Me.I(aVar));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> n1(y<? extends T> yVar, y<? extends T> yVar2) {
        return o1(yVar, yVar2, He.b.d());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> o0(@Ce.f Callable<? extends T> callable) {
        He.b.g(callable, "callable is null");
        return Ye.a.Q(new Me.J(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> o1(y<? extends T> yVar, y<? extends T> yVar2, Fe.d<? super T, ? super T> dVar) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(dVar, "isEqual is null");
        return Ye.a.S(new C2835v(yVar, yVar2, dVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> p(y<? extends T> yVar, y<? extends T> yVar2) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        return v(yVar, yVar2);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> p0(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "completableSource is null");
        return Ye.a.Q(new Me.K(interfaceC2359i));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> q(y<? extends T> yVar, y<? extends T> yVar2, y<? extends T> yVar3) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        return v(yVar, yVar2, yVar3);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> q0(Future<? extends T> future) {
        He.b.g(future, "future is null");
        return Ye.a.Q(new Me.L(future, 0L, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> r(y<? extends T> yVar, y<? extends T> yVar2, y<? extends T> yVar3, y<? extends T> yVar4) {
        He.b.g(yVar, "source1 is null");
        He.b.g(yVar2, "source2 is null");
        He.b.g(yVar3, "source3 is null");
        He.b.g(yVar4, "source4 is null");
        return v(yVar, yVar2, yVar3, yVar4);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> r0(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        He.b.g(future, "future is null");
        He.b.g(timeUnit, "unit is null");
        return Ye.a.Q(new Me.L(future, j10, timeUnit));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> s(hn.b<? extends y<? extends T>> bVar) {
        return t(bVar, 2);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> s0(Runnable runnable) {
        He.b.g(runnable, "run is null");
        return Ye.a.Q(new Me.M(runnable));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> t(hn.b<? extends y<? extends T>> bVar, int i10) {
        He.b.g(bVar, "sources is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new C2766z(bVar, p0.b(), i10, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> t0(Q<T> q10) {
        He.b.g(q10, "singleSource is null");
        return Ye.a.Q(new Me.N(q10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> u(Iterable<? extends y<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.P(new C2821g(iterable));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> v(y<? extends T>... yVarArr) {
        He.b.g(yVarArr, "sources is null");
        return yVarArr.length == 0 ? AbstractC2362l.m2() : yVarArr.length == 1 ? Ye.a.P(new n0(yVarArr[0])) : Ye.a.P(new C2819e(yVarArr));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> w(y<? extends T>... yVarArr) {
        return yVarArr.length == 0 ? AbstractC2362l.m2() : yVarArr.length == 1 ? Ye.a.P(new n0(yVarArr[0])) : Ye.a.P(new C2820f(yVarArr));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> x(y<? extends T>... yVarArr) {
        return AbstractC2362l.T2(yVarArr).c1(p0.b());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2368s<T> x0(T t10) {
        He.b.g(t10, "item is null");
        return Ye.a.Q(new U(t10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> y(hn.b<? extends y<? extends T>> bVar) {
        return AbstractC2362l.a3(bVar).a1(p0.b());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> z(Iterable<? extends y<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return AbstractC2362l.Z2(iterable).a1(p0.b());
    }

    @Ce.e
    @Ce.d
    @Ce.h("none")
    public final K<A<T>> A0() {
        return Ye.a.S(new X(this));
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<T> A1() {
        We.n<T> nVar = new We.n<>();
        d(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<T> B1(boolean z10) {
        We.n<T> nVar = new We.n<>();
        if (z10) {
            nVar.cancel();
        }
        d(nVar);
        return nVar;
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> C(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.Q(new Me.H(this, oVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2368s<T> C1(long j10, TimeUnit timeUnit) {
        return E1(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> D(y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return p(this, yVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2368s<T> D1(long j10, TimeUnit timeUnit, y<? extends T> yVar) {
        He.b.g(yVar, "fallback is null");
        return F1(j10, timeUnit, C3604b.a(), yVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<Boolean> E(Object obj) {
        He.b.g(obj, "item is null");
        return Ye.a.S(new C2822h(this, obj));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> E1(long j10, TimeUnit timeUnit, J j11) {
        return G1(L1(j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public final K<Long> F() {
        return Ye.a.S(new C2823i(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> F1(long j10, TimeUnit timeUnit, J j11, y<? extends T> yVar) {
        He.b.g(yVar, "fallback is null");
        return H1(L1(j10, timeUnit, j11), yVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2368s<T> G1(y<U> yVar) {
        He.b.g(yVar, "timeoutIndicator is null");
        return Ye.a.Q(new k0(this, yVar, null));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> H(T t10) {
        He.b.g(t10, "defaultItem is null");
        return w1(x0(t10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2368s<T> H1(y<U> yVar, y<? extends T> yVar2) {
        He.b.g(yVar, "timeoutIndicator is null");
        He.b.g(yVar2, "fallback is null");
        return Ye.a.Q(new k0(this, yVar, yVar2));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U> AbstractC2368s<T> I1(hn.b<U> bVar) {
        He.b.g(bVar, "timeoutIndicator is null");
        return Ye.a.Q(new l0(this, bVar, null));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2368s<T> J(long j10, TimeUnit timeUnit) {
        return K(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U> AbstractC2368s<T> J1(hn.b<U> bVar, y<? extends T> yVar) {
        He.b.g(bVar, "timeoutIndicator is null");
        He.b.g(yVar, "fallback is null");
        return Ye.a.Q(new l0(this, bVar, yVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> K(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.Q(new C2826l(this, Math.max(0L, j10), timeUnit, j11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U, V> AbstractC2368s<T> L(hn.b<U> bVar) {
        He.b.g(bVar, "delayIndicator is null");
        return Ye.a.Q(new C2827m(this, bVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2368s<T> M(long j10, TimeUnit timeUnit) {
        return N(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> R M1(Fe.o<? super AbstractC2368s<T>, R> oVar) {
        try {
            return (R) ((Fe.o) He.b.g(oVar, "convert is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> N(long j10, TimeUnit timeUnit, J j11) {
        return O(AbstractC2362l.x7(j10, timeUnit, j11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> N1() {
        return this instanceof Ie.b ? ((Ie.b) this).f() : Ye.a.P(new n0(this));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U> AbstractC2368s<T> O(hn.b<U> bVar) {
        He.b.g(bVar, "subscriptionIndicator is null");
        return Ye.a.Q(new C2828n(this, bVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final B<T> O1() {
        return this instanceof Ie.d ? ((Ie.d) this).c() : Ye.a.R(new o0(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> P(Fe.g<? super T> gVar) {
        He.b.g(gVar, "onAfterSuccess is null");
        return Ye.a.Q(new C2831q(this, gVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> P1() {
        return Ye.a.S(new q0(this, null));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> Q(Fe.a aVar) {
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return Ye.a.Q(new e0(this, h10, h11, h12, aVar2, (Fe.a) He.b.g(aVar, "onAfterTerminate is null"), aVar2));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> Q0(y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return B0(this, yVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> Q1(T t10) {
        He.b.g(t10, "defaultValue is null");
        return Ye.a.S(new q0(this, t10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> R(Fe.a aVar) {
        He.b.g(aVar, "onFinally is null");
        return Ye.a.Q(new Me.r(this, aVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> S(Fe.a aVar) {
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar2 = (Fe.a) He.b.g(aVar, "onComplete is null");
        Fe.a aVar3 = He.a.f8377c;
        return Ye.a.Q(new e0(this, h10, h11, h12, aVar2, aVar3, aVar3));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> S0(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.Q(new a0(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> S1(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.Q(new s0(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> T(Fe.a aVar) {
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return Ye.a.Q(new e0(this, h10, h11, h12, aVar2, aVar2, (Fe.a) He.b.g(aVar, "onDispose is null")));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2368s<U> T0(Class<U> cls) {
        He.b.g(cls, "clazz is null");
        return c0(He.a.l(cls)).n(cls);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> U(Fe.g<? super Throwable> gVar) {
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g gVar2 = (Fe.g) He.b.g(gVar, "onError is null");
        Fe.a aVar = He.a.f8377c;
        return Ye.a.Q(new e0(this, h10, h11, gVar2, aVar, aVar, aVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> U0() {
        return V0(He.a.c());
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> V(Fe.b<? super T, ? super Throwable> bVar) {
        He.b.g(bVar, "onEvent is null");
        return Ye.a.Q(new C2832s(this, bVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> V0(Fe.r<? super Throwable> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.Q(new b0(this, rVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> W(Fe.g<? super De.c> gVar) {
        Fe.g gVar2 = (Fe.g) He.b.g(gVar, "onSubscribe is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.Q(new e0(this, gVar2, h10, h11, aVar, aVar, aVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> W0(y<? extends T> yVar) {
        He.b.g(yVar, "next is null");
        return X0(He.a.n(yVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> X(Fe.g<? super T> gVar) {
        Fe.g h10 = He.a.h();
        Fe.g gVar2 = (Fe.g) He.b.g(gVar, "onSuccess is null");
        Fe.g h11 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.Q(new e0(this, h10, gVar2, h11, aVar, aVar, aVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> X0(Fe.o<? super Throwable, ? extends y<? extends T>> oVar) {
        He.b.g(oVar, "resumeFunction is null");
        return Ye.a.Q(new c0(this, oVar, true));
    }

    @Ce.e
    @Ce.f
    @Ce.h("none")
    @Ce.d
    public final AbstractC2368s<T> Y(Fe.a aVar) {
        He.b.g(aVar, "onTerminate is null");
        return Ye.a.Q(new C2833t(this, aVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> Y0(Fe.o<? super Throwable, ? extends T> oVar) {
        He.b.g(oVar, "valueSupplier is null");
        return Ye.a.Q(new d0(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> Z0(T t10) {
        He.b.g(t10, "item is null");
        return Y0(He.a.n(t10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> a1(y<? extends T> yVar) {
        He.b.g(yVar, "next is null");
        return Ye.a.Q(new c0(this, He.a.n(yVar), false));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> b1() {
        return Ye.a.Q(new C2830p(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> c0(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.Q(new C2838y(this, rVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> c1() {
        return d1(Long.MAX_VALUE);
    }

    @Override
    @Ce.h("none")
    public final void d(v<? super T> vVar) {
        He.b.g(vVar, "observer is null");
        v<? super T> e02 = Ye.a.e0(this, vVar);
        He.b.g(e02, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            t1(e02);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> d0(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.Q(new Me.H(this, oVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> d1(long j10) {
        return N1().W4(j10);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2368s<R> e0(Fe.o<? super T, ? extends y<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(oVar, "mapper is null");
        He.b.g(cVar, "resultSelector is null");
        return Ye.a.Q(new Me.A(this, oVar, cVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> e1(Fe.e eVar) {
        return N1().X4(eVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> f0(Fe.o<? super T, ? extends y<? extends R>> oVar, Fe.o<? super Throwable, ? extends y<? extends R>> oVar2, Callable<? extends y<? extends R>> callable) {
        He.b.g(oVar, "onSuccessMapper is null");
        He.b.g(oVar2, "onErrorMapper is null");
        He.b.g(callable, "onCompleteSupplier is null");
        return Ye.a.Q(new Me.E(this, oVar, oVar2, callable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> f1(Fe.o<? super AbstractC2362l<Object>, ? extends hn.b<?>> oVar) {
        return N1().Y4(oVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c g0(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new Me.B(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> g1() {
        return i1(Long.MAX_VALUE, He.a.c());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2368s<R> g2(y<? extends U> yVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(yVar, "other is null");
        return d2(this, yVar, cVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> h0(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Ne.j(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> h1(long j10) {
        return i1(j10, He.a.c());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> i(y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return h(this, yVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> i0(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Ne.k(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> i1(long j10, Fe.r<? super Throwable> rVar) {
        return N1().r5(j10, rVar).N5();
    }

    @Ce.d
    @Ce.h("none")
    public final <R> R j(@Ce.f t<T, ? extends R> tVar) {
        return (R) ((t) He.b.g(tVar, "converter is null")).a(this);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> K<R> j0(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.S(new Me.F(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> j1(Fe.d<? super Integer, ? super Throwable> dVar) {
        return N1().s5(dVar).N5();
    }

    @Ce.d
    @Ce.h("none")
    public final T k() {
        Je.h hVar = new Je.h();
        d(hVar);
        return (T) hVar.d();
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> k0(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.Q(new Me.G(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> k1(Fe.r<? super Throwable> rVar) {
        return i1(Long.MAX_VALUE, rVar);
    }

    @Ce.d
    @Ce.h("none")
    public final T l(T t10) {
        He.b.g(t10, "defaultValue is null");
        Je.h hVar = new Je.h();
        d(hVar);
        return (T) hVar.f(t10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<U> l0(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Me.C(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> l1(Fe.e eVar) {
        He.b.g(eVar, "stop is null");
        return i1(Long.MAX_VALUE, He.a.v(eVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> m() {
        return Ye.a.Q(new C2817c(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> B<U> m0(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Me.D(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> m1(Fe.o<? super AbstractC2362l<Throwable>, ? extends hn.b<?>> oVar) {
        return N1().v5(oVar).N5();
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2368s<U> n(Class<? extends U> cls) {
        He.b.g(cls, "clazz is null");
        return (AbstractC2368s<U>) z0(He.a.e(cls));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> o(z<? super T, ? extends R> zVar) {
        return V1(((z) He.b.g(zVar, "transformer is null")).a(this));
    }

    @Ce.h("none")
    public final De.c p1() {
        return s1(He.a.h(), He.a.f8380f, He.a.f8377c);
    }

    @Ce.d
    @Ce.h("none")
    public final De.c q1(Fe.g<? super T> gVar) {
        return s1(gVar, He.a.f8380f, He.a.f8377c);
    }

    @Ce.d
    @Ce.h("none")
    public final De.c r1(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        return s1(gVar, gVar2, He.a.f8377c);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final De.c s1(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        He.b.g(gVar, "onSuccess is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        return (De.c) v1(new C2818d(gVar, gVar2, aVar));
    }

    public abstract void t1(v<? super T> vVar);

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> u0() {
        return Ye.a.Q(new Me.O(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2368s<T> u1(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.Q(new f0(this, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c v0() {
        return Ye.a.O(new Me.Q(this));
    }

    @Ce.d
    @Ce.h("none")
    public final <E extends v<? super T>> E v1(E e10) {
        d(e10);
        return e10;
    }

    @Ce.d
    @Ce.h("none")
    public final K<Boolean> w0() {
        return Ye.a.S(new T(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> w1(y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return Ye.a.Q(new g0(this, yVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> x1(Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return Ye.a.S(new h0(this, q10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> y0(x<? extends R, ? super T> xVar) {
        He.b.g(xVar, "lift is null");
        return Ye.a.Q(new V(this, xVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2368s<T> y1(y<U> yVar) {
        He.b.g(yVar, "other is null");
        return Ye.a.Q(new i0(this, yVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> z0(Fe.o<? super T, ? extends R> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.Q(new W(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U> AbstractC2368s<T> z1(hn.b<U> bVar) {
        He.b.g(bVar, "other is null");
        return Ye.a.Q(new j0(this, bVar));
    }
}
