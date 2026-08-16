package Ye;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.AbstractC2368s;
import Be.B;
import Be.I;
import Be.InterfaceC2356f;
import Be.J;
import Be.K;
import Be.N;
import Be.v;
import Ce.f;
import Ce.g;
import Fe.c;
import Fe.e;
import Fe.o;
import Se.h;
import Se.r;
import Xe.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;

public final class a {

    @g
    public static volatile Fe.g<? super Throwable> f30413a;

    @g
    public static volatile o<? super Runnable, ? extends Runnable> f30414b;

    @g
    public static volatile o<? super Callable<J>, ? extends J> f30415c;

    @g
    public static volatile o<? super Callable<J>, ? extends J> f30416d;

    @g
    public static volatile o<? super Callable<J>, ? extends J> f30417e;

    @g
    public static volatile o<? super Callable<J>, ? extends J> f30418f;

    @g
    public static volatile o<? super J, ? extends J> f30419g;

    @g
    public static volatile o<? super J, ? extends J> f30420h;

    @g
    public static volatile o<? super J, ? extends J> f30421i;

    @g
    public static volatile o<? super J, ? extends J> f30422j;

    @g
    public static volatile o<? super AbstractC2362l, ? extends AbstractC2362l> f30423k;

    @g
    public static volatile o<? super Ee.a, ? extends Ee.a> f30424l;

    @g
    public static volatile o<? super B, ? extends B> f30425m;

    @g
    public static volatile o<? super Ve.a, ? extends Ve.a> f30426n;

    @g
    public static volatile o<? super AbstractC2368s, ? extends AbstractC2368s> f30427o;

    @g
    public static volatile o<? super K, ? extends K> f30428p;

    @g
    public static volatile o<? super AbstractC2353c, ? extends AbstractC2353c> f30429q;

    @g
    public static volatile o<? super b, ? extends b> f30430r;

    @g
    public static volatile c<? super AbstractC2362l, ? super hn.c, ? extends hn.c> f30431s;

    @g
    public static volatile c<? super AbstractC2368s, ? super v, ? extends v> f30432t;

    @g
    public static volatile c<? super B, ? super I, ? extends I> f30433u;

    @g
    public static volatile c<? super K, ? super N, ? extends N> f30434v;

    @g
    public static volatile c<? super AbstractC2353c, ? super InterfaceC2356f, ? extends InterfaceC2356f> f30435w;

    @g
    public static volatile e f30436x;

    public static volatile boolean f30437y;

    public static volatile boolean f30438z;

    public a() {
        throw new IllegalStateException("No instances!");
    }

    @g
    public static c<? super B, ? super I, ? extends I> A() {
        return f30433u;
    }

    public static void A0(@g c<? super AbstractC2368s, v, ? extends v> cVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30432t = cVar;
    }

    @g
    public static o<? super b, ? extends b> B() {
        return f30430r;
    }

    public static void B0(@g o<? super B, ? extends B> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30425m = oVar;
    }

    @g
    public static o<? super K, ? extends K> C() {
        return f30428p;
    }

    public static void C0(@g c<? super B, ? super I, ? extends I> cVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30433u = cVar;
    }

    @g
    public static c<? super K, ? super N, ? extends N> D() {
        return f30434v;
    }

    public static void D0(@g o<? super b, ? extends b> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30430r = oVar;
    }

    @g
    public static o<? super Runnable, ? extends Runnable> E() {
        return f30414b;
    }

    public static void E0(@g o<? super K, ? extends K> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30428p = oVar;
    }

    @g
    public static o<? super J, ? extends J> F() {
        return f30420h;
    }

    public static void F0(@g c<? super K, ? super N, ? extends N> cVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30434v = cVar;
    }

    @f
    public static J G(@f Callable<J> callable) {
        He.b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<J>, ? extends J> oVar = f30415c;
        return oVar == null ? d(callable) : c(oVar, callable);
    }

    public static void G0(@g o<? super Runnable, ? extends Runnable> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30414b = oVar;
    }

