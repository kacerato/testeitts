package Be;

import Le.C2726l0;
import Le.O0;
import Oe.A0;
import Oe.A1;
import Oe.B0;
import Oe.B1;
import Oe.C0;
import Oe.C1;
import Oe.C2860a0;
import Oe.C2861a1;
import Oe.C2862b;
import Oe.C2863b0;
import Oe.C2865c;
import Oe.C2866c0;
import Oe.C2867c1;
import Oe.C2868d;
import Oe.C2869d0;
import Oe.C2870d1;
import Oe.C2871e;
import Oe.C2873e1;
import Oe.C2875f0;
import Oe.C2876f1;
import Oe.C2877g;
import Oe.C2878g0;
import Oe.C2879g1;
import Oe.C2880h;
import Oe.C2881h0;
import Oe.C2882h1;
import Oe.C2884i0;
import Oe.C2885i1;
import Oe.C2886j;
import Oe.C2887j0;
import Oe.C2888j1;
import Oe.C2890k0;
import Oe.C2891k1;
import Oe.C2892l;
import Oe.C2893l0;
import Oe.C2894l1;
import Oe.C2895m;
import Oe.C2896m0;
import Oe.C2897m1;
import Oe.C2898n;
import Oe.C2899n0;
import Oe.C2900n1;
import Oe.C2901o;
import Oe.C2902o0;
import Oe.C2903o1;
import Oe.C2904p;
import Oe.C2905p0;
import Oe.C2906q;
import Oe.C2907q0;
import Oe.C2908r0;
import Oe.C2910s0;
import Oe.C2911t;
import Oe.C2912t0;
import Oe.C2913u;
import Oe.C2914u0;
import Oe.C2915v;
import Oe.C2916v0;
import Oe.C2917w;
import Oe.C2918w0;
import Oe.C2919x;
import Oe.C2920x0;
import Oe.C2921y;
import Oe.C2922y0;
import Oe.C2923z;
import Oe.C2924z0;
import Oe.CallableC2872e0;
import Oe.D0;
import Oe.D1;
import Oe.E0;
import Oe.E1;
import Oe.F0;
import Oe.F1;
import Oe.G0;
import Oe.G1;
import Oe.H0;
import Oe.H1;
import Oe.I0;
import Oe.I1;
import Oe.J0;
import Oe.J1;
import Oe.K0;
import Oe.K1;
import Oe.L0;
import Oe.L1;
import Oe.M0;
import Oe.M1;
import Oe.N0;
import Oe.N1;
import Oe.P0;
import Oe.Q0;
import Oe.R0;
import Oe.S0;
import Oe.T;
import Oe.T0;
import Oe.U;
import Oe.U0;
import Oe.V;
import Oe.V0;
import Oe.W;
import Oe.W0;
import Oe.X;
import Oe.X0;
import Oe.Y0;
import Oe.Z;
import Oe.Z0;
import Oe.p1;
import Oe.q1;
import Oe.r1;
import Oe.s1;
import Oe.t1;
import Oe.u1;
import Oe.v1;
import Oe.w1;
import Oe.x1;
import Oe.y1;
import Oe.z1;
import af.C3604b;
import af.C3606d;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class B<T> implements G<T> {

    public static class a {

        public static final int[] f1702a;

        static {
            int[] iArr = new int[EnumC2352b.values().length];
            f1702a = iArr;
            try {
                iArr[EnumC2352b.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1702a[EnumC2352b.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1702a[EnumC2352b.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1702a[EnumC2352b.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> A0(G<? extends T>... gArr) {
        return gArr.length == 0 ? f2() : gArr.length == 1 ? Q7(gArr[0]) : Ye.a.R(new C2915v(K2(gArr), He.a.k(), V(), io.reactivex.internal.util.j.BOUNDARY));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> B0(G<? extends T>... gArr) {
        return gArr.length == 0 ? f2() : gArr.length == 1 ? Q7(gArr[0]) : G0(K2(gArr));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> C0(int i10, int i11, G<? extends T>... gArr) {
        return K2(gArr).Y0(He.a.k(), i10, i11, false);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> D0(G<? extends T>... gArr) {
        return C0(V(), V(), gArr);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> D3(G<? extends G<? extends T>> g10) {
        He.b.g(g10, "sources is null");
        return Ye.a.R(new X(g10, He.a.k(), false, Integer.MAX_VALUE, V()));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> E0(int i10, int i11, G<? extends T>... gArr) {
        return K2(gArr).Y0(He.a.k(), i10, i11, true);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> E3(G<? extends G<? extends T>> g10, int i10) {
        He.b.g(g10, "sources is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.R(new X(g10, He.a.k(), false, i10, V()));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> F0(G<? extends T>... gArr) {
        return E0(V(), V(), gArr);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> F3(G<? extends T> g10, G<? extends T> g11) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return K2(g10, g11).w2(He.a.k(), false, 2);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> G0(G<? extends G<? extends T>> g10) {
        return H0(g10, V(), true);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> G3(G<? extends T> g10, G<? extends T> g11, G<? extends T> g12) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        return K2(g10, g11, g12).w2(He.a.k(), false, 3);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> H0(G<? extends G<? extends T>> g10, int i10, boolean z10) {
        He.b.g(g10, "sources is null");
        He.b.h(i10, "prefetch is null");
        return Ye.a.R(new C2915v(g10, He.a.k(), i10, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> H3(G<? extends T> g10, G<? extends T> g11, G<? extends T> g12, G<? extends T> g13) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        return K2(g10, g11, g12, g13).w2(He.a.k(), false, 4);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> I0(Iterable<? extends G<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return G0(Q2(iterable));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> I3(Iterable<? extends G<? extends T>> iterable) {
        return Q2(iterable).m2(He.a.k());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> J0(G<? extends G<? extends T>> g10) {
        return K0(g10, V(), V());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> J3(Iterable<? extends G<? extends T>> iterable, int i10) {
        return Q2(iterable).n2(He.a.k(), i10);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> K0(G<? extends G<? extends T>> g10, int i10, int i11) {
        return Q7(g10).X0(He.a.k(), i10, i11);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> K2(T... tArr) {
        He.b.g(tArr, "items is null");
        return tArr.length == 0 ? f2() : tArr.length == 1 ? n3(tArr[0]) : Ye.a.R(new C2869d0(tArr));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> K3(Iterable<? extends G<? extends T>> iterable, int i10, int i11) {
        return Q2(iterable).x2(He.a.k(), false, i10, i11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> L0(Iterable<? extends G<? extends T>> iterable) {
        return M0(iterable, V(), V());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> L2(Callable<? extends T> callable) {
        He.b.g(callable, "supplier is null");
        return Ye.a.R(new CallableC2872e0(callable));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> L3(int i10, int i11, G<? extends T>... gArr) {
        return K2(gArr).x2(He.a.k(), false, i10, i11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> M0(Iterable<? extends G<? extends T>> iterable, int i10, int i11) {
        return Q2(iterable).Y0(He.a.k(), i10, i11, false);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> M2(Future<? extends T> future) {
        He.b.g(future, "future is null");
        return Ye.a.R(new C2875f0(future, 0L, null));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> M3(G<? extends T>... gArr) {
        return K2(gArr).n2(He.a.k(), gArr.length);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> N2(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        He.b.g(future, "future is null");
        He.b.g(timeUnit, "unit is null");
        return Ye.a.R(new C2875f0(future, j10, timeUnit));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> N3(int i10, int i11, G<? extends T>... gArr) {
        return K2(gArr).x2(He.a.k(), true, i10, i11);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static <T> B<T> O2(Future<? extends T> future, long j10, TimeUnit timeUnit, J j11) {
        He.b.g(j11, "scheduler is null");
        return N2(future, j10, timeUnit).K5(j11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> O3(G<? extends T>... gArr) {
        return K2(gArr).w2(He.a.k(), true, gArr.length);
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static <T> B<T> P2(Future<? extends T> future, J j10) {
        He.b.g(j10, "scheduler is null");
        return M2(future).K5(j10);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> P3(G<? extends G<? extends T>> g10) {
        He.b.g(g10, "sources is null");
        return Ye.a.R(new X(g10, He.a.k(), true, Integer.MAX_VALUE, V()));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> Q2(Iterable<? extends T> iterable) {
        He.b.g(iterable, "source is null");
        return Ye.a.R(new C2878g0(iterable));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> Q3(G<? extends G<? extends T>> g10, int i10) {
        He.b.g(g10, "sources is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.R(new X(g10, He.a.k(), true, i10, V()));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static B<Long> Q6(long j10, TimeUnit timeUnit) {
        return R6(j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> Q7(G<T> g10) {
        He.b.g(g10, "source is null");
        return g10 instanceof B ? Ye.a.R((B) g10) : Ye.a.R(new C2884i0(g10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public static <T> B<T> R2(hn.b<? extends T> bVar) {
        He.b.g(bVar, "publisher is null");
        return Ye.a.R(new C2881h0(bVar));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> R3(G<? extends T> g10, G<? extends T> g11) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return K2(g10, g11).w2(He.a.k(), true, 2);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static B<Long> R6(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new A1(Math.max(j10, 0L), timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> B<R> R7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, G<? extends T7> g16, G<? extends T8> g17, G<? extends T9> g18, Fe.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        He.b.g(g16, "source7 is null");
        He.b.g(g17, "source8 is null");
        He.b.g(g18, "source9 is null");
        return d8(He.a.E(nVar), false, V(), g10, g11, g12, g13, g14, g15, g16, g17, g18);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> S2(Fe.g<InterfaceC2361k<T>> gVar) {
        He.b.g(gVar, "generator is null");
        return W2(He.a.u(), C2905p0.m(gVar), He.a.h());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> S3(G<? extends T> g10, G<? extends T> g11, G<? extends T> g12) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        return K2(g10, g11, g12).w2(He.a.k(), true, 3);
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> B<R> S7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, G<? extends T7> g16, G<? extends T8> g17, Fe.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        He.b.g(g16, "source7 is null");
        He.b.g(g17, "source8 is null");
        return d8(He.a.D(mVar), false, V(), g10, g11, g12, g13, g14, g15, g16, g17);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, S> B<T> T2(Callable<S> callable, Fe.b<S, InterfaceC2361k<T>> bVar) {
        He.b.g(bVar, "generator is null");
        return W2(callable, C2905p0.l(bVar), He.a.h());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> T3(G<? extends T> g10, G<? extends T> g11, G<? extends T> g12, G<? extends T> g13) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        return K2(g10, g11, g12, g13).w2(He.a.k(), true, 4);
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> B<R> T7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, G<? extends T7> g16, Fe.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        He.b.g(g16, "source7 is null");
        return d8(He.a.C(lVar), false, V(), g10, g11, g12, g13, g14, g15, g16);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, S> B<T> U2(Callable<S> callable, Fe.b<S, InterfaceC2361k<T>> bVar, Fe.g<? super S> gVar) {
        He.b.g(bVar, "generator is null");
        return W2(callable, C2905p0.l(bVar), gVar);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> U3(Iterable<? extends G<? extends T>> iterable) {
        return Q2(iterable).v2(He.a.k(), true);
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, R> B<R> U7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, Fe.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        return d8(He.a.B(kVar), false, V(), g10, g11, g12, g13, g14, g15);
    }

    public static int V() {
        return AbstractC2362l.a0();
    }

    @Ce.d
    @Ce.h("none")
    public static <T, S> B<T> V2(Callable<S> callable, Fe.c<S, InterfaceC2361k<T>, S> cVar) {
        return W2(callable, cVar, He.a.h());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> V3(Iterable<? extends G<? extends T>> iterable, int i10) {
        return Q2(iterable).w2(He.a.k(), true, i10);
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, R> B<R> V7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, Fe.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        return d8(He.a.A(jVar), false, V(), g10, g11, g12, g13, g14);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, S> B<T> W2(Callable<S> callable, Fe.c<S, InterfaceC2361k<T>, S> cVar, Fe.g<? super S> gVar) {
        He.b.g(callable, "initialState is null");
        He.b.g(cVar, "generator is null");
        He.b.g(gVar, "disposeState is null");
        return Ye.a.R(new C2887j0(callable, cVar, gVar));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> W3(Iterable<? extends G<? extends T>> iterable, int i10, int i11) {
        return Q2(iterable).x2(He.a.k(), true, i10, i11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, R> B<R> W7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, Fe.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        return d8(He.a.z(iVar), false, V(), g10, g11, g12, g13);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> X5(G<? extends G<? extends T>> g10) {
        return Y5(g10, V());
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, R> B<R> X7(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, Fe.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        return d8(He.a.y(hVar), false, V(), g10, g11, g12);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> Y5(G<? extends G<? extends T>> g10, int i10) {
        He.b.g(g10, "sources is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new C2900n1(g10, He.a.k(), i10, false));
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> B<R> Y7(G<? extends T1> g10, G<? extends T2> g11, Fe.c<? super T1, ? super T2, ? extends R> cVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return d8(He.a.x(cVar), false, V(), g10, g11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> Z5(G<? extends G<? extends T>> g10) {
        return a6(g10, V());
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> B<R> Z7(G<? extends T1> g10, G<? extends T2> g11, Fe.c<? super T1, ? super T2, ? extends R> cVar, boolean z10) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return d8(He.a.x(cVar), z10, V(), g10, g11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> a6(G<? extends G<? extends T>> g10, int i10) {
        He.b.g(g10, "sources is null");
        He.b.h(i10, "prefetch");
        return Ye.a.R(new C2900n1(g10, He.a.k(), i10, true));
    }

    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> B<R> a8(G<? extends T1> g10, G<? extends T2> g11, Fe.c<? super T1, ? super T2, ? extends R> cVar, boolean z10, int i10) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return d8(He.a.x(cVar), z10, i10, g10, g11);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> B<R> b0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, G<? extends T7> g16, G<? extends T8> g17, G<? extends T9> g18, Fe.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        He.b.g(g16, "source7 is null");
        He.b.g(g17, "source8 is null");
        He.b.g(g18, "source9 is null");
        return j0(He.a.E(nVar), V(), g10, g11, g12, g13, g14, g15, g16, g17, g18);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> b4() {
        return Ye.a.R(D0.f18767b);
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> b8(G<? extends G<? extends T>> g10, Fe.o<? super Object[], ? extends R> oVar) {
        He.b.g(oVar, "zipper is null");
        He.b.g(g10, "sources is null");
        return Ye.a.R(new B1(g10, 16).m2(C2905p0.n(oVar)));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> B<R> c0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, G<? extends T7> g16, G<? extends T8> g17, Fe.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        He.b.g(g16, "source7 is null");
        He.b.g(g17, "source8 is null");
        return j0(He.a.D(mVar), V(), g10, g11, g12, g13, g14, g15, g16, g17);
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> c8(Iterable<? extends G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        He.b.g(oVar, "zipper is null");
        He.b.g(iterable, "sources is null");
        return Ye.a.R(new M1(null, iterable, oVar, V(), false));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> B<R> d0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, G<? extends T7> g16, Fe.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        He.b.g(g16, "source7 is null");
        return j0(He.a.C(lVar), V(), g10, g11, g12, g13, g14, g15, g16);
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> d8(Fe.o<? super Object[], ? extends R> oVar, boolean z10, int i10, G<? extends T>... gArr) {
        if (gArr.length == 0) {
            return f2();
        }
        He.b.g(oVar, "zipper is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new M1(gArr, null, oVar, i10, z10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, T6, R> B<R> e0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, G<? extends T6> g15, Fe.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        He.b.g(g15, "source6 is null");
        return j0(He.a.B(kVar), V(), g10, g11, g12, g13, g14, g15);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> e5(G<? extends T> g10, G<? extends T> g11) {
        return h5(g10, g11, He.b.d(), V());
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> e8(Iterable<? extends G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, boolean z10, int i10) {
        He.b.g(oVar, "zipper is null");
        He.b.g(iterable, "sources is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new M1(null, iterable, oVar, i10, z10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> f(Iterable<? extends G<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.R(new C2880h(null, iterable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, T5, R> B<R> f0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, G<? extends T5> g14, Fe.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        He.b.g(g14, "source5 is null");
        return j0(He.a.A(jVar), V(), g10, g11, g12, g13, g14);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> f2() {
        return Ye.a.R(U.f19225b);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static B<Long> f3(long j10, long j11, TimeUnit timeUnit) {
        return g3(j10, j11, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> f5(G<? extends T> g10, G<? extends T> g11, int i10) {
        return h5(g10, g11, He.b.d(), i10);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> g(G<? extends T>... gArr) {
        He.b.g(gArr, "sources is null");
        int length = gArr.length;
        return length == 0 ? f2() : length == 1 ? Q7(gArr[0]) : Ye.a.R(new C2880h(gArr, null));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, T4, R> B<R> g0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, G<? extends T4> g13, Fe.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        return j0(He.a.z(iVar), V(), g10, g11, g12, g13);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> g2(Throwable th2) {
        He.b.g(th2, "exception is null");
        return h2(He.a.m(th2));
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static B<Long> g3(long j10, long j11, TimeUnit timeUnit, J j12) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j12, "scheduler is null");
        return Ye.a.R(new C2907q0(Math.max(0L, j10), Math.max(0L, j11), timeUnit, j12));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> g5(G<? extends T> g10, G<? extends T> g11, Fe.d<? super T, ? super T> dVar) {
        return h5(g10, g11, dVar, V());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, T3, R> B<R> h0(G<? extends T1> g10, G<? extends T2> g11, G<? extends T3> g12, Fe.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        return j0(He.a.y(hVar), V(), g10, g11, g12);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> h2(Callable<? extends Throwable> callable) {
        He.b.g(callable, "errorSupplier is null");
        return Ye.a.R(new V(callable));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static B<Long> h3(long j10, TimeUnit timeUnit) {
        return g3(j10, j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> h5(G<? extends T> g10, G<? extends T> g11, Fe.d<? super T, ? super T> dVar, int i10) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(dVar, "isEqual is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.S(new C2867c1(g10, g11, dVar, i10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> B<R> i0(G<? extends T1> g10, G<? extends T2> g11, Fe.c<? super T1, ? super T2, ? extends R> cVar) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return j0(He.a.x(cVar), V(), g10, g11);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static B<Long> i3(long j10, TimeUnit timeUnit, J j11) {
        return g3(j10, j10, timeUnit, j11);
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> j0(Fe.o<? super Object[], ? extends R> oVar, int i10, G<? extends T>... gArr) {
        return n0(gArr, oVar, i10);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static B<Long> j3(long j10, long j11, long j12, long j13, TimeUnit timeUnit) {
        return k3(j10, j11, j12, j13, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> k0(Iterable<? extends G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        return l0(iterable, oVar, V());
    }

    @Ce.f
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static B<Long> k3(long j10, long j11, long j12, long j13, TimeUnit timeUnit, J j14) {
        if (j11 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j11);
        }
        if (j11 == 0) {
            return f2().z1(j12, timeUnit, j14);
        }
        long j15 = j10 + (j11 - 1);
        if (j10 > 0 && j15 < 0) {
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
        He.b.g(timeUnit, "unit is null");
        He.b.g(j14, "scheduler is null");
        return Ye.a.R(new C2908r0(j10, j15, Math.max(0L, j12), Math.max(0L, j13), timeUnit, j14));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> l0(Iterable<? extends G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(iterable, "sources is null");
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new C2913u(null, iterable, oVar, i10 << 1, false));
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> m0(G<? extends T>[] gArr, Fe.o<? super Object[], ? extends R> oVar) {
        return n0(gArr, oVar, V());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> n0(G<? extends T>[] gArr, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(gArr, "sources is null");
        if (gArr.length == 0) {
            return f2();
        }
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new C2913u(gArr, null, oVar, i10 << 1, false));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> n3(T t10) {
        He.b.g(t10, "item is null");
        return Ye.a.R(new C2912t0(t10));
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> n7(G<T> g10) {
        He.b.g(g10, "onSubscribe is null");
        if (g10 instanceof B) {
            throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
        }
        return Ye.a.R(new C2884i0(g10));
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> o0(Fe.o<? super Object[], ? extends R> oVar, int i10, G<? extends T>... gArr) {
        return s0(gArr, oVar, i10);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> o3(T t10, T t11) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        return K2(t10, t11);
    }

    @Ce.d
    @Ce.h("none")
    public static B<Integer> o4(int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i11);
        }
        if (i11 == 0) {
            return f2();
        }
        if (i11 == 1) {
            return n3(Integer.valueOf(i10));
        }
        if (i10 + (i11 - 1) <= 2147483647L) {
            return Ye.a.R(new J0(i10, i11));
        }
        throw new IllegalArgumentException("Integer overflow");
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> p0(Iterable<? extends G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        return q0(iterable, oVar, V());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> p3(T t10, T t11, T t12) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        return K2(t10, t11, t12);
    }

    @Ce.d
    @Ce.h("none")
    public static B<Long> p4(long j10, long j11) {
        if (j11 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j11);
        }
        if (j11 == 0) {
            return f2();
        }
        if (j11 == 1) {
            return n3(Long.valueOf(j10));
        }
        long j12 = (j11 - 1) + j10;
        if (j10 <= 0 || j12 >= 0) {
            return Ye.a.R(new K0(j10, j11));
        }
        throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
    }

    @Ce.d
    @Ce.h("none")
    public static <T, D> B<T> p7(Callable<? extends D> callable, Fe.o<? super D, ? extends G<? extends T>> oVar, Fe.g<? super D> gVar) {
        return q7(callable, oVar, gVar, true);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> q0(Iterable<? extends G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(iterable, "sources is null");
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new C2913u(null, iterable, oVar, i10 << 1, true));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> q3(T t10, T t11, T t12, T t13) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        return K2(t10, t11, t12, t13);
    }

    @Ce.d
    @Ce.h("none")
    public static <T, D> B<T> q7(Callable<? extends D> callable, Fe.o<? super D, ? extends G<? extends T>> oVar, Fe.g<? super D> gVar, boolean z10) {
        He.b.g(callable, "resourceSupplier is null");
        He.b.g(oVar, "sourceSupplier is null");
        He.b.g(gVar, "disposer is null");
        return Ye.a.R(new E1(callable, oVar, gVar, z10));
    }

    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> r0(G<? extends T>[] gArr, Fe.o<? super Object[], ? extends R> oVar) {
        return s0(gArr, oVar, V());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> r3(T t10, T t11, T t12, T t13, T t14) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        return K2(t10, t11, t12, t13, t14);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T, R> B<R> s0(G<? extends T>[] gArr, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.h(i10, "bufferSize");
        He.b.g(oVar, "combiner is null");
        return gArr.length == 0 ? f2() : Ye.a.R(new C2913u(gArr, null, oVar, i10 << 1, true));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> s1(E<T> e10) {
        He.b.g(e10, "source is null");
        return Ye.a.R(new Oe.C(e10));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> s3(T t10, T t11, T t12, T t13, T t14, T t15) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        return K2(t10, t11, t12, t13, t14, t15);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> t3(T t10, T t11, T t12, T t13, T t14, T t15, T t16) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        return K2(t10, t11, t12, t13, t14, t15, t16);
    }

    @Ce.d
    @Ce.h("none")
    public static <T> B<T> u0(G<? extends G<? extends T>> g10) {
        return v0(g10, V());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> u3(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        He.b.g(t17, "item8 is null");
        return K2(t10, t11, t12, t13, t14, t15, t16, t17);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> v0(G<? extends G<? extends T>> g10, int i10) {
        He.b.g(g10, "sources is null");
        He.b.h(i10, "prefetch");
        return Ye.a.R(new C2915v(g10, He.a.k(), i10, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> v3(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        He.b.g(t17, "item8 is null");
        He.b.g(t18, "item9 is null");
        return K2(t10, t11, t12, t13, t14, t15, t16, t17, t18);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> w0(G<? extends T> g10, G<? extends T> g11) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        return A0(g10, g11);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> w3(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18, T t19) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        He.b.g(t17, "item8 is null");
        He.b.g(t18, "item9 is null");
        He.b.g(t19, "item10 is null");
        return K2(t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> x0(G<? extends T> g10, G<? extends T> g11, G<? extends T> g12) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        return A0(g10, g11, g12);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> x1(Callable<? extends G<? extends T>> callable) {
        He.b.g(callable, "supplier is null");
        return Ye.a.R(new Oe.F(callable));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> y0(G<? extends T> g10, G<? extends T> g11, G<? extends T> g12, G<? extends T> g13) {
        He.b.g(g10, "source1 is null");
        He.b.g(g11, "source2 is null");
        He.b.g(g12, "source3 is null");
        He.b.g(g13, "source4 is null");
        return A0(g10, g11, g12, g13);
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public static <T> B<T> z0(Iterable<? extends G<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Q2(iterable).V0(He.a.k(), V(), false);
    }

    @Ce.h("none")
    public final void A(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        C2892l.c(this, gVar, gVar2, He.a.f8377c);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> A1(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new Oe.G(this, j10, timeUnit, j11, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<U> A2(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new C2866c0(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> A3(F<? extends R, ? super T> f10) {
        He.b.g(f10, "lifter is null");
        return Ye.a.R(new C2918w0(this, f10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <R> B<R> A4(Fe.o<? super B<T>, ? extends G<R>> oVar, int i10, long j10, TimeUnit timeUnit, J j11) {
        He.b.g(oVar, "selector is null");
        He.b.h(i10, "bufferSize");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return S0.z8(C2905p0.i(this, i10, j10, timeUnit, j11), oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> A5(G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return A0(g10, this);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> A6(long j10, TimeUnit timeUnit) {
        return t1(j10, timeUnit);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<B<T>> A7(long j10, TimeUnit timeUnit, J j11) {
        return C7(j10, timeUnit, j11, Long.MAX_VALUE, false);
    }

    @Ce.h("none")
    public final void B(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        C2892l.c(this, gVar, gVar2, aVar);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> B1(long j10, TimeUnit timeUnit, boolean z10) {
        return A1(j10, timeUnit, C3604b.a(), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <U, V> B<V> B2(Fe.o<? super T, ? extends Iterable<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends V> cVar) {
        He.b.g(oVar, "mapper is null");
        He.b.g(cVar, "resultSelector is null");
        return (B<V>) s2(C2905p0.a(oVar), cVar, false, V(), V());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> B3(Fe.o<? super T, ? extends R> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new C2920x0(this, oVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <R> B<R> B4(Fe.o<? super B<T>, ? extends G<R>> oVar, int i10, J j10) {
        He.b.g(oVar, "selector is null");
        He.b.g(j10, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return S0.z8(C2905p0.h(this, i10), C2905p0.k(oVar, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> B5(Iterable<? extends T> iterable) {
        return A0(Q2(iterable), this);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> B6(long j10, TimeUnit timeUnit, J j11) {
        return u1(j10, timeUnit, j11);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<B<T>> B7(long j10, TimeUnit timeUnit, J j11, long j12) {
        return C7(j10, timeUnit, j11, j12, false);
    }

    @Ce.d
    @Ce.h("none")
    public final B<List<T>> C(int i10) {
        return D(i10, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <U, V> B<T> C1(G<U> g10, Fe.o<? super T, ? extends G<V>> oVar) {
        return G1(g10).D1(oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> C2(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        return D2(oVar, false);
    }

    @Ce.d
    @Ce.h("none")
    public final B<A<T>> C3() {
        return Ye.a.R(new C2924z0(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final <R> B<R> C4(Fe.o<? super B<T>, ? extends G<R>> oVar, long j10, TimeUnit timeUnit) {
        return D4(oVar, j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> C5(T t10) {
        He.b.g(t10, "item is null");
        return A0(n3(t10), this);
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> C6() {
        return F6(TimeUnit.MILLISECONDS, C3604b.a());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<B<T>> C7(long j10, TimeUnit timeUnit, J j11, long j12, boolean z10) {
        return D7(j10, timeUnit, j11, j12, z10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<List<T>> D(int i10, int i11) {
        return (B<List<T>>) E(i10, i11, io.reactivex.internal.util.b.b());
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> D1(Fe.o<? super T, ? extends G<U>> oVar) {
        He.b.g(oVar, "itemDelay is null");
        return (B<T>) m2(C2905p0.c(oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> D2(Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new C2860a0(this, oVar, z10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <R> B<R> D4(Fe.o<? super B<T>, ? extends G<R>> oVar, long j10, TimeUnit timeUnit, J j11) {
        He.b.g(oVar, "selector is null");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return S0.z8(C2905p0.j(this, j10, timeUnit, j11), oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> D5(T... tArr) {
        B K22 = K2(tArr);
        return K22 == f2() ? Ye.a.R(this) : A0(K22, this);
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> D6(J j10) {
        return F6(TimeUnit.MILLISECONDS, j10);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<B<T>> D7(long j10, TimeUnit timeUnit, J j11, long j12, boolean z10, int i10) {
        He.b.h(i10, "bufferSize");
        He.b.g(j11, "scheduler is null");
        He.b.g(timeUnit, "unit is null");
        He.b.i(j12, oc.c.f98682m);
        return Ye.a.R(new J1(this, j10, j10, timeUnit, j11, j12, i10, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U extends Collection<? super T>> B<U> E(int i10, int i11, Callable<U> callable) {
        He.b.h(i10, oc.c.f98682m);
        He.b.h(i11, com.google.android.material.timepicker.d.f65283e);
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.R(new C2895m(this, i10, i11, callable));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> E1(long j10, TimeUnit timeUnit) {
        return F1(j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> E2(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        return F2(oVar, false);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <R> B<R> E4(Fe.o<? super B<T>, ? extends G<R>> oVar, J j10) {
        He.b.g(oVar, "selector is null");
        He.b.g(j10, "scheduler is null");
        return S0.z8(C2905p0.g(this), C2905p0.k(oVar, j10));
    }

    @Ce.h("none")
    public final De.c E5() {
        return I5(He.a.h(), He.a.f8380f, He.a.f8377c, He.a.h());
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> E6(TimeUnit timeUnit) {
        return F6(timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<B<T>> E7(G<B> g10) {
        return F7(g10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <U extends Collection<? super T>> B<U> F(int i10, Callable<U> callable) {
        return E(i10, i10, callable);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> F1(long j10, TimeUnit timeUnit, J j11) {
        return G1(R6(j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> F2(Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new C2863b0(this, oVar, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final Ve.a<T> F4() {
        return S0.y8(this);
    }

    @Ce.d
    @Ce.h("none")
    public final De.c F5(Fe.g<? super T> gVar) {
        return I5(gVar, He.a.f8380f, He.a.f8377c, He.a.h());
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> F6(TimeUnit timeUnit, J j10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j10, "scheduler is null");
        return Ye.a.R(new x1(this, timeUnit, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<B<T>> F7(G<B> g10, int i10) {
        He.b.g(g10, "boundary is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new G1(this, g10, i10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<List<T>> G(long j10, long j11, TimeUnit timeUnit) {
        return (B<List<T>>) I(j10, j11, timeUnit, C3604b.a(), io.reactivex.internal.util.b.b());
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> G1(G<U> g10) {
        He.b.g(g10, "other is null");
        return Ye.a.R(new Oe.H(this, g10));
    }

    @Ce.d
    @Ce.h("none")
    public final De.c G2(Fe.g<? super T> gVar) {
        return F5(gVar);
    }

    @Ce.d
    @Ce.h("none")
    public final Ve.a<T> G4(int i10) {
        He.b.h(i10, "bufferSize");
        return S0.u8(this, i10);
    }

    @Ce.d
    @Ce.h("none")
    public final De.c G5(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        return I5(gVar, gVar2, He.a.f8377c, He.a.h());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> G6(long j10, TimeUnit timeUnit) {
        return O6(j10, timeUnit, null, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final <U, V> B<B<T>> G7(G<U> g10, Fe.o<? super U, ? extends G<V>> oVar) {
        return H7(g10, oVar, V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<List<T>> H(long j10, long j11, TimeUnit timeUnit, J j12) {
        return (B<List<T>>) I(j10, j11, timeUnit, j12, io.reactivex.internal.util.b.b());
    }

    @Ce.d
    @Ce.h("none")
    @Deprecated
    public final <T2> B<T2> H1() {
        return Ye.a.R(new Oe.I(this, He.a.k()));
    }

    @Ce.d
    @Ce.h("none")
    public final De.c H2(Fe.r<? super T> rVar) {
        return J2(rVar, He.a.f8380f, He.a.f8377c);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final Ve.a<T> H4(int i10, long j10, TimeUnit timeUnit) {
        return I4(i10, j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final De.c H5(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        return I5(gVar, gVar2, aVar, He.a.h());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> H6(long j10, TimeUnit timeUnit, G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return O6(j10, timeUnit, g10, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final <U, V> B<B<T>> H7(G<U> g10, Fe.o<? super U, ? extends G<V>> oVar, int i10) {
        He.b.g(g10, "openingIndicator is null");
        He.b.g(oVar, "closingIndicator is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new H1(this, g10, oVar, i10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <U extends Collection<? super T>> B<U> I(long j10, long j11, TimeUnit timeUnit, J j12, Callable<U> callable) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j12, "scheduler is null");
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.R(new C2906q(this, j10, j11, timeUnit, j12, callable, Integer.MAX_VALUE, false));
    }

    @Ce.e
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> I1(Fe.o<? super T, A<R>> oVar) {
        He.b.g(oVar, "selector is null");
        return Ye.a.R(new Oe.I(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final De.c I2(Fe.r<? super T> rVar, Fe.g<? super Throwable> gVar) {
        return J2(rVar, gVar, He.a.f8377c);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ve.a<T> I4(int i10, long j10, TimeUnit timeUnit, J j11) {
        He.b.h(i10, "bufferSize");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return S0.w8(this, j10, timeUnit, j11, i10);
    }

    @Ce.d
    @Ce.h("none")
    public final De.c I5(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.g<? super De.c> gVar3) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        He.b.g(gVar3, "onSubscribe is null");
        Je.u uVar = new Je.u(gVar, gVar2, aVar, gVar3);
        c(uVar);
        return uVar;
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> I6(long j10, TimeUnit timeUnit, J j11) {
        return O6(j10, timeUnit, null, j11);
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<B<T>> I7(Callable<? extends G<B>> callable) {
        return J7(callable, V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<List<T>> J(long j10, TimeUnit timeUnit) {
        return M(j10, timeUnit, C3604b.a(), Integer.MAX_VALUE);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> J1() {
        return L1(He.a.k(), He.a.g());
    }

    @Ce.d
    @Ce.h("none")
    public final De.c J2(Fe.r<? super T> rVar, Fe.g<? super Throwable> gVar, Fe.a aVar) {
        He.b.g(rVar, "onNext is null");
        He.b.g(gVar, "onError is null");
        He.b.g(aVar, "onComplete is null");
        Je.p pVar = new Je.p(rVar, gVar, aVar);
        c(pVar);
        return pVar;
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ve.a<T> J4(int i10, J j10) {
        He.b.h(i10, "bufferSize");
        return S0.A8(G4(i10), j10);
    }

    public abstract void J5(I<? super T> i10);

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> J6(long j10, TimeUnit timeUnit, J j11, G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return O6(j10, timeUnit, g10, j11);
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<B<T>> J7(Callable<? extends G<B>> callable, int i10) {
        He.b.g(callable, "boundary is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new I1(this, callable, i10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<List<T>> K(long j10, TimeUnit timeUnit, int i10) {
        return M(j10, timeUnit, C3604b.a(), i10);
    }

    @Ce.d
    @Ce.h("none")
    public final <K> B<T> K1(Fe.o<? super T, K> oVar) {
        return L1(oVar, He.a.g());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final Ve.a<T> K4(long j10, TimeUnit timeUnit) {
        return L4(j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> K5(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.R(new C2894l1(this, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U, V> B<T> K6(G<U> g10, Fe.o<? super T, ? extends G<V>> oVar) {
        He.b.g(g10, "firstTimeoutIndicator is null");
        return P6(g10, oVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <T1, T2, T3, T4, R> B<R> K7(G<T1> g10, G<T2> g11, G<T3> g12, G<T4> g13, Fe.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        He.b.g(g10, "o1 is null");
        He.b.g(g11, "o2 is null");
        He.b.g(g12, "o3 is null");
        He.b.g(g13, "o4 is null");
        He.b.g(jVar, "combiner is null");
        return P7(new G[]{g10, g11, g12, g13}, He.a.A(jVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<List<T>> L(long j10, TimeUnit timeUnit, J j11) {
        return (B<List<T>>) N(j10, timeUnit, j11, Integer.MAX_VALUE, io.reactivex.internal.util.b.b(), false);
    }

    @Ce.d
    @Ce.h("none")
    public final <K> B<T> L1(Fe.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(callable, "collectionSupplier is null");
        return Ye.a.R(new Oe.K(this, oVar, callable));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ve.a<T> L4(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return S0.v8(this, j10, timeUnit, j11);
    }

    @Ce.d
    @Ce.h("none")
    public final <E extends I<? super T>> E L5(E e10) {
        c(e10);
        return e10;
    }

    @Ce.d
    @Ce.h("none")
    public final <U, V> B<T> L6(G<U> g10, Fe.o<? super T, ? extends G<V>> oVar, G<? extends T> g11) {
        He.b.g(g10, "firstTimeoutIndicator is null");
        He.b.g(g11, "other is null");
        return P6(g10, oVar, g11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <T1, T2, T3, R> B<R> L7(G<T1> g10, G<T2> g11, G<T3> g12, Fe.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        He.b.g(g10, "o1 is null");
        He.b.g(g11, "o2 is null");
        He.b.g(g12, "o3 is null");
        He.b.g(iVar, "combiner is null");
        return P7(new G[]{g10, g11, g12}, He.a.z(iVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<List<T>> M(long j10, TimeUnit timeUnit, J j11, int i10) {
        return (B<List<T>>) N(j10, timeUnit, j11, i10, io.reactivex.internal.util.b.b(), false);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> M1() {
        return O1(He.a.k());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ve.a<T> M4(J j10) {
        He.b.g(j10, "scheduler is null");
        return S0.A8(F4(), j10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> M5(G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return Ye.a.R(new C2897m1(this, g10));
    }

    @Ce.d
    @Ce.h("none")
    public final <V> B<T> M6(Fe.o<? super T, ? extends G<V>> oVar) {
        return P6(null, oVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <T1, T2, R> B<R> M7(G<T1> g10, G<T2> g11, Fe.h<? super T, ? super T1, ? super T2, R> hVar) {
        He.b.g(g10, "o1 is null");
        He.b.g(g11, "o2 is null");
        He.b.g(hVar, "combiner is null");
        return P7(new G[]{g10, g11}, He.a.y(hVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <U extends Collection<? super T>> B<U> N(long j10, TimeUnit timeUnit, J j11, int i10, Callable<U> callable, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        He.b.g(callable, "bufferSupplier is null");
        He.b.h(i10, oc.c.f98682m);
        return Ye.a.R(new C2906q(this, j10, j10, timeUnit, j11, callable, i10, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> N0(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        return O0(oVar, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> N1(Fe.d<? super T, ? super T> dVar) {
        He.b.g(dVar, "comparer is null");
        return Ye.a.R(new Oe.L(this, He.a.k(), dVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> N4() {
        return P4(Long.MAX_VALUE, He.a.c());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> N5(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        return O5(oVar, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <V> B<T> N6(Fe.o<? super T, ? extends G<V>> oVar, G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return P6(null, oVar, g10);
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> N7(G<? extends U> g10, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(g10, "other is null");
        He.b.g(cVar, "combiner is null");
        return Ye.a.R(new K1(this, cVar, g10));
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<List<T>> O(G<B> g10) {
        return (B<List<T>>) S(g10, io.reactivex.internal.util.b.b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> O0(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        if (!(this instanceof Ie.m)) {
            return Ye.a.R(new C2915v(this, oVar, i10, io.reactivex.internal.util.j.IMMEDIATE));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? f2() : Y0.a(call, oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <K> B<T> O1(Fe.o<? super T, K> oVar) {
        He.b.g(oVar, "keySelector is null");
        return Ye.a.R(new Oe.L(this, oVar, He.b.d()));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> O4(long j10) {
        return P4(j10, He.a.c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> O5(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "bufferSize");
        if (!(this instanceof Ie.m)) {
            return Ye.a.R(new C2900n1(this, oVar, i10, false));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? f2() : Y0.a(call, oVar);
    }

    public final B<T> O6(long j10, TimeUnit timeUnit, G<? extends T> g10, J j11) {
        He.b.g(timeUnit, "timeUnit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new z1(this, j10, timeUnit, j11, g10));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> O7(Iterable<? extends G<?>> iterable, Fe.o<? super Object[], R> oVar) {
        He.b.g(iterable, "others is null");
        He.b.g(oVar, "combiner is null");
        return Ye.a.R(new L1(this, iterable, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<List<T>> P(G<B> g10, int i10) {
        He.b.h(i10, "initialCapacity");
        return (B<List<T>>) S(g10, He.a.f(i10));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c P0(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        return Q0(oVar, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> P1(Fe.g<? super T> gVar) {
        He.b.g(gVar, "onAfterNext is null");
        return Ye.a.R(new Oe.M(this, gVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> P4(long j10, Fe.r<? super Throwable> rVar) {
        if (j10 >= 0) {
            He.b.g(rVar, "predicate is null");
            return Ye.a.R(new U0(this, j10, rVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c P5(@Ce.f Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new Ne.o(this, oVar, false));
    }

    public final <U, V> B<T> P6(G<U> g10, Fe.o<? super T, ? extends G<V>> oVar, G<? extends T> g11) {
        He.b.g(oVar, "itemTimeoutIndicator is null");
        return Ye.a.R(new y1(this, g10, oVar, g11));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> P7(G<?>[] gArr, Fe.o<? super Object[], R> oVar) {
        He.b.g(gArr, "others is null");
        He.b.g(oVar, "combiner is null");
        return Ye.a.R(new L1(this, gArr, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <TOpening, TClosing> B<List<T>> Q(G<? extends TOpening> g10, Fe.o<? super TOpening, ? extends G<? extends TClosing>> oVar) {
        return (B<List<T>>) R(g10, oVar, io.reactivex.internal.util.b.b());
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c Q0(Fe.o<? super T, ? extends InterfaceC2359i> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "capacityHint");
        return Ye.a.O(new Ne.l(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> Q1(Fe.a aVar) {
        He.b.g(aVar, "onFinally is null");
        return W1(He.a.h(), He.a.h(), He.a.f8377c, aVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> Q4(Fe.d<? super Integer, ? super Throwable> dVar) {
        He.b.g(dVar, "predicate is null");
        return Ye.a.R(new T0(this, dVar));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c Q5(@Ce.f Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new Ne.o(this, oVar, true));
    }

    @Ce.d
    @Ce.h("none")
    public final <TOpening, TClosing, U extends Collection<? super T>> B<U> R(G<? extends TOpening> g10, Fe.o<? super TOpening, ? extends G<? extends TClosing>> oVar, Callable<U> callable) {
        He.b.g(g10, "openingIndicator is null");
        He.b.g(oVar, "closingIndicator is null");
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.R(new C2898n(this, g10, oVar, callable));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c R0(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        return T0(oVar, true, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> R1(Fe.a aVar) {
        He.b.g(aVar, "onFinally is null");
        return Ye.a.R(new Oe.N(this, aVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> R4(Fe.r<? super Throwable> rVar) {
        return P4(Long.MAX_VALUE, rVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> R5(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        return S5(oVar, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <B, U extends Collection<? super T>> B<U> S(G<B> g10, Callable<U> callable) {
        He.b.g(g10, "boundary is null");
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.R(new C2904p(this, g10, callable));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c S0(Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        return T0(oVar, z10, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> S1(Fe.a aVar) {
        return W1(He.a.h(), He.a.h(), aVar, He.a.f8377c);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> S4(Fe.e eVar) {
        He.b.g(eVar, "stop is null");
        return P4(Long.MAX_VALUE, He.a.v(eVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> S5(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "bufferSize");
        if (!(this instanceof Ie.m)) {
            return Ye.a.R(new C2900n1(this, oVar, i10, true));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? f2() : Y0.a(call, oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> S6() {
        return V6(TimeUnit.MILLISECONDS, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final <B> B<List<T>> T(Callable<? extends G<B>> callable) {
        return (B<List<T>>) U(callable, io.reactivex.internal.util.b.b());
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c T0(Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.O(new Ne.l(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> T1(Fe.a aVar) {
        return Y1(He.a.h(), aVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> T4(Fe.o<? super B<Throwable>, ? extends G<?>> oVar) {
        He.b.g(oVar, "handler is null");
        return Ye.a.R(new V0(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> T5(@Ce.f Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Ne.p(this, oVar, false));
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> T6(J j10) {
        return V6(TimeUnit.MILLISECONDS, j10);
    }

    @Ce.d
    @Ce.h("none")
    public final <B, U extends Collection<? super T>> B<U> U(Callable<? extends G<B>> callable, Callable<U> callable2) {
        He.b.g(callable, "boundarySupplier is null");
        He.b.g(callable2, "bufferSupplier is null");
        return Ye.a.R(new C2901o(this, callable, callable2));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> U0(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        return V0(oVar, V(), true);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> U1(I<? super T> i10) {
        He.b.g(i10, "observer is null");
        return W1(C2905p0.f(i10), C2905p0.e(i10), C2905p0.d(i10), He.a.f8377c);
    }

    @Ce.h("none")
    public final void U4(I<? super T> i10) {
        He.b.g(i10, "observer is null");
        if (i10 instanceof We.l) {
            c(i10);
        } else {
            c(new We.l(i10));
        }
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> U5(@Ce.f Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Ne.p(this, oVar, true));
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> U6(TimeUnit timeUnit) {
        return V6(timeUnit, C3604b.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> V0(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10, boolean z10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        if (!(this instanceof Ie.m)) {
            return Ye.a.R(new C2915v(this, oVar, i10, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? f2() : Y0.a(call, oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> V1(Fe.g<? super A<T>> gVar) {
        He.b.g(gVar, "onNotification is null");
        return W1(He.a.t(gVar), He.a.s(gVar), He.a.r(gVar), He.a.f8377c);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> V4(long j10, TimeUnit timeUnit) {
        return W4(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> V5(@Ce.f Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Ne.q(this, oVar, false));
    }

    @Ce.d
    @Ce.h("none")
    public final B<C3606d<T>> V6(TimeUnit timeUnit, J j10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j10, "scheduler is null");
        return (B<C3606d<T>>) B3(He.a.w(timeUnit, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> W() {
        return X(16);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> W0(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        return X0(oVar, Integer.MAX_VALUE, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> W1(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        He.b.g(aVar2, "onAfterTerminate is null");
        return Ye.a.R(new Oe.O(this, gVar, gVar2, aVar, aVar2));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> W4(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new W0(this, j10, timeUnit, j11, false));
    }

    @Ce.f
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> W5(@Ce.f Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new Ne.q(this, oVar, true));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> R W6(Fe.o<? super B<T>, R> oVar) {
        try {
            return (R) ((Fe.o) He.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> X(int i10) {
        He.b.h(i10, "initialCapacity");
        return Ye.a.R(new Oe.r(this, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> X0(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.R(new C2917w(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10, i11));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> X1(Fe.g<? super Throwable> gVar) {
        Fe.g<? super T> h10 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return W1(h10, gVar, aVar, aVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <K> B<Ve.b<K, T>> X2(Fe.o<? super T, ? extends K> oVar) {
        return (B<Ve.b<K, T>>) a3(oVar, He.a.k(), false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> X3(@Ce.f InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.R(new A0(this, interfaceC2359i));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> X4(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new W0(this, j10, timeUnit, j11, z10));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> X6(EnumC2352b enumC2352b) {
        C2726l0 c2726l0 = new C2726l0(this);
        int i10 = a.f1702a[enumC2352b.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? c2726l0.r4() : Ye.a.P(new O0(c2726l0)) : c2726l0 : c2726l0.B4() : c2726l0.z4();
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<U> Y(Class<U> cls) {
        He.b.g(cls, "clazz is null");
        return (B<U>) B3(He.a.e(cls));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> Y0(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10, int i11, boolean z10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.R(new C2917w(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10, i11));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> Y1(Fe.g<? super De.c> gVar, Fe.a aVar) {
        He.b.g(gVar, "onSubscribe is null");
        He.b.g(aVar, "onDispose is null");
        return Ye.a.R(new Oe.P(this, gVar, aVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <K, V> B<Ve.b<K, V>> Y2(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        return a3(oVar, oVar2, false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> Y3(@Ce.f y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return Ye.a.R(new B0(this, yVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> Y4(long j10, TimeUnit timeUnit, boolean z10) {
        return X4(j10, timeUnit, C3604b.a(), z10);
    }

    @Ce.d
    @Ce.h("none")
    public final Future<T> Y6() {
        return (Future) L5(new Je.q());
    }

    @Ce.d
    @Ce.h("none")
    public final <U> K<U> Z(Callable<? extends U> callable, Fe.b<? super U, ? super T> bVar) {
        He.b.g(callable, "initialValueSupplier is null");
        He.b.g(bVar, "collector is null");
        return Ye.a.S(new C2911t(this, callable, bVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> Z0(Fe.o<? super T, ? extends G<? extends R>> oVar, boolean z10) {
        return Y0(oVar, Integer.MAX_VALUE, V(), z10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> Z1(Fe.g<? super T> gVar) {
        Fe.g<? super Throwable> h10 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return W1(gVar, h10, aVar, aVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <K, V> B<Ve.b<K, V>> Z2(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, boolean z10) {
        return a3(oVar, oVar2, z10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> Z3(G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return F3(this, g10);
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> Z4(G<U> g10) {
        He.b.g(g10, "sampler is null");
        return Ye.a.R(new X0(this, g10, false));
    }

    @Ce.d
    @Ce.h("none")
    public final K<List<T>> Z6() {
        return a7(16);
    }

    @Ce.d
    @Ce.h("none")
    public final <U> K<U> a0(U u10, Fe.b<? super U, ? super T> bVar) {
        He.b.g(u10, "initialValue is null");
        return Z(He.a.m(u10), bVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<U> a1(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.R(new C2866c0(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> a2(Fe.g<? super De.c> gVar) {
        return Y1(gVar, He.a.f8377c);
    }

    @Ce.d
    @Ce.h("none")
    public final <K, V> B<Ve.b<K, V>> a3(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, boolean z10, int i10) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new C2890k0(this, oVar, oVar2, i10, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> a4(@Ce.f Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return Ye.a.R(new C0(this, q10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> a5(G<U> g10, boolean z10) {
        He.b.g(g10, "sampler is null");
        return Ye.a.R(new X0(this, g10, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final K<List<T>> a7(int i10) {
        He.b.h(i10, "capacityHint");
        return Ye.a.S(new C1(this, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<U> b1(Fe.o<? super T, ? extends Iterable<? extends U>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return (B<U>) O0(C2905p0.a(oVar), i10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> b2(Fe.a aVar) {
        He.b.g(aVar, "onTerminate is null");
        return W1(He.a.h(), He.a.a(aVar), aVar, He.a.f8377c);
    }

    @Ce.d
    @Ce.h("none")
    public final <K> B<Ve.b<K, T>> b3(Fe.o<? super T, ? extends K> oVar, boolean z10) {
        return (B<Ve.b<K, T>>) a3(oVar, He.a.k(), z10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> b5(Fe.c<T, T, T> cVar) {
        He.b.g(cVar, "accumulator is null");
        return Ye.a.R(new Z0(this, cVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> b6(long j10) {
        if (j10 >= 0) {
            return Ye.a.R(new C2903o1(this, j10));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h("none")
    public final <U extends Collection<? super T>> K<U> b7(Callable<U> callable) {
        He.b.g(callable, "collectionSupplier is null");
        return Ye.a.S(new C1(this, callable));
    }

    @Override
    @Ce.h("none")
    public final void c(I<? super T> i10) {
        He.b.g(i10, "observer is null");
        try {
            I<? super T> f02 = Ye.a.f0(this, i10);
            He.b.g(f02, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            J5(f02);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> c1(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        return d1(oVar, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> c2(long j10) {
        if (j10 >= 0) {
            return Ye.a.Q(new Oe.S(this, j10));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h("none")
    public final <TRight, TLeftEnd, TRightEnd, R> B<R> c3(G<? extends TRight> g10, Fe.o<? super T, ? extends G<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends G<TRightEnd>> oVar2, Fe.c<? super T, ? super B<TRight>, ? extends R> cVar) {
        He.b.g(g10, "other is null");
        He.b.g(oVar, "leftEnd is null");
        He.b.g(oVar2, "rightEnd is null");
        He.b.g(cVar, "resultSelector is null");
        return Ye.a.R(new C2893l0(this, g10, oVar, oVar2, cVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> c4(J j10) {
        return e4(j10, false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> c5(R r10, Fe.c<R, ? super T, R> cVar) {
        He.b.g(r10, "initialValue is null");
        return d5(He.a.m(r10), cVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> c6(long j10, TimeUnit timeUnit) {
        return n6(Q6(j10, timeUnit));
    }

    @Ce.d
    @Ce.h("none")
    public final <K> K<Map<K, T>> c7(Fe.o<? super T, ? extends K> oVar) {
        He.b.g(oVar, "keySelector is null");
        return (K<Map<K, T>>) Z(io.reactivex.internal.util.l.a(), He.a.F(oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<Boolean> d(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.S(new C2877g(this, rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> d1(Fe.o<? super T, ? extends y<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.R(new Ne.m(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> d2(long j10, T t10) {
        if (j10 >= 0) {
            He.b.g(t10, "defaultItem is null");
            return Ye.a.S(new T(this, j10, t10));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> d3() {
        return Ye.a.R(new C2896m0(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> d4(J j10, boolean z10) {
        return e4(j10, z10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> d5(Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        He.b.g(callable, "seedSupplier is null");
        He.b.g(cVar, "accumulator is null");
        return Ye.a.R(new C2861a1(this, callable, cVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> d6(long j10, TimeUnit timeUnit, J j11) {
        return n6(R6(j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, V>> d7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        return (K<Map<K, V>>) Z(io.reactivex.internal.util.l.a(), He.a.G(oVar, oVar2));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> e1(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        return g1(oVar, true, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> e2(long j10) {
        if (j10 >= 0) {
            return Ye.a.S(new T(this, j10, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c e3() {
        return Ye.a.O(new C2902o0(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> e4(J j10, boolean z10, int i10) {
        He.b.g(j10, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new E0(this, j10, z10, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> e6(int i10) {
        if (i10 >= 0) {
            return i10 == 0 ? Ye.a.R(new C2899n0(this)) : i10 == 1 ? Ye.a.R(new q1(this)) : Ye.a.R(new p1(this, i10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, V>> e7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        He.b.g(callable, "mapSupplier is null");
        return (K<Map<K, V>>) Z(callable, He.a.G(oVar, oVar2));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> f1(Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
        return g1(oVar, z10, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<U> f4(Class<U> cls) {
        He.b.g(cls, "clazz is null");
        return i2(He.a.l(cls)).Y(cls);
    }

    @Ce.d
    @Ce.h(Ce.h.f4308s)
    public final B<T> f6(long j10, long j11, TimeUnit timeUnit) {
        return h6(j10, j11, timeUnit, C3604b.i(), false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <K> K<Map<K, Collection<T>>> f7(Fe.o<? super T, ? extends K> oVar) {
        return (K<Map<K, Collection<T>>>) i7(oVar, He.a.k(), io.reactivex.internal.util.l.a(), io.reactivex.internal.util.b.c());
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> f8(G<? extends U> g10, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(g10, "other is null");
        return Y7(this, g10, cVar);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> g1(Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.R(new Ne.m(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> g4(G<? extends T> g10) {
        He.b.g(g10, "next is null");
        return h4(He.a.n(g10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> g6(long j10, long j11, TimeUnit timeUnit, J j12) {
        return h6(j10, j11, timeUnit, j12, false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, Collection<V>>> g7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        return i7(oVar, oVar2, io.reactivex.internal.util.l.a(), io.reactivex.internal.util.b.c());
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> g8(G<? extends U> g10, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10) {
        return Z7(this, g10, cVar, z10);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> h1(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        return i1(oVar, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> h4(Fe.o<? super Throwable, ? extends G<? extends T>> oVar) {
        He.b.g(oVar, "resumeFunction is null");
        return Ye.a.R(new F0(this, oVar, false));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> h6(long j10, long j11, TimeUnit timeUnit, J j12, boolean z10, int i10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j12, "scheduler is null");
        He.b.h(i10, "bufferSize");
        if (j10 >= 0) {
            return Ye.a.R(new r1(this, j10, j11, timeUnit, j12, i10, z10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, Collection<V>>> h7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return i7(oVar, oVar2, callable, io.reactivex.internal.util.b.c());
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> h8(G<? extends U> g10, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i10) {
        return a8(this, g10, cVar, z10, i10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> i(G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return g(this, g10);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> i1(Fe.o<? super T, ? extends Q<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.R(new Ne.n(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> i2(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.R(new W(this, rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> i4(Fe.o<? super Throwable, ? extends T> oVar) {
        He.b.g(oVar, "valueSupplier is null");
        return Ye.a.R(new G0(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> i5() {
        return Ye.a.R(new C2870d1(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4308s)
    public final B<T> i6(long j10, TimeUnit timeUnit) {
        return l6(j10, timeUnit, C3604b.i(), false, V());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, Collection<V>>> i7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, Fe.o<? super K, ? extends Collection<? super V>> oVar3) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        He.b.g(callable, "mapSupplier is null");
        He.b.g(oVar3, "collectionFactory is null");
        return (K<Map<K, Collection<V>>>) Z(callable, He.a.H(oVar, oVar2, oVar3));
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> i8(Iterable<U> iterable, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(iterable, "other is null");
        He.b.g(cVar, "zipper is null");
        return Ye.a.R(new N1(this, iterable, cVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<Boolean> j(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.S(new C2886j(this, rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> j1(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        return l1(oVar, true, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> j2(T t10) {
        return d2(0L, t10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> j4(T t10) {
        He.b.g(t10, "item is null");
        return i4(He.a.n(t10));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> j5() {
        return n4().o8();
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> j6(long j10, TimeUnit timeUnit, J j11) {
        return l6(j10, timeUnit, j11, false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final K<List<T>> j7() {
        return l7(He.a.q());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> R k(@Ce.f C<T, ? extends R> c10) {
        return (R) ((C) He.b.g(c10, "converter is null")).a(this);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> k1(Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
        return l1(oVar, z10, 2);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> k2() {
        return c2(0L);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> k4(G<? extends T> g10) {
        He.b.g(g10, "next is null");
        return Ye.a.R(new F0(this, He.a.n(g10), true));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> k5(T t10) {
        He.b.g(t10, "defaultItem is null");
        return Ye.a.S(new C2876f1(this, t10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> k6(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        return l6(j10, timeUnit, j11, z10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final K<List<T>> k7(int i10) {
        return m7(He.a.q(), i10);
    }

    @Ce.d
    @Ce.h("none")
    public final T l() {
        Je.f fVar = new Je.f();
        c(fVar);
        T b10 = fVar.b();
        if (b10 != null) {
            return b10;
        }
        throw new NoSuchElementException();
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> l1(Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.R(new Ne.n(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> l2() {
        return e2(0L);
    }

    @Ce.d
    @Ce.h("none")
    public final K<Boolean> l3() {
        return d(He.a.b());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> l4() {
        return Ye.a.R(new Oe.J(this));
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> l5() {
        return Ye.a.Q(new C2873e1(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> l6(long j10, TimeUnit timeUnit, J j11, boolean z10, int i10) {
        return h6(Long.MAX_VALUE, j10, timeUnit, j11, z10, i10);
    }

    @Ce.d
    @Ce.h("none")
    public final K<List<T>> l7(Comparator<? super T> comparator) {
        He.b.g(comparator, "comparator is null");
        return (K<List<T>>) Z6().u0(He.a.o(comparator));
    }

    @Ce.d
    @Ce.h("none")
    public final T m(T t10) {
        Je.f fVar = new Je.f();
        c(fVar);
        T b10 = fVar.b();
        return b10 != null ? b10 : t10;
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> m1(@Ce.f InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.R(new C2919x(this, interfaceC2359i));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> m2(Fe.o<? super T, ? extends G<? extends R>> oVar) {
        return v2(oVar, false);
    }

    @Ce.d
    @Ce.h("none")
    public final <TRight, TLeftEnd, TRightEnd, R> B<R> m3(G<? extends TRight> g10, Fe.o<? super T, ? extends G<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends G<TRightEnd>> oVar2, Fe.c<? super T, ? super TRight, ? extends R> cVar) {
        He.b.g(g10, "other is null");
        He.b.g(oVar, "leftEnd is null");
        He.b.g(oVar2, "rightEnd is null");
        He.b.g(cVar, "resultSelector is null");
        return Ye.a.R(new C2910s0(this, g10, oVar, oVar2, cVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> m4(Fe.o<? super B<T>, ? extends G<R>> oVar) {
        He.b.g(oVar, "selector is null");
        return Ye.a.R(new I0(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> m5() {
        return Ye.a.S(new C2876f1(this, null));
    }

    @Ce.d
    @Ce.h(Ce.h.f4308s)
    public final B<T> m6(long j10, TimeUnit timeUnit, boolean z10) {
        return l6(j10, timeUnit, C3604b.i(), z10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final K<List<T>> m7(Comparator<? super T> comparator, int i10) {
        He.b.g(comparator, "comparator is null");
        return (K<List<T>>) a7(i10).u0(He.a.o(comparator));
    }

    @Ce.h("none")
    public final void n(Fe.g<? super T> gVar) {
        Iterator<T> it = o().iterator();
        while (it.hasNext()) {
            try {
                gVar.accept(it.next());
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ((De.c) it).dispose();
                throw ExceptionHelper.f(th2);
            }
        }
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> n1(@Ce.f y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return Ye.a.R(new C2921y(this, yVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> n2(Fe.o<? super T, ? extends G<? extends R>> oVar, int i10) {
        return x2(oVar, false, i10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final Ve.a<T> n4() {
        return H0.u8(this);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> n5(long j10) {
        return j10 <= 0 ? Ye.a.R(this) : Ye.a.R(new C2879g1(this, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> n6(G<U> g10) {
        He.b.g(g10, "other is null");
        return Ye.a.R(new s1(this, g10));
    }

    @Ce.d
    @Ce.h("none")
    public final Iterable<T> o() {
        return p(V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> o1(G<? extends T> g10) {
        He.b.g(g10, "other is null");
        return w0(this, g10);
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> o2(Fe.o<? super T, ? extends G<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        return s2(oVar, cVar, false, V(), V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> o5(long j10, TimeUnit timeUnit) {
        return w5(Q6(j10, timeUnit));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> o6(Fe.r<? super T> rVar) {
        He.b.g(rVar, "stopPredicate is null");
        return Ye.a.R(new t1(this, rVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> o7(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.R(new D1(this, j10));
    }

    @Ce.d
    @Ce.h("none")
    public final Iterable<T> p(int i10) {
        He.b.h(i10, "bufferSize");
        return new C2862b(this, i10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> p1(@Ce.f Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return Ye.a.R(new C2923z(this, q10));
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> p2(Fe.o<? super T, ? extends G<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, int i10) {
        return s2(oVar, cVar, false, i10, V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> p5(long j10, TimeUnit timeUnit, J j11) {
        return w5(R6(j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> p6(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.R(new u1(this, rVar));
    }

    @Ce.d
    @Ce.h("none")
    public final T q() {
        Je.g gVar = new Je.g();
        c(gVar);
        T b10 = gVar.b();
        if (b10 != null) {
            return b10;
        }
        throw new NoSuchElementException();
    }

    @Ce.d
    @Ce.h("none")
    public final K<Boolean> q1(Object obj) {
        He.b.g(obj, "element is null");
        return j(He.a.i(obj));
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> q2(Fe.o<? super T, ? extends G<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10) {
        return s2(oVar, cVar, z10, V(), V());
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> q4(Fe.c<T, T, T> cVar) {
        He.b.g(cVar, "reducer is null");
        return Ye.a.Q(new L0(this, cVar));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> q5(int i10) {
        if (i10 >= 0) {
            return i10 == 0 ? Ye.a.R(this) : Ye.a.R(new C2882h1(this, i10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i10);
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<T> q6() {
        We.n<T> nVar = new We.n<>();
        c(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final T r(T t10) {
        Je.g gVar = new Je.g();
        c(gVar);
        T b10 = gVar.b();
        return b10 != null ? b10 : t10;
    }

    @Ce.d
    @Ce.h("none")
    public final K<Long> r1() {
        return Ye.a.S(new Oe.B(this));
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> r2(Fe.o<? super T, ? extends G<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i10) {
        return s2(oVar, cVar, z10, i10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> K<R> r4(R r10, Fe.c<R, ? super T, R> cVar) {
        He.b.g(r10, "seed is null");
        He.b.g(cVar, "reducer is null");
        return Ye.a.S(new M0(this, r10, cVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4308s)
    public final B<T> r5(long j10, TimeUnit timeUnit) {
        return u5(j10, timeUnit, C3604b.i(), false, V());
    }

    @Ce.d
    @Ce.h("none")
    public final We.n<T> r6(boolean z10) {
        We.n<T> nVar = new We.n<>();
        if (z10) {
            nVar.dispose();
        }
        c(nVar);
        return nVar;
    }

    @Ce.d
    @Ce.h("none")
    public final B<B<T>> r7(long j10) {
        return t7(j10, j10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final Iterable<T> s() {
        return new C2865c(this);
    }

    @Ce.d
    @Ce.h("none")
    public final <U, R> B<R> s2(Fe.o<? super T, ? extends G<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.g(cVar, "combiner is null");
        return x2(C2905p0.b(oVar, cVar), z10, i10, i11);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> K<R> s4(Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        He.b.g(callable, "seedSupplier is null");
        He.b.g(cVar, "reducer is null");
        return Ye.a.S(new N0(this, callable, cVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> s5(long j10, TimeUnit timeUnit, J j11) {
        return u5(j10, timeUnit, j11, false, V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> s6(long j10, TimeUnit timeUnit) {
        return t6(j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final B<B<T>> s7(long j10, long j11) {
        return t7(j10, j11, V());
    }

    @Ce.d
    @Ce.h("none")
    public final Iterable<T> t(T t10) {
        return new C2868d(this, t10);
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> t0(H<? super T, ? extends R> h10) {
        return Q7(((H) He.b.g(h10, "composer is null")).a(this));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> t1(long j10, TimeUnit timeUnit) {
        return u1(j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> t2(Fe.o<? super T, ? extends G<? extends R>> oVar, Fe.o<? super Throwable, ? extends G<? extends R>> oVar2, Callable<? extends G<? extends R>> callable) {
        He.b.g(oVar, "onNextMapper is null");
        He.b.g(oVar2, "onErrorMapper is null");
        He.b.g(callable, "onCompleteSupplier is null");
        return D3(new C2922y0(this, oVar, oVar2, callable));
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> t4() {
        return u4(Long.MAX_VALUE);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> t5(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        return u5(j10, timeUnit, j11, z10, V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> t6(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new v1(this, j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public final B<B<T>> t7(long j10, long j11, int i10) {
        He.b.i(j10, oc.c.f98682m);
        He.b.i(j11, com.google.android.material.timepicker.d.f65283e);
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new F1(this, j10, j11, i10));
    }

    @Ce.d
    @Ce.h("none")
    public final Iterable<T> u() {
        return new C2871e(this);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> u1(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new Oe.E(this, j10, timeUnit, j11));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> u2(Fe.o<? super T, ? extends G<? extends R>> oVar, Fe.o<Throwable, ? extends G<? extends R>> oVar2, Callable<? extends G<? extends R>> callable, int i10) {
        He.b.g(oVar, "onNextMapper is null");
        He.b.g(oVar2, "onErrorMapper is null");
        He.b.g(callable, "onCompleteSupplier is null");
        return E3(new C2922y0(this, oVar, oVar2, callable), i10);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> u4(long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? f2() : Ye.a.R(new P0(this, j10));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j10);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> u5(long j10, TimeUnit timeUnit, J j11, boolean z10, int i10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.R(new C2885i1(this, j10, timeUnit, j11, i10 << 1, z10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> u6(long j10, TimeUnit timeUnit) {
        return V4(j10, timeUnit);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<B<T>> u7(long j10, long j11, TimeUnit timeUnit) {
        return w7(j10, j11, timeUnit, C3604b.a(), V());
    }

    @Ce.d
    @Ce.h("none")
    public final T v() {
        T k10 = l5().k();
        if (k10 != null) {
            return k10;
        }
        throw new NoSuchElementException();
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> v1(Fe.o<? super T, ? extends G<U>> oVar) {
        He.b.g(oVar, "debounceSelector is null");
        return Ye.a.R(new Oe.D(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> v2(Fe.o<? super T, ? extends G<? extends R>> oVar, boolean z10) {
        return w2(oVar, z10, Integer.MAX_VALUE);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> v4(Fe.e eVar) {
        He.b.g(eVar, "stop is null");
        return Ye.a.R(new Q0(this, eVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4308s)
    public final B<T> v5(long j10, TimeUnit timeUnit, boolean z10) {
        return u5(j10, timeUnit, C3604b.i(), z10, V());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> v6(long j10, TimeUnit timeUnit, J j11) {
        return W4(j10, timeUnit, j11);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<B<T>> v7(long j10, long j11, TimeUnit timeUnit, J j12) {
        return w7(j10, j11, timeUnit, j12, V());
    }

    @Ce.d
    @Ce.h("none")
    public final T w(T t10) {
        return k5(t10).k();
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> w1(T t10) {
        He.b.g(t10, "defaultItem is null");
        return M5(n3(t10));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> w2(Fe.o<? super T, ? extends G<? extends R>> oVar, boolean z10, int i10) {
        return x2(oVar, z10, i10, V());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> w4(Fe.o<? super B<Object>, ? extends G<?>> oVar) {
        He.b.g(oVar, "handler is null");
        return Ye.a.R(new R0(this, oVar));
    }

    @Ce.d
    @Ce.h("none")
    public final <U> B<T> w5(G<U> g10) {
        He.b.g(g10, "other is null");
        return Ye.a.R(new C2888j1(this, g10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> w6(long j10, TimeUnit timeUnit) {
        return y6(j10, timeUnit, C3604b.a(), false);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<B<T>> w7(long j10, long j11, TimeUnit timeUnit, J j12, int i10) {
        He.b.i(j10, "timespan");
        He.b.i(j11, "timeskip");
        He.b.h(i10, "bufferSize");
        He.b.g(j12, "scheduler is null");
        He.b.g(timeUnit, "unit is null");
        return Ye.a.R(new J1(this, j10, j11, timeUnit, j12, Long.MAX_VALUE, i10, false));
    }

    @Ce.h("none")
    public final void x() {
        C2892l.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.d
    @Ce.h("none")
    public final <R> B<R> x2(Fe.o<? super T, ? extends G<? extends R>> oVar, boolean z10, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "bufferSize");
        if (!(this instanceof Ie.m)) {
            return Ye.a.R(new X(this, oVar, z10, i10, i11));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? f2() : Y0.a(call, oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> x3(T t10) {
        He.b.g(t10, "defaultItem is null");
        return Ye.a.S(new C2916v0(this, t10));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> x4(Fe.o<? super B<T>, ? extends G<R>> oVar) {
        He.b.g(oVar, "selector is null");
        return S0.z8(C2905p0.g(this), oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> x5(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.R(new C2891k1(this, rVar));
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> x6(long j10, TimeUnit timeUnit, J j11) {
        return y6(j10, timeUnit, j11, false);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<B<T>> x7(long j10, TimeUnit timeUnit) {
        return C7(j10, timeUnit, C3604b.a(), Long.MAX_VALUE, false);
    }

    @Ce.h("none")
    public final void y(I<? super T> i10) {
        C2892l.b(this, i10);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> y1(long j10, TimeUnit timeUnit) {
        return A1(j10, timeUnit, C3604b.a(), false);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c y2(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        return z2(oVar, false);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> y3() {
        return Ye.a.Q(new C2914u0(this));
    }

    @Ce.d
    @Ce.h("none")
    public final <R> B<R> y4(Fe.o<? super B<T>, ? extends G<R>> oVar, int i10) {
        He.b.g(oVar, "selector is null");
        He.b.h(i10, "bufferSize");
        return S0.z8(C2905p0.h(this, i10), oVar);
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> y5() {
        return Z6().x1().B3(He.a.o(He.a.p())).A2(He.a.k());
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> y6(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new w1(this, j10, timeUnit, j11, z10));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<B<T>> y7(long j10, TimeUnit timeUnit, long j11) {
        return C7(j10, timeUnit, C3604b.a(), j11, false);
    }

    @Ce.h("none")
    public final void z(Fe.g<? super T> gVar) {
        C2892l.c(this, gVar, He.a.f8380f, He.a.f8377c);
    }

    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final B<T> z1(long j10, TimeUnit timeUnit, J j11) {
        return A1(j10, timeUnit, j11, false);
    }

    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c z2(Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new Z(this, oVar, z10));
    }

    @Ce.d
    @Ce.h("none")
    public final K<T> z3() {
        return Ye.a.S(new C2916v0(this, null));
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final <R> B<R> z4(Fe.o<? super B<T>, ? extends G<R>> oVar, int i10, long j10, TimeUnit timeUnit) {
        return A4(oVar, i10, j10, timeUnit, C3604b.a());
    }

    @Ce.d
    @Ce.h("none")
    public final B<T> z5(Comparator<? super T> comparator) {
        He.b.g(comparator, "sortFunction is null");
        return Z6().x1().B3(He.a.o(comparator)).A2(He.a.k());
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<T> z6(long j10, TimeUnit timeUnit, boolean z10) {
        return y6(j10, timeUnit, C3604b.a(), z10);
    }

    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final B<B<T>> z7(long j10, TimeUnit timeUnit, long j11, boolean z10) {
        return C7(j10, timeUnit, C3604b.a(), j11, z10);
    }
}
