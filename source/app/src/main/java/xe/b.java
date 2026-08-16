package Xe;

import Be.AbstractC2362l;
import Be.J;
import Ce.f;
import Fe.o;
import Fe.q;
import Fe.r;
import Pe.e;
import Pe.g;
import Pe.h;
import Pe.i;
import Pe.j;
import Pe.k;
import Pe.l;
import Pe.m;
import Pe.n;
import Pe.p;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.v;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;

public abstract class b<T> {
    @f
    @Ce.d
    public static <T> b<T> A(@f hn.b<? extends T> bVar, int i10, int i11) {
        He.b.g(bVar, "source");
        He.b.h(i10, "parallelism");
        He.b.h(i11, "prefetch");
        return Ye.a.V(new h(bVar, i10, i11));
    }

    @f
    @Ce.d
    public static <T> b<T> B(@f hn.b<T>... bVarArr) {
        if (bVarArr.length != 0) {
            return Ye.a.V(new g(bVarArr));
        }
        throw new IllegalArgumentException("Zero publishers not supported");
    }

    @Ce.d
    public static <T> b<T> y(@f hn.b<? extends T> bVar) {
        return A(bVar, Runtime.getRuntime().availableProcessors(), AbstractC2362l.a0());
    }

    @Ce.d
    public static <T> b<T> z(@f hn.b<? extends T> bVar, int i10) {
        return A(bVar, i10, AbstractC2362l.a0());
    }

    @f
    @Ce.d
    public final <R> b<R> C(@f o<? super T, ? extends R> oVar) {
        He.b.g(oVar, "mapper");
        return Ye.a.V(new j(this, oVar));
    }

    @f
    @Ce.d
    public final <R> b<R> D(@f o<? super T, ? extends R> oVar, @f Fe.c<? super Long, ? super Throwable, a> cVar) {
        He.b.g(oVar, "mapper");
        He.b.g(cVar, "errorHandler is null");
        return Ye.a.V(new k(this, oVar, cVar));
    }

    @f
    @Ce.d
    public final <R> b<R> E(@f o<? super T, ? extends R> oVar, @f a aVar) {
        He.b.g(oVar, "mapper");
        He.b.g(aVar, "errorHandler is null");
        return Ye.a.V(new k(this, oVar, aVar));
    }

    public abstract int F();

    @f
    @Ce.d
    public final AbstractC2362l<T> G(@f Fe.c<T, T, T> cVar) {
        He.b.g(cVar, "reducer");
        return Ye.a.P(new n(this, cVar));
    }

    @f
    @Ce.d
    public final <R> b<R> H(@f Callable<R> callable, @f Fe.c<R, ? super T, R> cVar) {
        He.b.g(callable, "initialSupplier");
        He.b.g(cVar, "reducer");
        return Ye.a.V(new m(this, callable, cVar));
    }

    @f
    @Ce.d
    public final b<T> I(@f J j10) {
        return J(j10, AbstractC2362l.a0());
    }