    @f
    public static J H(@f Callable<J> callable) {
        He.b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<J>, ? extends J> oVar = f30417e;
        return oVar == null ? d(callable) : c(oVar, callable);
    }

    public static void H0(@g o<? super J, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30420h = oVar;
    }

    @f
    public static J I(@f Callable<J> callable) {
        He.b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<J>, ? extends J> oVar = f30418f;
        return oVar == null ? d(callable) : c(oVar, callable);
    }

    public static void I0(@f Throwable th2) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
    }

    @f
    public static J J(@f Callable<J> callable) {
        He.b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<J>, ? extends J> oVar = f30416d;
        return oVar == null ? d(callable) : c(oVar, callable);
    }

    public static void J0() {
        f30437y = false;
    }

    public static boolean K(Throwable th2) {
        return (th2 instanceof OnErrorNotImplementedException) || (th2 instanceof MissingBackpressureException) || (th2 instanceof IllegalStateException) || (th2 instanceof NullPointerException) || (th2 instanceof IllegalArgumentException) || (th2 instanceof CompositeException);
    }

    public static boolean L() {
        return f30438z;
    }

    public static boolean M() {
        return f30437y;
    }

    public static void N() {
        f30437y = true;
    }

    @f
    public static AbstractC2353c O(@f AbstractC2353c abstractC2353c) {
        o<? super AbstractC2353c, ? extends AbstractC2353c> oVar = f30429q;
        return oVar != null ? (AbstractC2353c) b(oVar, abstractC2353c) : abstractC2353c;
    }

    @f
    public static <T> AbstractC2362l<T> P(@f AbstractC2362l<T> abstractC2362l) {
        o<? super AbstractC2362l, ? extends AbstractC2362l> oVar = f30423k;
        return oVar != null ? (AbstractC2362l) b(oVar, abstractC2362l) : abstractC2362l;
    }

    @f
    public static <T> AbstractC2368s<T> Q(@f AbstractC2368s<T> abstractC2368s) {
        o<? super AbstractC2368s, ? extends AbstractC2368s> oVar = f30427o;
        return oVar != null ? (AbstractC2368s) b(oVar, abstractC2368s) : abstractC2368s;
    }

    @f
    public static <T> B<T> R(@f B<T> b10) {
        o<? super B, ? extends B> oVar = f30425m;
        return oVar != null ? (B) b(oVar, b10) : b10;
    }

    @f
    public static <T> K<T> S(@f K<T> k10) {
        o<? super K, ? extends K> oVar = f30428p;
        return oVar != null ? (K) b(oVar, k10) : k10;
    }

    @f
    public static <T> Ee.a<T> T(@f Ee.a<T> aVar) {
        o<? super Ee.a, ? extends Ee.a> oVar = f30424l;
        return oVar != null ? (Ee.a) b(oVar, aVar) : aVar;
    }

    @f
    public static <T> Ve.a<T> U(@f Ve.a<T> aVar) {
        o<? super Ve.a, ? extends Ve.a> oVar = f30426n;
        return oVar != null ? (Ve.a) b(oVar, aVar) : aVar;
    }

    @f
    public static <T> b<T> V(@f b<T> bVar) {
        o<? super b, ? extends b> oVar = f30430r;
        return oVar != null ? (b) b(oVar, bVar) : bVar;
    }

    public static boolean W() {
        e eVar = f30436x;
        if (eVar == null) {
            return false;
        }
        try {
            return eVar.getAsBoolean();
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @f
    public static J X(@f J j10) {
        o<? super J, ? extends J> oVar = f30419g;
        return oVar == null ? j10 : (J) b(oVar, j10);
    }

    public static void Y(@f Throwable th2) {
        Fe.g<? super Throwable> gVar = f30413a;
        if (th2 == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!K(th2)) {
            th2 = new UndeliverableException(th2);
        }
        if (gVar != null) {
            try {
                gVar.accept(th2);
                return;
            } catch (Throwable th3) {
                th3.printStackTrace();
                I0(th3);
            }
        }
        th2.printStackTrace();
        I0(th2);
    }

    @f
    public static J Z(@f J j10) {
        o<? super J, ? extends J> oVar = f30421i;
        return oVar == null ? j10 : (J) b(oVar, j10);
    }

    @f
    public static <T, U, R> R a(@f c<T, U, R> cVar, @f T t10, @f U u10) {
        try {
            return cVar.apply(t10, u10);
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @f
    public static J a0(@f J j10) {
        o<? super J, ? extends J> oVar = f30422j;
        return oVar == null ? j10 : (J) b(oVar, j10);
    }

    @f
    public static <T, R> R b(@f o<T, R> oVar, @f T t10) {
        try {
            return oVar.apply(t10);
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @f
    public static Runnable b0(@f Runnable runnable) {
        He.b.g(runnable, "run is null");
        o<? super Runnable, ? extends Runnable> oVar = f30414b;
        return oVar == null ? runnable : (Runnable) b(oVar, runnable);
    }

    @f
    public static J c(@f o<? super Callable<J>, ? extends J> oVar, Callable<J> callable) {
        return (J) He.b.g(b(oVar, callable), "Scheduler Callable result can't be null");
    }

    @f
    public static J c0(@f J j10) {
        o<? super J, ? extends J> oVar = f30420h;
        return oVar == null ? j10 : (J) b(oVar, j10);
    }

    @f
    public static J d(@f Callable<J> callable) {
        try {
            return (J) He.b.g(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @f
    public static InterfaceC2356f d0(@f AbstractC2353c abstractC2353c, @f InterfaceC2356f interfaceC2356f) {
        c<? super AbstractC2353c, ? super InterfaceC2356f, ? extends InterfaceC2356f> cVar = f30435w;
        return cVar != null ? (InterfaceC2356f) a(cVar, abstractC2353c, interfaceC2356f) : interfaceC2356f;
    }

    @f
    public static J e(@f ThreadFactory threadFactory) {
        return new Se.b((ThreadFactory) He.b.g(threadFactory, "threadFactory is null"));
    }

    @f
    public static <T> v<? super T> e0(@f AbstractC2368s<T> abstractC2368s, @f v<? super T> vVar) {
        c<? super AbstractC2368s, ? super v, ? extends v> cVar = f30432t;
        return cVar != null ? (v) a(cVar, abstractC2368s, vVar) : vVar;
    }

    @f
    public static J f(@f ThreadFactory threadFactory) {
        return new Se.g((ThreadFactory) He.b.g(threadFactory, "threadFactory is null"));
    }

    @f
    public static <T> I<? super T> f0(@f B<T> b10, @f I<? super T> i10) {
        c<? super B, ? super I, ? extends I> cVar = f30433u;
        return cVar != null ? (I) a(cVar, b10, i10) : i10;
    }

    @f
    public static J g(@f ThreadFactory threadFactory) {
        return new h((ThreadFactory) He.b.g(threadFactory, "threadFactory is null"));
    }

    @f
    public static <T> N<? super T> g0(@f K<T> k10, @f N<? super T> n10) {
        c<? super K, ? super N, ? extends N> cVar = f30434v;
        return cVar != null ? (N) a(cVar, k10, n10) : n10;
    }

    @f
    public static J h(@f ThreadFactory threadFactory) {
        return new r((ThreadFactory) He.b.g(threadFactory, "threadFactory is null"));
    }

    @f
    public static <T> hn.c<? super T> h0(@f AbstractC2362l<T> abstractC2362l, @f hn.c<? super T> cVar) {
        c<? super AbstractC2362l, ? super hn.c, ? extends hn.c> cVar2 = f30431s;
        return cVar2 != null ? (hn.c) a(cVar2, abstractC2362l, cVar) : cVar;
    }

    @g
    public static o<? super J, ? extends J> i() {
        return f30419g;
    }

    public static void i0() {
        k0(null);
        G0(null);
        j0(null);
        m0(null);
        q0(null);
        n0(null);
        H0(null);
        p0(null);
        r0(null);
        o0(null);
        x0(null);
        y0(null);
        B0(null);
        C0(null);
        E0(null);
        F0(null);
        t0(null);
        u0(null);
        v0(null);
        w0(null);
        z0(null);
        A0(null);
        D0(null);
        l0(false);
        s0(null);
    }

    @g
    public static Fe.g<? super Throwable> j() {
        return f30413a;
    }

    public static void j0(@g o<? super J, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30419g = oVar;
    }

    @g
    public static o<? super Callable<J>, ? extends J> k() {
        return f30415c;
    }

    public static void k0(@g Fe.g<? super Throwable> gVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30413a = gVar;
    }

    @g
    public static o<? super Callable<J>, ? extends J> l() {
        return f30417e;
    }

    public static void l0(boolean z10) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30438z = z10;
    }

    @g
    public static o<? super Callable<J>, ? extends J> m() {
        return f30418f;
    }

    public static void m0(@g o<? super Callable<J>, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30415c = oVar;
    }

    @g
    public static o<? super Callable<J>, ? extends J> n() {
        return f30416d;
    }

    public static void n0(@g o<? super Callable<J>, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30417e = oVar;
    }

    @g
    public static o<? super J, ? extends J> o() {
        return f30421i;
    }

    public static void o0(@g o<? super Callable<J>, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30418f = oVar;
    }

    @g
    public static o<? super J, ? extends J> p() {
        return f30422j;
    }

    public static void p0(@g o<? super Callable<J>, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30416d = oVar;
    }

    @g
    public static e q() {
        return f30436x;
    }

    public static void q0(@g o<? super J, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30421i = oVar;
    }

    @g
    public static o<? super AbstractC2353c, ? extends AbstractC2353c> r() {
        return f30429q;
    }

    public static void r0(@g o<? super J, ? extends J> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30422j = oVar;
    }

    @g
    public static c<? super AbstractC2353c, ? super InterfaceC2356f, ? extends InterfaceC2356f> s() {
        return f30435w;
    }

    public static void s0(@g e eVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30436x = eVar;
    }

    @g
    public static o<? super Ee.a, ? extends Ee.a> t() {
        return f30424l;
    }

    public static void t0(@g o<? super AbstractC2353c, ? extends AbstractC2353c> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30429q = oVar;
    }

    @g
    public static o<? super Ve.a, ? extends Ve.a> u() {
        return f30426n;
    }

    public static void u0(@g c<? super AbstractC2353c, ? super InterfaceC2356f, ? extends InterfaceC2356f> cVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30435w = cVar;
    }

    @g
    public static o<? super AbstractC2362l, ? extends AbstractC2362l> v() {
        return f30423k;
    }

    public static void v0(@g o<? super Ee.a, ? extends Ee.a> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30424l = oVar;
    }

    @g
    public static c<? super AbstractC2362l, ? super hn.c, ? extends hn.c> w() {
        return f30431s;
    }

    public static void w0(@g o<? super Ve.a, ? extends Ve.a> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30426n = oVar;
    }

    @g
    public static o<? super AbstractC2368s, ? extends AbstractC2368s> x() {
        return f30427o;
    }

    public static void x0(@g o<? super AbstractC2362l, ? extends AbstractC2362l> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30423k = oVar;
    }

    @g
    public static c<? super AbstractC2368s, ? super v, ? extends v> y() {
        return f30432t;
    }

    public static void y0(@g c<? super AbstractC2362l, ? super hn.c, ? extends hn.c> cVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30431s = cVar;
    }

    @g
    public static o<? super B, ? extends B> z() {
        return f30425m;
    }

    public static void z0(@g o<? super AbstractC2368s, ? extends AbstractC2368s> oVar) {
        if (f30437y) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f30427o = oVar;
    }
}
