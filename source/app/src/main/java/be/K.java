package Be;

import Le.C2705e0;
import Le.C2747s1;
import Le.C2757w;
import Le.C2766z;
import Me.C2839z;
import Oe.C2876f1;
import Oe.C2915v;
import Qe.C2983a;
import Qe.C2984b;
import Qe.C2985c;
import Qe.C2986d;
import Qe.C2987e;
import Qe.C2988f;
import Qe.C2989g;
import Qe.C2990h;
import Qe.C2991i;
import Qe.C2992j;
import Qe.C2993k;
import Qe.C2994l;
import Qe.C2995m;
import Qe.C2996n;
import Qe.C2997o;
import Qe.C2998p;
import Qe.C2999q;
import Qe.C3000s;
import Qe.C3001t;
import Qe.C3002u;
import Qe.C3003v;
import Qe.C3004w;
import Qe.C3005x;
import Qe.C3006y;
import Qe.C3007z;
import Qe.T;
import Qe.U;
import Qe.V;
import Qe.W;
import Qe.X;
import Qe.Y;
import Qe.Z;
import Qe.a0;
import af.C3604b;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class K<T> implements Q<T> {
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> A0(Iterable<? extends Q<? extends T>> iterable) {
        return z0(AbstractC2362l.Z2(iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> B0(Q<? extends Q<? extends T>> q10) {
        He.b.g(q10, "source is null");
        return Ye.a.S(new C3005x(q10, He.a.k()));
    }

    @Ce.d
    @Ce.h("none")
    public static <T, U> K<T> B1(Callable<U> callable, Fe.o<? super U, ? extends Q<? extends T>> oVar, Fe.g<? super U> gVar) {
        return C1(callable, oVar, gVar, true);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> C(O<T> o10) {
        He.b.g(o10, "source is null");
        return Ye.a.S(new C2986d(o10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> C0(Q<? extends T> q10, Q<? extends T> q11) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        return F0(AbstractC2362l.T2(q10, q11));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, U> K<T> C1(Callable<U> callable, Fe.o<? super U, ? extends Q<? extends T>> oVar, Fe.g<? super U> gVar, boolean z10) {
        He.b.g(callable, "resourceSupplier is null");
        He.b.g(oVar, "singleFunction is null");
        He.b.g(gVar, "disposer is null");
        return Ye.a.S(new Y(callable, oVar, gVar, z10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> D(Callable<? extends Q<? extends T>> callable) {
        He.b.g(callable, "singleSupplier is null");
        return Ye.a.S(new C2987e(callable));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> D0(Q<? extends T> q10, Q<? extends T> q11, Q<? extends T> q12) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        return F0(AbstractC2362l.T2(q10, q11, q12));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> D1(Q<T> q10) {
        He.b.g(q10, "source is null");
        return q10 instanceof K ? Ye.a.S((K) q10) : Ye.a.S(new Qe.F(q10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> E0(Q<? extends T> q10, Q<? extends T> q11, Q<? extends T> q12, Q<? extends T> q13) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        return F0(AbstractC2362l.T2(q10, q11, q12, q13));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> K<R> E1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Q<? extends T4> q13, Q<? extends T5> q14, Q<? extends T6> q15, Q<? extends T7> q16, Q<? extends T8> q17, Q<? extends T9> q18, Fe.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        He.b.g(q14, "source5 is null");
        He.b.g(q15, "source6 is null");
        He.b.g(q16, "source7 is null");
        He.b.g(q17, "source8 is null");
        He.b.g(q18, "source9 is null");
        return N1(He.a.E(nVar), q10, q11, q12, q13, q14, q15, q16, q17, q18);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> F0(hn.b<? extends Q<? extends T>> bVar) {
        He.b.g(bVar, "sources is null");
        return Ye.a.P(new C2705e0(bVar, Qe.H.c(), true, Integer.MAX_VALUE, AbstractC2362l.a0()));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> K<R> F1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Q<? extends T4> q13, Q<? extends T5> q14, Q<? extends T6> q15, Q<? extends T7> q16, Q<? extends T8> q17, Fe.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        He.b.g(q14, "source5 is null");
        He.b.g(q15, "source6 is null");
        He.b.g(q16, "source7 is null");
        He.b.g(q17, "source8 is null");
        return N1(He.a.D(mVar), q10, q11, q12, q13, q14, q15, q16, q17);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> G0(Iterable<? extends Q<? extends T>> iterable) {
        return F0(AbstractC2362l.Z2(iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> K<R> G1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Q<? extends T4> q13, Q<? extends T5> q14, Q<? extends T6> q15, Q<? extends T7> q16, Fe.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        He.b.g(q14, "source5 is null");
        He.b.g(q15, "source6 is null");
        He.b.g(q16, "source7 is null");
        return N1(He.a.C(lVar), q10, q11, q12, q13, q14, q15, q16);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, R> K<R> H1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Q<? extends T4> q13, Q<? extends T5> q14, Q<? extends T6> q15, Fe.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        He.b.g(q14, "source5 is null");
        He.b.g(q15, "source6 is null");
        return N1(He.a.B(kVar), q10, q11, q12, q13, q14, q15);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<T> I0() {
        return Ye.a.S(Qe.M.f22113b);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, R> K<R> I1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Q<? extends T4> q13, Q<? extends T5> q14, Fe.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        He.b.g(q14, "source5 is null");
        return N1(He.a.A(jVar), q10, q11, q12, q13, q14);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, R> K<R> J1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Q<? extends T4> q13, Fe.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        return N1(He.a.z(iVar), q10, q11, q12, q13);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, R> K<R> K1(Q<? extends T1> q10, Q<? extends T2> q11, Q<? extends T3> q12, Fe.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        return N1(He.a.y(hVar), q10, q11, q12);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> K<R> L1(Q<? extends T1> q10, Q<? extends T2> q11, Fe.c<? super T1, ? super T2, ? extends R> cVar) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        return N1(He.a.x(cVar), q10, q11);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> K<R> M1(Iterable<? extends Q<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        He.b.g(oVar, "zipper is null");
        He.b.g(iterable, "sources is null");
        return Ye.a.S(new a0(iterable, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> K<R> N1(Fe.o<? super Object[], ? extends R> oVar, Q<? extends T>... qArr) {
        He.b.g(oVar, "zipper is null");
        He.b.g(qArr, "sources is null");
        return qArr.length == 0 ? Z(new NoSuchElementException()) : Ye.a.S(new Z(qArr, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> Y(Q<? extends T> q10, Q<? extends T> q11) {
        He.b.g(q10, "first is null");
        He.b.g(q11, "second is null");
        return Ye.a.S(new C3003v(q10, q11));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> Z(Throwable th2) {
        He.b.g(th2, "exception is null");
        return a0(He.a.m(th2));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> a0(Callable<? extends Throwable> callable) {
        He.b.g(callable, "errorSupplier is null");
        return Ye.a.S(new C3004w(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> g(Iterable<? extends Q<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.S(new C2983a(null, iterable));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<T> h(Q<? extends T>... qArr) {
        return qArr.length == 0 ? a0(Qe.H.a()) : qArr.length == 1 ? D1(qArr[0]) : Ye.a.S(new C2983a(qArr, null));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> j0(Callable<? extends T> callable) {
        He.b.g(callable, "callable is null");
        return Ye.a.S(new Qe.D(callable));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<T> k0(Future<? extends T> future) {
        return y1(AbstractC2362l.V2(future));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<T> l0(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        return y1(AbstractC2362l.W2(future, j10, timeUnit));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static <T> K<T> m0(Future<? extends T> future, long j10, TimeUnit timeUnit, J j11) {
        return y1(AbstractC2362l.X2(future, j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static <T> K<T> n0(Future<? extends T> future, J j10) {
        return y1(AbstractC2362l.Y2(future, j10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> o(Q<? extends T> q10, Q<? extends T> q11) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        return r(AbstractC2362l.T2(q10, q11));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> o0(G<? extends T> g10) {
        He.b.g(g10, "observableSource is null");
        return Ye.a.S(new C2876f1(g10, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> p(Q<? extends T> q10, Q<? extends T> q11, Q<? extends T> q12) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        return r(AbstractC2362l.T2(q10, q11, q12));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public static <T> K<T> p0(hn.b<? extends T> bVar) {
        He.b.g(bVar, "publisher is null");
        return Ye.a.S(new Qe.E(bVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> q(Q<? extends T> q10, Q<? extends T> q11, Q<? extends T> q12, Q<? extends T> q13) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        return r(AbstractC2362l.T2(q10, q11, q12, q13));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static K<Long> q1(long j10, TimeUnit timeUnit) {
        return r1(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> r(hn.b<? extends Q<? extends T>> bVar) {
        return s(bVar, 2);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static K<Long> r1(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.S(new U(j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> s(hn.b<? extends Q<? extends T>> bVar, int i10) {
        He.b.g(bVar, "sources is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new C2766z(bVar, Qe.H.c(), i10, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> s0(T t10) {
        He.b.g(t10, "item is null");
        return Ye.a.S(new Qe.I(t10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> t(Iterable<? extends Q<? extends T>> iterable) {
        return r(AbstractC2362l.Z2(iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> u(G<? extends Q<? extends T>> g10) {
        He.b.g(g10, "sources is null");
        return Ye.a.R(new C2915v(g10, Qe.H.d(), 2, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> v(Q<? extends T>... qArr) {
        return Ye.a.P(new C2757w(AbstractC2362l.T2(qArr), Qe.H.c(), 2, io.reactivex.internal.util.j.BOUNDARY));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> w(Q<? extends T>... qArr) {
        return AbstractC2362l.T2(qArr).c1(Qe.H.c());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> w0(Q<? extends T> q10, Q<? extends T> q11) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        return z0(AbstractC2362l.T2(q10, q11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> x(hn.b<? extends Q<? extends T>> bVar) {
        return AbstractC2362l.a3(bVar).c1(Qe.H.c());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> x0(Q<? extends T> q10, Q<? extends T> q11, Q<? extends T> q12) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        return z0(AbstractC2362l.T2(q10, q11, q12));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> y(Iterable<? extends Q<? extends T>> iterable) {
        return AbstractC2362l.Z2(iterable).c1(Qe.H.c());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> y0(Q<? extends T> q10, Q<? extends T> q11, Q<? extends T> q12, Q<? extends T> q13) {
        He.b.g(q10, "source1 is null");
        He.b.g(q11, "source2 is null");
        He.b.g(q12, "source3 is null");
        He.b.g(q13, "source4 is null");
        return z0(AbstractC2362l.T2(q10, q11, q12, q13));
    }

    public static <T> K<T> y1(AbstractC2362l<T> abstractC2362l) {
        return Ye.a.S(new C2747s1(abstractC2362l, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> z0(hn.b<? extends Q<? extends T>> bVar) {
        He.b.g(bVar, "sources is null");
        return Ye.a.P(new C2705e0(bVar, Qe.H.c(), false, Integer.MAX_VALUE, AbstractC2362l.a0()));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> K<T> z1(Q<T> q10) {
        He.b.g(q10, "onSubscribe is null");
        if (q10 instanceof K) {
            throw new IllegalArgumentException("unsafeCreate(Single) should be upgraded");
        }
        return Ye.a.S(new Qe.F(q10));
    }

    @Ce.d
    @Ce.h("none")
    public final K<Boolean> A(Object obj) {
        return B(obj, He.b.d());
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> A1(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.S(new X(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<Boolean> B(Object obj, Fe.d<Object, Object> dVar) {
        He.b.g(obj, "value is null");
        He.b.g(dVar, "comparer is null");
        return Ye.a.S(new C2985c(this, obj, dVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final K<T> E(long j10, TimeUnit timeUnit) {
        return G(j10, timeUnit, C3604b.a(), false);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> F(long j10, TimeUnit timeUnit, J j11) {
        return G(j10, timeUnit, j11, false);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> G(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.S(new C2988f(this, j10, timeUnit, j11, z10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final K<T> H(long j10, TimeUnit timeUnit, boolean z10) {
        return G(j10, timeUnit, C3604b.a(), z10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> H0(Q<? extends T> q10) {
        return w0(this, q10);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final K<T> I(long j10, TimeUnit timeUnit) {
        return J(j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> J(long j10, TimeUnit timeUnit, J j11) {
        return L(B.R6(j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> J0(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.S(new Qe.N(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> K(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.S(new C2989g(this, interfaceC2359i));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> K0(K<? extends T> k10) {
        He.b.g(k10, "resumeSingleInCaseOfError is null");
        return L0(He.a.n(k10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> K<T> L(G<U> g10) {
        He.b.g(g10, "other is null");
        return Ye.a.S(new C2990h(this, g10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> L0(Fe.o<? super Throwable, ? extends Q<? extends T>> oVar) {
        He.b.g(oVar, "resumeFunctionInCaseOfError is null");
        return Ye.a.S(new Qe.P(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> K<T> M(Q<U> q10) {
        He.b.g(q10, "other is null");
        return Ye.a.S(new C2992j(this, q10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> M0(Fe.o<Throwable, ? extends T> oVar) {
        He.b.g(oVar, "resumeFunction is null");
        return Ye.a.S(new Qe.O(this, oVar, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> K<T> N(hn.b<U> bVar) {
        He.b.g(bVar, "other is null");
        return Ye.a.S(new C2991i(this, bVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> N0(T t10) {
        He.b.g(t10, "value is null");
        return Ye.a.S(new Qe.O(this, null, t10));
    }

    @Ce.e
    @Ce.f
    @Ce.h("none")
    @Ce.d
    public final <R> AbstractC2368s<R> O(Fe.o<? super T, A<R>> oVar) {
        He.b.g(oVar, "selector is null");
        return Ye.a.Q(new C2993k(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> O0() {
        return Ye.a.S(new C2994l(this));
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> K<R> O1(Q<U> q10, Fe.c<? super T, ? super U, ? extends R> cVar) {
        return L1(this, q10, cVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> P(Fe.g<? super T> gVar) {
        He.b.g(gVar, "onAfterSuccess is null");
        return Ye.a.S(new C2995m(this, gVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> P0() {
        return u1().V4();
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> Q(Fe.a aVar) {
        He.b.g(aVar, "onAfterTerminate is null");
        return Ye.a.S(new C2996n(this, aVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> Q0(long j10) {
        return u1().W4(j10);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> R(Fe.a aVar) {
        He.b.g(aVar, "onFinally is null");
        return Ye.a.S(new C2997o(this, aVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> R0(Fe.e eVar) {
        return u1().X4(eVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> S(Fe.a aVar) {
        He.b.g(aVar, "onDispose is null");
        return Ye.a.S(new C2998p(this, aVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> S0(Fe.o<? super AbstractC2362l<Object>, ? extends hn.b<?>> oVar) {
        return u1().Y4(oVar);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> T(Fe.g<? super Throwable> gVar) {
        He.b.g(gVar, "onError is null");
        return Ye.a.S(new C2999q(this, gVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> T0() {
        return y1(u1().p5());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> U(Fe.b<? super T, ? super Throwable> bVar) {
        He.b.g(bVar, "onEvent is null");
        return Ye.a.S(new Qe.r(this, bVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> U0(long j10) {
        return y1(u1().q5(j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> V(Fe.g<? super De.c> gVar) {
        He.b.g(gVar, "onSubscribe is null");
        return Ye.a.S(new C3000s(this, gVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> V0(long j10, Fe.r<? super Throwable> rVar) {
        return y1(u1().r5(j10, rVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> W(Fe.g<? super T> gVar) {
        He.b.g(gVar, "onSuccess is null");
        return Ye.a.S(new C3001t(this, gVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> W0(Fe.d<? super Integer, ? super Throwable> dVar) {
        return y1(u1().s5(dVar));
    }

    @Ce.e
    @Ce.f
    @Ce.h("none")
    @Ce.d
    public final K<T> X(Fe.a aVar) {
        He.b.g(aVar, "onTerminate is null");
        return Ye.a.S(new C3002u(this, aVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> X0(Fe.r<? super Throwable> rVar) {
        return y1(u1().t5(rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> Y0(Fe.o<? super AbstractC2362l<Throwable>, ? extends hn.b<?>> oVar) {
        return y1(u1().v5(oVar));
    }

    @Ce.h("none")
    public final De.c Z0() {
        return c1(He.a.h(), He.a.f8380f);
    }

    @Override
    @Ce.h("none")
    public final void a(N<? super T> n10) {
        He.b.g(n10, "observer is null");
        N<? super T> g02 = Ye.a.g0(this, n10);
        He.b.g(g02, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            d1(g02);
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
    public final De.c a1(Fe.b<? super T, ? super Throwable> bVar) {
        He.b.g(bVar, "onCallback is null");
        Je.d dVar = new Je.d(bVar);
        a(dVar);
        return dVar;
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> b0(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.Q(new C2839z(this, rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final De.c b1(Fe.g<? super T> gVar) {
        return c1(gVar, He.a.f8380f);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> K<R> c0(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.S(new C3005x(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final De.c c1(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        He.b.g(gVar, "onSuccess is null");
        He.b.g(gVar2, "onError is null");
        Je.k kVar = new Je.k(gVar, gVar2);
        a(kVar);
        return kVar;
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c d0(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new C3006y(this, oVar));
    }

    public abstract void d1(@Ce.f N<? super T> n10);

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2368s<R> e0(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.Q(new Qe.B(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> e1(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.S(new Qe.Q(this, j10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> f0(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Ne.s(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <E extends N<? super T>> E f1(E e10) {
        a(e10);
        return e10;
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> g0(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Qe.C(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> g1(InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return i1(new Ke.O(interfaceC2359i));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<U> h0(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new C3007z(this, oVar));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <E> K<T> h1(Q<? extends E> q10) {
        He.b.g(q10, "other is null");
        return i1(new V(q10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final K<T> i(Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return h(this, q10);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> B<U> i0(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Qe.A(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <E> K<T> i1(hn.b<E> bVar) {
        He.b.g(bVar, "other is null");
        return Ye.a.S(new Qe.S(this, bVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> R j(@Ce.f L<T, ? extends R> l10) {
        return (R) ((L) He.b.g(l10, "converter is null")).a(this);
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<T> j1() {
        We.n<T> nVar = new We.n<>();
        a(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final T k() {
        Je.h hVar = new Je.h();
        a(hVar);
        return (T) hVar.d();
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<T> k1(boolean z10) {
        We.n<T> nVar = new We.n<>();
        if (z10) {
            nVar.cancel();
        }
        a(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> l() {
        return Ye.a.S(new C2984b(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final K<T> l1(long j10, TimeUnit timeUnit) {
        return p1(j10, timeUnit, C3604b.a(), null);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <U> K<U> m(Class<? extends U> cls) {
        He.b.g(cls, "clazz is null");
        return (K<U>) u0(He.a.e(cls));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> m1(long j10, TimeUnit timeUnit, J j11) {
        return p1(j10, timeUnit, j11, null);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> K<R> n(S<? super T, ? extends R> s10) {
        return D1(((S) He.b.g(s10, "transformer is null")).a(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final K<T> n1(long j10, TimeUnit timeUnit, J j11, Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return p1(j10, timeUnit, j11, q10);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final K<T> o1(long j10, TimeUnit timeUnit, Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return p1(j10, timeUnit, C3604b.a(), q10);
    }

    public final K<T> p1(long j10, TimeUnit timeUnit, J j11, Q<? extends T> q10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.S(new T(this, j10, timeUnit, j11, q10));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> q0() {
        return Ye.a.S(new Qe.G(this));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c r0() {
        return Ye.a.O(new Ke.v(this));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> R s1(Fe.o<? super K<T>, R> oVar) {
        try {
            return (R) ((Fe.o) He.b.g(oVar, "convert is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> K<R> t0(P<? extends R, ? super T> p10) {
        He.b.g(p10, "lift is null");
        return Ye.a.S(new Qe.J(this, p10));
    }

    @Ce.d
    @Ce.h("none")
    @Deprecated
    public final AbstractC2353c t1() {
        return Ye.a.O(new Ke.v(this));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> K<R> u0(Fe.o<? super T, ? extends R> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.S(new Qe.K(this, oVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> u1() {
        return this instanceof Ie.b ? ((Ie.b) this).f() : Ye.a.P(new V(this));
    }

    @Ce.e
    @Ce.d
    @Ce.h("none")
    public final K<A<T>> v0() {
        return Ye.a.S(new Qe.L(this));
    }

    @Ce.d
    @Ce.h("none")
    public final Future<T> v1() {
        return (Future) f1(new Je.r());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> w1() {
        return this instanceof Ie.c ? ((Ie.c) this).d() : Ye.a.Q(new Me.N(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final B<T> x1() {
        return this instanceof Ie.d ? ((Ie.d) this).c() : Ye.a.R(new W(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> z(Q<? extends T> q10) {
        return o(this, q10);
    }
}