    @f
    @Ce.d
    public final b<T> J(@f J j10, int i10) {
        He.b.g(j10, "scheduler");
        He.b.h(i10, "prefetch");
        return Ye.a.V(new Pe.o(this, j10, i10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> K() {
        return L(AbstractC2362l.a0());
    }

    @f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> L(int i10) {
        He.b.h(i10, "prefetch");
        return Ye.a.P(new i(this, i10, false));
    }

    @f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> M() {
        return N(AbstractC2362l.a0());
    }

    @f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> N(int i10) {
        He.b.h(i10, "prefetch");
        return Ye.a.P(new i(this, i10, true));
    }

    @f
    @Ce.d
    public final AbstractC2362l<T> O(@f Comparator<? super T> comparator) {
        return P(comparator, 16);
    }

    @f
    @Ce.d
    public final AbstractC2362l<T> P(@f Comparator<? super T> comparator, int i10) {
        He.b.g(comparator, "comparator is null");
        He.b.h(i10, "capacityHint");
        return Ye.a.P(new p(H(He.a.f((i10 / F()) + 1), io.reactivex.internal.util.n.b()).C(new v(comparator)), comparator));
    }

    public abstract void Q(@f hn.c<? super T>[] cVarArr);

    @f
    @Ce.d
    public final <U> U R(@f o<? super b<T>, U> oVar) {
        try {
            return (U) ((o) He.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @f
    @Ce.d
    public final AbstractC2362l<List<T>> S(@f Comparator<? super T> comparator) {
        return T(comparator, 16);
    }

    @f
    @Ce.d
    public final AbstractC2362l<List<T>> T(@f Comparator<? super T> comparator, int i10) {
        He.b.g(comparator, "comparator is null");
        He.b.h(i10, "capacityHint");
        return Ye.a.P(H(He.a.f((i10 / F()) + 1), io.reactivex.internal.util.n.b()).C(new v(comparator)).G(new io.reactivex.internal.util.o(comparator)));
    }

    public final boolean U(@f hn.c<?>[] cVarArr) {
        int F10 = F();
        if (cVarArr.length == F10) {
            return true;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + F10 + ", subscribers = " + cVarArr.length);
        int length = cVarArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Ue.g.b(illegalArgumentException, cVarArr[i10]);
        }
        return false;
    }

    @f
    @Ce.d
    public final <R> R a(@f c<T, R> cVar) {
        return (R) ((c) He.b.g(cVar, "converter is null")).a(this);
    }

    @f
    @Ce.d
    public final <C> b<C> b(@f Callable<? extends C> callable, @f Fe.b<? super C, ? super T> bVar) {
        He.b.g(callable, "collectionSupplier is null");
        He.b.g(bVar, "collector is null");
        return Ye.a.V(new Pe.a(this, callable, bVar));
    }

    @f
    @Ce.d
    public final <U> b<U> c(@f d<T, U> dVar) {
        return Ye.a.V(((d) He.b.g(dVar, "composer is null")).a(this));
    }

    @f
    @Ce.d
    public final <R> b<R> d(@f o<? super T, ? extends hn.b<? extends R>> oVar) {
        return e(oVar, 2);
    }

    @f
    @Ce.d
    public final <R> b<R> e(@f o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.V(new Pe.b(this, oVar, i10, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @f
    @Ce.d
    public final <R> b<R> f(@f o<? super T, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.V(new Pe.b(this, oVar, i10, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY));
    }

    @f
    @Ce.d
    public final <R> b<R> g(@f o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10) {
        return f(oVar, 2, z10);
    }

    @f
    @Ce.d
    public final b<T> h(@f Fe.g<? super T> gVar) {
        He.b.g(gVar, "onAfterNext is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.V(new l(this, h10, gVar, h11, aVar, aVar, He.a.h(), He.a.f8381g, aVar));
    }

    @f
    @Ce.d
    public final b<T> i(@f Fe.a aVar) {
        He.b.g(aVar, "onAfterTerminate is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return Ye.a.V(new l(this, h10, h11, h12, aVar2, aVar, He.a.h(), He.a.f8381g, aVar2));
    }

    @f
    @Ce.d
    public final b<T> j(@f Fe.a aVar) {
        He.b.g(aVar, "onCancel is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return Ye.a.V(new l(this, h10, h11, h12, aVar2, aVar2, He.a.h(), He.a.f8381g, aVar));
    }

    @f
    @Ce.d
    public final b<T> k(@f Fe.a aVar) {
        He.b.g(aVar, "onComplete is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar2 = He.a.f8377c;
        return Ye.a.V(new l(this, h10, h11, h12, aVar, aVar2, He.a.h(), He.a.f8381g, aVar2));
    }

    @f
    @Ce.d
    public final b<T> l(@f Fe.g<Throwable> gVar) {
        He.b.g(gVar, "onError is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.V(new l(this, h10, h11, gVar, aVar, aVar, He.a.h(), He.a.f8381g, aVar));
    }

    @f
    @Ce.d
    public final b<T> m(@f Fe.g<? super T> gVar) {
        He.b.g(gVar, "onNext is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.V(new l(this, gVar, h10, h11, aVar, aVar, He.a.h(), He.a.f8381g, aVar));
    }

    @f
    @Ce.d
    public final b<T> n(@f Fe.g<? super T> gVar, @f Fe.c<? super Long, ? super Throwable, a> cVar) {
        He.b.g(gVar, "onNext is null");
        He.b.g(cVar, "errorHandler is null");
        return Ye.a.V(new Pe.c(this, gVar, cVar));
    }

    @f
    @Ce.d
    public final b<T> o(@f Fe.g<? super T> gVar, @f a aVar) {
        He.b.g(gVar, "onNext is null");
        He.b.g(aVar, "errorHandler is null");
        return Ye.a.V(new Pe.c(this, gVar, aVar));
    }

    @f
    @Ce.d
    public final b<T> p(@f q qVar) {
        He.b.g(qVar, "onRequest is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.V(new l(this, h10, h11, h12, aVar, aVar, He.a.h(), qVar, aVar));
    }

    @f
    @Ce.d
    public final b<T> q(@f Fe.g<? super hn.d> gVar) {
        He.b.g(gVar, "onSubscribe is null");
        Fe.g h10 = He.a.h();
        Fe.g h11 = He.a.h();
        Fe.g h12 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return Ye.a.V(new l(this, h10, h11, h12, aVar, aVar, gVar, He.a.f8381g, aVar));
    }

    @Ce.d
    public final b<T> r(@f r<? super T> rVar) {
        He.b.g(rVar, "predicate");
        return Ye.a.V(new Pe.d(this, rVar));
    }

    @Ce.d
    public final b<T> s(@f r<? super T> rVar, @f Fe.c<? super Long, ? super Throwable, a> cVar) {
        He.b.g(rVar, "predicate");
        He.b.g(cVar, "errorHandler is null");
        return Ye.a.V(new e(this, rVar, cVar));
    }

    @Ce.d
    public final b<T> t(@f r<? super T> rVar, @f a aVar) {
        He.b.g(rVar, "predicate");
        He.b.g(aVar, "errorHandler is null");
        return Ye.a.V(new e(this, rVar, aVar));
    }

    @f
    @Ce.d
    public final <R> b<R> u(@f o<? super T, ? extends hn.b<? extends R>> oVar) {
        return x(oVar, false, Integer.MAX_VALUE, AbstractC2362l.a0());
    }

    @f
    @Ce.d
    public final <R> b<R> v(@f o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10) {
        return x(oVar, z10, Integer.MAX_VALUE, AbstractC2362l.a0());
    }

    @f
    @Ce.d
    public final <R> b<R> w(@f o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10, int i10) {
        return x(oVar, z10, i10, AbstractC2362l.a0());
    }

    @f
    @Ce.d
    public final <R> b<R> x(@f o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.V(new Pe.f(this, oVar, z10, i10, i11));
    }
}
