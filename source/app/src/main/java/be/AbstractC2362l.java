package Be;

import Le.A0;
import Le.A1;
import Le.B0;
import Le.B1;
import Le.C0;
import Le.C1;
import Le.C2693a0;
import Le.C2695b;
import Le.C2697b1;
import Le.C2698c;
import Le.C2699c0;
import Le.C2700c1;
import Le.C2701d;
import Le.C2702d0;
import Le.C2703d1;
import Le.C2704e;
import Le.C2706e1;
import Le.C2708f0;
import Le.C2709f1;
import Le.C2710g;
import Le.C2711g0;
import Le.C2712g1;
import Le.C2713h;
import Le.C2714h0;
import Le.C2715h1;
import Le.C2718i1;
import Le.C2719j;
import Le.C2720j0;
import Le.C2721j1;
import Le.C2723k0;
import Le.C2724k1;
import Le.C2725l;
import Le.C2727l1;
import Le.C2728m;
import Le.C2729m0;
import Le.C2730m1;
import Le.C2731n;
import Le.C2732n0;
import Le.C2734o;
import Le.C2735o0;
import Le.C2736o1;
import Le.C2737p;
import Le.C2738p0;
import Le.C2739p1;
import Le.C2740q;
import Le.C2741q0;
import Le.C2743r0;
import Le.C2744r1;
import Le.C2746s0;
import Le.C2747s1;
import Le.C2748t;
import Le.C2749t0;
import Le.C2750t1;
import Le.C2751u;
import Le.C2752u0;
import Le.C2753u1;
import Le.C2754v;
import Le.C2755v0;
import Le.C2756v1;
import Le.C2757w;
import Le.C2758w0;
import Le.C2759w1;
import Le.C2760x;
import Le.C2761x0;
import Le.C2762x1;
import Le.C2763y;
import Le.C2764y0;
import Le.C2765y1;
import Le.C2767z0;
import Le.C2768z1;
import Le.CallableC2717i0;
import Le.D0;
import Le.D1;
import Le.E1;
import Le.F0;
import Le.G0;
import Le.G1;
import Le.H0;
import Le.H1;
import Le.I0;
import Le.I1;
import Le.J0;
import Le.J1;
import Le.K0;
import Le.K1;
import Le.L0;
import Le.L1;
import Le.M0;
import Le.M1;
import Le.N0;
import Le.N1;
import Le.O1;
import Le.P0;
import Le.Q0;
import Le.Q1;
import Le.R0;
import Le.R1;
import Le.S0;
import Le.S1;
import Le.T;
import Le.T0;
import Le.T1;
import Le.U0;
import Le.U1;
import Le.V;
import Le.V0;
import Le.V1;
import Le.W;
import Le.W1;
import Le.X;
import Le.X0;
import Le.X1;
import Le.Y;
import Le.Y0;
import Le.Y1;
import Le.Z;
import Le.Z0;
import Le.Z1;
import Le.a2;
import Le.b2;
import Oe.C2881h0;
import af.C3604b;
import af.C3606d;
import cf.C4185d;
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

public abstract class AbstractC2362l<T> implements hn.b<T> {

    public static final int f1717b = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> A0(hn.b<? extends hn.b<? extends T>> bVar) {
        return B0(bVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> A3(T t10, T t11, T t12, T t13) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        return T2(t10, t11, t12, t13);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, R> AbstractC2362l<R> A8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, Fe.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        return I8(He.a.y(hVar), false, a0(), bVar, bVar2, bVar3);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> B0(hn.b<? extends hn.b<? extends T>> bVar, int i10) {
        return a3(bVar).U0(He.a.k(), i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> B3(T t10, T t11, T t12, T t13, T t14) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        return T2(t10, t11, t12, t13, t14);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, R> AbstractC2362l<R> B8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, Fe.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        return I8(He.a.z(iVar), false, a0(), bVar, bVar2, bVar3, bVar4);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> C0(hn.b<? extends T> bVar, hn.b<? extends T> bVar2) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return G0(bVar, bVar2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> C3(T t10, T t11, T t12, T t13, T t14, T t15) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        return T2(t10, t11, t12, t13, t14, t15);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> C6(hn.b<? extends hn.b<? extends T>> bVar) {
        return a3(bVar).r6(He.a.k());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, R> AbstractC2362l<R> C8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, Fe.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        return I8(He.a.A(jVar), false, a0(), bVar, bVar2, bVar3, bVar4, bVar5);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> D0(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, hn.b<? extends T> bVar3) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        return G0(bVar, bVar2, bVar3);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T> AbstractC2362l<T> D1(Callable<? extends hn.b<? extends T>> callable) {
        He.b.g(callable, "supplier is null");
        return Ye.a.P(new Le.I(callable));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> D3(T t10, T t11, T t12, T t13, T t14, T t15, T t16) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        return T2(t10, t11, t12, t13, t14, t15, t16);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> D6(hn.b<? extends hn.b<? extends T>> bVar, int i10) {
        return a3(bVar).s6(He.a.k(), i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, R> AbstractC2362l<R> D8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, Fe.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        return I8(He.a.B(kVar), false, a0(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> E0(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, hn.b<? extends T> bVar3, hn.b<? extends T> bVar4) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        return G0(bVar, bVar2, bVar3, bVar4);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> E3(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        He.b.g(t17, "item8 is null");
        return T2(t10, t11, t12, t13, t14, t15, t16, t17);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> E6(hn.b<? extends hn.b<? extends T>> bVar) {
        return F6(bVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, T7, R> AbstractC2362l<R> E8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, hn.b<? extends T7> bVar7, Fe.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        He.b.g(bVar7, "source7 is null");
        return I8(He.a.C(lVar), false, a0(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> F0(Iterable<? extends hn.b<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Z2(iterable).b1(He.a.k(), 2, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> F3(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        He.b.g(t13, "item4 is null");
        He.b.g(t14, "item5 is null");
        He.b.g(t15, "item6 is null");
        He.b.g(t16, "item7 is null");
        He.b.g(t17, "item8 is null");
        He.b.g(t18, "item9 is null");
        return T2(t10, t11, t12, t13, t14, t15, t16, t17, t18);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> F6(hn.b<? extends hn.b<? extends T>> bVar, int i10) {
        return a3(bVar).x6(He.a.k(), i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> AbstractC2362l<R> F8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, hn.b<? extends T7> bVar7, hn.b<? extends T8> bVar8, Fe.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        He.b.g(bVar7, "source7 is null");
        He.b.g(bVar8, "source8 is null");
        return I8(He.a.D(mVar), false, a0(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> G0(hn.b<? extends T>... bVarArr) {
        return bVarArr.length == 0 ? m2() : bVarArr.length == 1 ? a3(bVarArr[0]) : Ye.a.P(new C2754v(bVarArr, false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> G3(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18, T t19) {
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
        return T2(t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> G5(hn.b<? extends T> bVar, hn.b<? extends T> bVar2) {
        return J5(bVar, bVar2, He.b.d(), a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> AbstractC2362l<R> G8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, hn.b<? extends T7> bVar7, hn.b<? extends T8> bVar8, hn.b<? extends T9> bVar9, Fe.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        He.b.g(bVar7, "source7 is null");
        He.b.g(bVar8, "source8 is null");
        He.b.g(bVar9, "source9 is null");
        return I8(He.a.E(nVar), false, a0(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> H0(hn.b<? extends T>... bVarArr) {
        return bVarArr.length == 0 ? m2() : bVarArr.length == 1 ? a3(bVarArr[0]) : Ye.a.P(new C2754v(bVarArr, true));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> H5(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, int i10) {
        return J5(bVar, bVar2, He.b.d(), i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> H8(Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        He.b.g(oVar, "zipper is null");
        He.b.g(iterable, "sources is null");
        return Ye.a.P(new a2(null, iterable, oVar, a0(), false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> I0(int i10, int i11, hn.b<? extends T>... bVarArr) {
        He.b.g(bVarArr, "sources is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.P(new C2760x(new C2714h0(bVarArr), He.a.k(), i10, i11, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> K<Boolean> I5(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, Fe.d<? super T, ? super T> dVar) {
        return J5(bVar, bVar2, dVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> I8(Fe.o<? super Object[], ? extends R> oVar, boolean z10, int i10, hn.b<? extends T>... bVarArr) {
        if (bVarArr.length == 0) {
            return m2();
        }
        He.b.g(oVar, "zipper is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new a2(bVarArr, null, oVar, i10, z10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> J0(hn.b<? extends T>... bVarArr) {
        return I0(a0(), a0(), bVarArr);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> K<Boolean> J5(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, Fe.d<? super T, ? super T> dVar, int i10) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(dVar, "isEqual is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.S(new C2736o1(bVar, bVar2, dVar, i10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> J8(Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, boolean z10, int i10) {
        He.b.g(oVar, "zipper is null");
        He.b.g(iterable, "sources is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new a2(null, iterable, oVar, i10, z10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> K0(int i10, int i11, hn.b<? extends T>... bVarArr) {
        return T2(bVarArr).e1(He.a.k(), i10, i11, true);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> L0(hn.b<? extends T>... bVarArr) {
        return K0(a0(), a0(), bVarArr);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> M0(hn.b<? extends hn.b<? extends T>> bVar) {
        return N0(bVar, a0(), true);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> N0(hn.b<? extends hn.b<? extends T>> bVar, int i10, boolean z10) {
        return a3(bVar).b1(He.a.k(), i10, z10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> O0(Iterable<? extends hn.b<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Z2(iterable).a1(He.a.k());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> O3(hn.b<? extends hn.b<? extends T>> bVar) {
        return P3(bVar, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> P0(hn.b<? extends hn.b<? extends T>> bVar) {
        return Q0(bVar, a0(), a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> P3(hn.b<? extends hn.b<? extends T>> bVar, int i10) {
        return a3(bVar).u2(He.a.k(), i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2362l<Integer> P4(int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i11);
        }
        if (i11 == 0) {
            return m2();
        }
        if (i11 == 1) {
            return x3(Integer.valueOf(i10));
        }
        if (i10 + (i11 - 1) <= 2147483647L) {
            return Ye.a.P(new U0(i10, i11));
        }
        throw new IllegalArgumentException("Integer overflow");
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> Q0(hn.b<? extends hn.b<? extends T>> bVar, int i10, int i11) {
        He.b.g(bVar, "sources is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.P(new C2763y(bVar, He.a.k(), i10, i11, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> Q3(hn.b<? extends T> bVar, hn.b<? extends T> bVar2) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return T2(bVar, bVar2).D2(He.a.k(), false, 2);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static AbstractC2362l<Long> Q4(long j10, long j11) {
        if (j11 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j11);
        }
        if (j11 == 0) {
            return m2();
        }
        if (j11 == 1) {
            return x3(Long.valueOf(j10));
        }
        long j12 = (j11 - 1) + j10;
        if (j10 <= 0 || j12 >= 0) {
            return Ye.a.P(new V0(j10, j11));
        }
        throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> R0(Iterable<? extends hn.b<? extends T>> iterable) {
        return S0(iterable, a0(), a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> R3(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, hn.b<? extends T> bVar3) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        return T2(bVar, bVar2, bVar3).D2(He.a.k(), false, 3);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> S0(Iterable<? extends hn.b<? extends T>> iterable, int i10, int i11) {
        He.b.g(iterable, "sources is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.P(new C2760x(new C2723k0(iterable), He.a.k(), i10, i11, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> S3(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, hn.b<? extends T> bVar3, hn.b<? extends T> bVar4) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        return T2(bVar, bVar2, bVar3, bVar4).D2(He.a.k(), false, 4);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> T2(T... tArr) {
        He.b.g(tArr, "items is null");
        return tArr.length == 0 ? m2() : tArr.length == 1 ? x3(tArr[0]) : Ye.a.P(new C2714h0(tArr));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> T3(Iterable<? extends hn.b<? extends T>> iterable) {
        return Z2(iterable).t2(He.a.k());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.NONE)
    @Ce.d
    public static <T> AbstractC2362l<T> T7(hn.b<T> bVar) {
        He.b.g(bVar, "onSubscribe is null");
        if (bVar instanceof AbstractC2362l) {
            throw new IllegalArgumentException("unsafeCreate(Flowable) should be upgraded");
        }
        return Ye.a.P(new C2729m0(bVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> U2(Callable<? extends T> callable) {
        He.b.g(callable, "supplier is null");
        return Ye.a.P(new CallableC2717i0(callable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> U3(Iterable<? extends hn.b<? extends T>> iterable, int i10) {
        return Z2(iterable).u2(He.a.k(), i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> V2(Future<? extends T> future) {
        He.b.g(future, "future is null");
        return Ye.a.P(new C2720j0(future, 0L, null));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> V3(Iterable<? extends hn.b<? extends T>> iterable, int i10, int i11) {
        return Z2(iterable).E2(He.a.k(), false, i10, i11);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public static <T, D> AbstractC2362l<T> V7(Callable<? extends D> callable, Fe.o<? super D, ? extends hn.b<? extends T>> oVar, Fe.g<? super D> gVar) {
        return W7(callable, oVar, gVar, true);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> W2(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        He.b.g(future, "future is null");
        He.b.g(timeUnit, "unit is null");
        return Ye.a.P(new C2720j0(future, j10, timeUnit));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> W3(int i10, int i11, hn.b<? extends T>... bVarArr) {
        return T2(bVarArr).E2(He.a.k(), false, i10, i11);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T, D> AbstractC2362l<T> W7(Callable<? extends D> callable, Fe.o<? super D, ? extends hn.b<? extends T>> oVar, Fe.g<? super D> gVar, boolean z10) {
        He.b.g(callable, "resourceSupplier is null");
        He.b.g(oVar, "sourceSupplier is null");
        He.b.g(gVar, "resourceDisposer is null");
        return Ye.a.P(new S1(callable, oVar, gVar, z10));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> X2(Future<? extends T> future, long j10, TimeUnit timeUnit, J j11) {
        He.b.g(j11, "scheduler is null");
        return W2(future, j10, timeUnit).n6(j11);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> X3(hn.b<? extends T>... bVarArr) {
        return T2(bVarArr).u2(He.a.k(), bVarArr.length);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> Y2(Future<? extends T> future, J j10) {
        He.b.g(j10, "scheduler is null");
        return V2(future).n6(j10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> Y3(int i10, int i11, hn.b<? extends T>... bVarArr) {
        return T2(bVarArr).E2(He.a.k(), true, i10, i11);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> Z2(Iterable<? extends T> iterable) {
        He.b.g(iterable, "source is null");
        return Ye.a.P(new C2723k0(iterable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> Z3(hn.b<? extends T>... bVarArr) {
        return T2(bVarArr).D2(He.a.k(), true, bVarArr.length);
    }

    public static int a0() {
        return f1717b;
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T> AbstractC2362l<T> a3(hn.b<? extends T> bVar) {
        if (bVar instanceof AbstractC2362l) {
            return Ye.a.P((AbstractC2362l) bVar);
        }
        He.b.g(bVar, "source is null");
        return Ye.a.P(new C2729m0(bVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> a4(hn.b<? extends hn.b<? extends T>> bVar) {
        return b4(bVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> b3(Fe.g<InterfaceC2361k<T>> gVar) {
        He.b.g(gVar, "generator is null");
        return f3(He.a.u(), C2749t0.j(gVar), He.a.h());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> b4(hn.b<? extends hn.b<? extends T>> bVar, int i10) {
        return a3(bVar).D2(He.a.k(), true, i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, S> AbstractC2362l<T> c3(Callable<S> callable, Fe.b<S, InterfaceC2361k<T>> bVar) {
        He.b.g(bVar, "generator is null");
        return f3(callable, C2749t0.i(bVar), He.a.h());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> c4(hn.b<? extends T> bVar, hn.b<? extends T> bVar2) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return T2(bVar, bVar2).D2(He.a.k(), true, 2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, S> AbstractC2362l<T> d3(Callable<S> callable, Fe.b<S, InterfaceC2361k<T>> bVar, Fe.g<? super S> gVar) {
        He.b.g(bVar, "generator is null");
        return f3(callable, C2749t0.i(bVar), gVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> d4(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, hn.b<? extends T> bVar3) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        return T2(bVar, bVar2, bVar3).D2(He.a.k(), true, 3);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T> AbstractC2362l<T> e(Iterable<? extends hn.b<? extends T>> iterable) {
        He.b.g(iterable, "sources is null");
        return Ye.a.P(new C2713h(null, iterable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, S> AbstractC2362l<T> e3(Callable<S> callable, Fe.c<S, InterfaceC2361k<T>, S> cVar) {
        return f3(callable, cVar, He.a.h());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> e4(hn.b<? extends T> bVar, hn.b<? extends T> bVar2, hn.b<? extends T> bVar3, hn.b<? extends T> bVar4) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        return T2(bVar, bVar2, bVar3, bVar4).D2(He.a.k(), true, 4);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T> AbstractC2362l<T> f(hn.b<? extends T>... bVarArr) {
        He.b.g(bVarArr, "sources is null");
        int length = bVarArr.length;
        return length == 0 ? m2() : length == 1 ? a3(bVarArr[0]) : Ye.a.P(new C2713h(bVarArr, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, S> AbstractC2362l<T> f3(Callable<S> callable, Fe.c<S, InterfaceC2361k<T>, S> cVar, Fe.g<? super S> gVar) {
        He.b.g(callable, "initialState is null");
        He.b.g(cVar, "generator is null");
        He.b.g(gVar, "disposeState is null");
        return Ye.a.P(new C2732n0(callable, cVar, gVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> f4(Iterable<? extends hn.b<? extends T>> iterable) {
        return Z2(iterable).C2(He.a.k(), true);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> g0(Fe.o<? super Object[], ? extends R> oVar, hn.b<? extends T>... bVarArr) {
        return s0(bVarArr, oVar, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> g4(Iterable<? extends hn.b<? extends T>> iterable, int i10) {
        return Z2(iterable).D2(He.a.k(), true, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T1, T2, R> AbstractC2362l<R> h0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, Fe.c<? super T1, ? super T2, ? extends R> cVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return g0(He.a.x(cVar), bVar, bVar2);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> h4(Iterable<? extends hn.b<? extends T>> iterable, int i10, int i11) {
        return Z2(iterable).E2(He.a.k(), true, i10, i11);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, R> AbstractC2362l<R> i0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, Fe.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        return g0(He.a.y(hVar), bVar, bVar2, bVar3);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, R> AbstractC2362l<R> j0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, Fe.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        return g0(He.a.z(iVar), bVar, bVar2, bVar3, bVar4);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, R> AbstractC2362l<R> k0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, Fe.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        return g0(He.a.A(jVar), bVar, bVar2, bVar3, bVar4, bVar5);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, R> AbstractC2362l<R> l0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, Fe.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        return g0(He.a.B(kVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, T7, R> AbstractC2362l<R> m0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, hn.b<? extends T7> bVar7, Fe.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        He.b.g(bVar7, "source7 is null");
        return g0(He.a.C(lVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> m2() {
        return Ye.a.P(X.f12415c);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public static <T> AbstractC2362l<T> m4() {
        return Ye.a.P(J0.f11963c);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> AbstractC2362l<R> n0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, hn.b<? extends T7> bVar7, hn.b<? extends T8> bVar8, Fe.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        He.b.g(bVar7, "source7 is null");
        He.b.g(bVar8, "source8 is null");
        return g0(He.a.D(mVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T> AbstractC2362l<T> n2(Throwable th2) {
        He.b.g(th2, "throwable is null");
        return o2(He.a.m(th2));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> AbstractC2362l<R> o0(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, hn.b<? extends T3> bVar3, hn.b<? extends T4> bVar4, hn.b<? extends T5> bVar5, hn.b<? extends T6> bVar6, hn.b<? extends T7> bVar7, hn.b<? extends T8> bVar8, hn.b<? extends T9> bVar9, Fe.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        He.b.g(bVar5, "source5 is null");
        He.b.g(bVar6, "source6 is null");
        He.b.g(bVar7, "source7 is null");
        He.b.g(bVar8, "source8 is null");
        He.b.g(bVar9, "source9 is null");
        return g0(He.a.E(nVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public static <T> AbstractC2362l<T> o2(Callable<? extends Throwable> callable) {
        He.b.g(callable, "supplier is null");
        return Ye.a.P(new Y(callable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> p0(Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        return q0(iterable, oVar, a0());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static AbstractC2362l<Long> p3(long j10, long j11, TimeUnit timeUnit) {
        return q3(j10, j11, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> q0(Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(iterable, "sources is null");
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new C2751u((Iterable) iterable, (Fe.o) oVar, i10, false));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public static AbstractC2362l<Long> q3(long j10, long j11, TimeUnit timeUnit, J j12) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j12, "scheduler is null");
        return Ye.a.P(new C2752u0(Math.max(0L, j10), Math.max(0L, j11), timeUnit, j12));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> r0(hn.b<? extends T>[] bVarArr, Fe.o<? super Object[], ? extends R> oVar) {
        return s0(bVarArr, oVar, a0());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static AbstractC2362l<Long> r3(long j10, TimeUnit timeUnit) {
        return q3(j10, j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> s0(hn.b<? extends T>[] bVarArr, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(bVarArr, "sources is null");
        if (bVarArr.length == 0) {
            return m2();
        }
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new C2751u((hn.b[]) bVarArr, (Fe.o) oVar, i10, false));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public static AbstractC2362l<Long> s3(long j10, TimeUnit timeUnit, J j11) {
        return q3(j10, j10, timeUnit, j11);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> t0(Fe.o<? super Object[], ? extends R> oVar, int i10, hn.b<? extends T>... bVarArr) {
        return y0(bVarArr, oVar, i10);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static AbstractC2362l<Long> t3(long j10, long j11, long j12, long j13, TimeUnit timeUnit) {
        return u3(j10, j11, j12, j13, timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> u0(Fe.o<? super Object[], ? extends R> oVar, hn.b<? extends T>... bVarArr) {
        return y0(bVarArr, oVar, a0());
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public static AbstractC2362l<Long> u3(long j10, long j11, long j12, long j13, TimeUnit timeUnit, J j14) {
        if (j11 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j11);
        }
        if (j11 == 0) {
            return m2().F1(j12, timeUnit, j14);
        }
        long j15 = j10 + (j11 - 1);
        if (j10 > 0 && j15 < 0) {
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
        He.b.g(timeUnit, "unit is null");
        He.b.g(j14, "scheduler is null");
        return Ye.a.P(new C2755v0(j10, j15, Math.max(0L, j12), Math.max(0L, j13), timeUnit, j14));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> v0(Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        return w0(iterable, oVar, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> w0(Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(iterable, "sources is null");
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new C2751u((Iterable) iterable, (Fe.o) oVar, i10, true));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public static AbstractC2362l<Long> w7(long j10, TimeUnit timeUnit) {
        return x7(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> w8(hn.b<? extends hn.b<? extends T>> bVar, Fe.o<? super Object[], ? extends R> oVar) {
        He.b.g(oVar, "zipper is null");
        return a3(bVar).E7().g0(C2749t0.n(oVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public static <T, R> AbstractC2362l<R> x0(hn.b<? extends T>[] bVarArr, Fe.o<? super Object[], ? extends R> oVar) {
        return y0(bVarArr, oVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> x3(T t10) {
        He.b.g(t10, "item is null");
        return Ye.a.P(new C2761x0(t10));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public static AbstractC2362l<Long> x7(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new O1(Math.max(0L, j10), timeUnit, j11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, R> AbstractC2362l<R> x8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, Fe.c<? super T1, ? super T2, ? extends R> cVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return I8(He.a.x(cVar), false, a0(), bVar, bVar2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T, R> AbstractC2362l<R> y0(hn.b<? extends T>[] bVarArr, Fe.o<? super Object[], ? extends R> oVar, int i10) {
        He.b.g(bVarArr, "sources is null");
        He.b.g(oVar, "combiner is null");
        He.b.h(i10, "bufferSize");
        return bVarArr.length == 0 ? m2() : Ye.a.P(new C2751u((hn.b[]) bVarArr, (Fe.o) oVar, i10, true));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    public static <T> AbstractC2362l<T> y1(InterfaceC2365o<T> interfaceC2365o, EnumC2352b enumC2352b) {
        He.b.g(interfaceC2365o, "source is null");
        He.b.g(enumC2352b, "mode is null");
        return Ye.a.P(new Le.F(interfaceC2365o, enumC2352b));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> y3(T t10, T t11) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        return T2(t10, t11);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, R> AbstractC2362l<R> y8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, Fe.c<? super T1, ? super T2, ? extends R> cVar, boolean z10) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return I8(He.a.x(cVar), z10, a0(), bVar, bVar2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T> AbstractC2362l<T> z3(T t10, T t11, T t12) {
        He.b.g(t10, "item1 is null");
        He.b.g(t11, "item2 is null");
        He.b.g(t12, "item3 is null");
        return T2(t10, t11, t12);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public static <T1, T2, R> AbstractC2362l<R> z8(hn.b<? extends T1> bVar, hn.b<? extends T2> bVar2, Fe.c<? super T1, ? super T2, ? extends R> cVar, boolean z10, int i10) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return I8(He.a.x(cVar), z10, i10, bVar, bVar2);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.h("none")
    public final void A(Fe.g<? super T> gVar) {
        C2725l.b(this, gVar, He.a.f8380f, He.a.f8377c);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<T> A1(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new Le.H(this, j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> A2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, Fe.o<? super Throwable, ? extends hn.b<? extends R>> oVar2, Callable<? extends hn.b<? extends R>> callable) {
        He.b.g(oVar, "onNextMapper is null");
        He.b.g(oVar2, "onErrorMapper is null");
        He.b.g(callable, "onCompleteSupplier is null");
        return O3(new D0(this, oVar, oVar2, callable));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final AbstractC2362l<T> A4(Fe.g<? super T> gVar) {
        He.b.g(gVar, "onDrop is null");
        return Ye.a.P(new N0(this, gVar));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> A5(long j10, TimeUnit timeUnit, boolean z10) {
        return z5(j10, timeUnit, C3604b.a(), z10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> AbstractC2362l<R> A6(@Ce.f Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Ne.h(this, oVar, false));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> A7(TimeUnit timeUnit) {
        return B7(timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.h("none")
    public final void B(Fe.g<? super T> gVar, int i10) {
        C2725l.c(this, gVar, He.a.f8380f, He.a.f8377c, i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <U> AbstractC2362l<T> B1(Fe.o<? super T, ? extends hn.b<U>> oVar) {
        He.b.g(oVar, "debounceIndicator is null");
        return Ye.a.P(new Le.G(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> B2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, Fe.o<Throwable, ? extends hn.b<? extends R>> oVar2, Callable<? extends hn.b<? extends R>> callable, int i10) {
        He.b.g(oVar, "onNextMapper is null");
        He.b.g(oVar2, "onErrorMapper is null");
        He.b.g(callable, "onCompleteSupplier is null");
        return P3(new D0(this, oVar, oVar2, callable), i10);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> B4() {
        return Ye.a.P(new P0(this));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <U> AbstractC2362l<T> B5(hn.b<U> bVar) {
        He.b.g(bVar, "sampler is null");
        return Ye.a.P(new C2718i1(this, bVar, false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> AbstractC2362l<R> B6(@Ce.f Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Ne.h(this, oVar, true));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<C3606d<T>> B7(TimeUnit timeUnit, J j10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j10, "scheduler is null");
        return (AbstractC2362l<C3606d<T>>) M3(He.a.w(timeUnit, j10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.h("none")
    public final void C(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        C2725l.b(this, gVar, gVar2, He.a.f8377c);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> C1(T t10) {
        He.b.g(t10, "defaultItem is null");
        return q6(x3(t10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> C2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10) {
        return E2(oVar, z10, a0(), a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> C4(Fe.o<? super Throwable, ? extends hn.b<? extends T>> oVar) {
        He.b.g(oVar, "resumeFunction is null");
        return Ye.a.P(new Q0(this, oVar, false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <U> AbstractC2362l<T> C5(hn.b<U> bVar, boolean z10) {
        He.b.g(bVar, "sampler is null");
        return Ye.a.P(new C2718i1(this, bVar, z10));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final <R> R C7(Fe.o<? super AbstractC2362l<T>, R> oVar) {
        try {
            return (R) ((Fe.o) He.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Ce.b(Ce.a.FULL)
    @Ce.h("none")
    public final void D(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, int i10) {
        C2725l.c(this, gVar, gVar2, He.a.f8377c, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> D2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10, int i10) {
        return E2(oVar, z10, i10, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> D4(hn.b<? extends T> bVar) {
        He.b.g(bVar, "next is null");
        return C4(He.a.n(bVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> D5(Fe.c<T, T, T> cVar) {
        He.b.g(cVar, "accumulator is null");
        return Ye.a.P(new C2727l1(this, cVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final Future<T> D7() {
        return (Future) p6(new Te.j());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.h("none")
    public final void E(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        C2725l.b(this, gVar, gVar2, aVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> E1(long j10, TimeUnit timeUnit) {
        return G1(j10, timeUnit, C3604b.a(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> E2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "bufferSize");
        if (!(this instanceof Ie.m)) {
            return Ye.a.P(new C2693a0(this, oVar, z10, i10, i11));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? m2() : C2724k1.a(call, oVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> E4(Fe.o<? super Throwable, ? extends T> oVar) {
        He.b.g(oVar, "valueSupplier is null");
        return Ye.a.P(new R0(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> E5(R r10, Fe.c<R, ? super T, R> cVar) {
        He.b.g(r10, "initialValue is null");
        return F5(He.a.m(r10), cVar);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<List<T>> E7() {
        return Ye.a.S(new Q1(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.h("none")
    public final void F(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, int i10) {
        C2725l.c(this, gVar, gVar2, aVar, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> F1(long j10, TimeUnit timeUnit, J j11) {
        return G1(j10, timeUnit, j11, false);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c F2(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        return G2(oVar, false, Integer.MAX_VALUE);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> F4(T t10) {
        He.b.g(t10, "item is null");
        return E4(He.a.n(t10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> F5(Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        He.b.g(callable, "seedSupplier is null");
        He.b.g(cVar, "accumulator is null");
        return Ye.a.P(new C2730m1(this, callable, cVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<List<T>> F7(int i10) {
        He.b.h(i10, "capacityHint");
        return Ye.a.S(new Q1(this, He.a.f(i10)));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.h("none")
    public final void G(hn.c<? super T> cVar) {
        C2725l.d(this, cVar);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> G1(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new Le.J(this, Math.max(0L, j10), timeUnit, j11, z10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final AbstractC2353c G2(Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.O(new C2699c0(this, oVar, z10, i10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> G4(hn.b<? extends T> bVar) {
        He.b.g(bVar, "next is null");
        return Ye.a.P(new Q0(this, He.a.n(bVar), true));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> G6(long j10) {
        if (j10 >= 0) {
            return Ye.a.P(new B1(this, j10));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j10);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final <U extends Collection<? super T>> K<U> G7(Callable<U> callable) {
        He.b.g(callable, "collectionSupplier is null");
        return Ye.a.S(new Q1(this, callable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<List<T>> H(int i10) {
        return I(i10, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> H1(long j10, TimeUnit timeUnit, boolean z10) {
        return G1(j10, timeUnit, C3604b.a(), z10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2362l<U> H2(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return I2(oVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<T> H3(T t10) {
        He.b.g(t10, "defaultItem");
        return Ye.a.S(new C2767z0(this, t10));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> H4() {
        return Ye.a.P(new Le.M(this));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> H6(long j10, TimeUnit timeUnit) {
        return T6(w7(j10, timeUnit));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <K> K<Map<K, T>> H7(Fe.o<? super T, ? extends K> oVar) {
        He.b.g(oVar, "keySelector is null");
        return (K<Map<K, T>>) e0(io.reactivex.internal.util.l.a(), He.a.F(oVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<List<T>> I(int i10, int i11) {
        return (AbstractC2362l<List<T>>) J(i10, i11, io.reactivex.internal.util.b.b());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<T> I1(Fe.o<? super T, ? extends hn.b<U>> oVar) {
        He.b.g(oVar, "itemDelayIndicator is null");
        return (AbstractC2362l<T>) t2(C2749t0.c(oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<U> I2(Fe.o<? super T, ? extends Iterable<? extends U>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new C2711g0(this, oVar, i10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> I3() {
        return Ye.a.Q(new C2764y0(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Xe.b<T> I4() {
        return Xe.b.y(this);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> I6(long j10, TimeUnit timeUnit, J j11) {
        return T6(x7(j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <K, V> K<Map<K, V>> I7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        return (K<Map<K, V>>) e0(io.reactivex.internal.util.l.a(), He.a.G(oVar, oVar2));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U extends Collection<? super T>> AbstractC2362l<U> J(int i10, int i11, Callable<U> callable) {
        He.b.h(i10, oc.c.f98682m);
        He.b.h(i11, com.google.android.material.timepicker.d.f65283e);
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.P(new C2728m(this, i10, i11, callable));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, V> AbstractC2362l<T> J1(hn.b<U> bVar, Fe.o<? super T, ? extends hn.b<V>> oVar) {
        return M1(bVar).I1(oVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U, V> AbstractC2362l<V> J2(Fe.o<? super T, ? extends Iterable<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends V> cVar) {
        He.b.g(oVar, "mapper is null");
        He.b.g(cVar, "resultSelector is null");
        return (AbstractC2362l<V>) z2(C2749t0.a(oVar), cVar, false, a0(), a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<T> J3() {
        return Ye.a.S(new C2767z0(this, null));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Xe.b<T> J4(int i10) {
        He.b.h(i10, "parallelism");
        return Xe.b.z(this, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> J6(int i10) {
        if (i10 >= 0) {
            return i10 == 0 ? Ye.a.P(new C2743r0(this)) : i10 == 1 ? Ye.a.P(new D1(this)) : Ye.a.P(new C1(this, i10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <K, V> K<Map<K, V>> J7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        return (K<Map<K, V>>) e0(callable, He.a.G(oVar, oVar2));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U extends Collection<? super T>> AbstractC2362l<U> K(int i10, Callable<U> callable) {
        return J(i10, i10, callable);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> K1(long j10, TimeUnit timeUnit) {
        return L1(j10, timeUnit, C3604b.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U, V> AbstractC2362l<V> K2(Fe.o<? super T, ? extends Iterable<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends V> cVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.g(cVar, "resultSelector is null");
        return (AbstractC2362l<V>) z2(C2749t0.a(oVar), cVar, false, a0(), i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    public final <R> AbstractC2362l<R> K3(InterfaceC2366p<? extends R, ? super T> interfaceC2366p) {
        He.b.g(interfaceC2366p, "lifter is null");
        return Ye.a.P(new A0(this, interfaceC2366p));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Xe.b<T> K4(int i10, int i11) {
        He.b.h(i10, "parallelism");
        He.b.h(i11, "prefetch");
        return Xe.b.A(this, i10, i11);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> K5() {
        return Ye.a.P(new C2739p1(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> K6(long j10, long j11, TimeUnit timeUnit) {
        return M6(j10, j11, timeUnit, C3604b.a(), false, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final <K> K<Map<K, Collection<T>>> K7(Fe.o<? super T, ? extends K> oVar) {
        return (K<Map<K, Collection<T>>>) N7(oVar, He.a.k(), io.reactivex.internal.util.l.a(), io.reactivex.internal.util.b.c());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U, R> AbstractC2362l<R> K8(hn.b<? extends U> bVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(bVar, "other is null");
        return x8(this, bVar, cVar);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<List<T>> L(long j10, long j11, TimeUnit timeUnit) {
        return (AbstractC2362l<List<T>>) N(j10, j11, timeUnit, C3604b.a(), io.reactivex.internal.util.b.b());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> L1(long j10, TimeUnit timeUnit, J j11) {
        return M1(x7(j10, timeUnit, j11));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> L2(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        return M2(oVar, false, Integer.MAX_VALUE);
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> L3(long j10) {
        if (j10 >= 0) {
            return Ye.a.P(new B0(this, j10));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> L4(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar) {
        return M4(oVar, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> L5() {
        return N4().T8();
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> L6(long j10, long j11, TimeUnit timeUnit, J j12) {
        return M6(j10, j11, timeUnit, j12, false, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, Collection<V>>> L7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        return N7(oVar, oVar2, io.reactivex.internal.util.l.a(), io.reactivex.internal.util.b.c());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2362l<R> L8(hn.b<? extends U> bVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10) {
        return y8(this, bVar, cVar, z10);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<List<T>> M(long j10, long j11, TimeUnit timeUnit, J j12) {
        return (AbstractC2362l<List<T>>) N(j10, j11, timeUnit, j12, io.reactivex.internal.util.b.b());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<T> M1(hn.b<U> bVar) {
        He.b.g(bVar, "subscriptionIndicator is null");
        return Ye.a.P(new Le.K(this, bVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> AbstractC2362l<R> M2(Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.P(new C2702d0(this, oVar, z10, i10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <R> AbstractC2362l<R> M3(Fe.o<? super T, ? extends R> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new C0(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> M4(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<? extends R>> oVar, int i10) {
        He.b.g(oVar, "selector is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new T0(this, oVar, i10, false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<T> M5(T t10) {
        He.b.g(t10, "defaultItem is null");
        return Ye.a.S(new C2747s1(this, t10));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> M6(long j10, long j11, TimeUnit timeUnit, J j12, boolean z10, int i10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j12, "scheduler is null");
        He.b.h(i10, "bufferSize");
        if (j10 >= 0) {
            return Ye.a.P(new E1(this, j10, j11, timeUnit, j12, i10, z10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j10);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final <K, V> K<Map<K, Collection<V>>> M7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return N7(oVar, oVar2, callable, io.reactivex.internal.util.b.c());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2362l<R> M8(hn.b<? extends U> bVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i10) {
        return z8(this, bVar, cVar, z10, i10);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <U extends Collection<? super T>> AbstractC2362l<U> N(long j10, long j11, TimeUnit timeUnit, J j12, Callable<U> callable) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j12, "scheduler is null");
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.P(new C2740q(this, j10, j11, timeUnit, j12, callable, Integer.MAX_VALUE, false));
    }

    @Ce.h("none")
    @Deprecated
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <T2> AbstractC2362l<T2> N1() {
        return Ye.a.P(new Le.L(this, He.a.k()));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> N2(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        return O2(oVar, false, Integer.MAX_VALUE);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<A<T>> N3() {
        return Ye.a.P(new F0(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Ee.a<T> N4() {
        return O4(a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> N5() {
        return Ye.a.Q(new C2744r1(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> N6(long j10, TimeUnit timeUnit) {
        return Q6(j10, timeUnit, C3604b.a(), false, a0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <K, V> K<Map<K, Collection<V>>> N7(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, Fe.o<? super K, ? extends Collection<? super V>> oVar3) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        He.b.g(callable, "mapSupplier is null");
        He.b.g(oVar3, "collectionFactory is null");
        return (K<Map<K, Collection<V>>>) e0(callable, He.a.H(oVar, oVar2, oVar3));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U, R> AbstractC2362l<R> N8(Iterable<U> iterable, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(iterable, "other is null");
        He.b.g(cVar, "zipper is null");
        return Ye.a.P(new b2(this, iterable, cVar));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<List<T>> O(long j10, TimeUnit timeUnit) {
        return R(j10, timeUnit, C3604b.a(), Integer.MAX_VALUE);
    }

    @Ce.e
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <R> AbstractC2362l<R> O1(Fe.o<? super T, A<R>> oVar) {
        He.b.g(oVar, "selector is null");
        return Ye.a.P(new Le.L(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> AbstractC2362l<R> O2(Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        return Ye.a.P(new C2708f0(this, oVar, z10, i10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Ee.a<T> O4(int i10) {
        He.b.h(i10, "bufferSize");
        return S0.Z8(this, i10);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<T> O5() {
        return Ye.a.S(new C2747s1(this, null));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> O6(long j10, TimeUnit timeUnit, J j11) {
        return Q6(j10, timeUnit, j11, false, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final B<T> O7() {
        return Ye.a.R(new C2881h0(this));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<List<T>> P(long j10, TimeUnit timeUnit, int i10) {
        return R(j10, timeUnit, C3604b.a(), i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> P1() {
        return R1(He.a.k(), He.a.g());
    }

    @Ce.b(Ce.a.NONE)
    @Ce.d
    @Ce.h("none")
    public final De.c P2(Fe.g<? super T> gVar) {
        return h6(gVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> P5(long j10) {
        return j10 <= 0 ? Ye.a.P(this) : Ye.a.P(new C2750t1(this, j10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> P6(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        return Q6(j10, timeUnit, j11, z10, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<List<T>> P7() {
        return R7(He.a.p());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<List<T>> Q(long j10, TimeUnit timeUnit, J j11) {
        return (AbstractC2362l<List<T>>) S(j10, timeUnit, j11, Integer.MAX_VALUE, io.reactivex.internal.util.b.b(), false);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K> AbstractC2362l<T> Q1(Fe.o<? super T, K> oVar) {
        return R1(oVar, He.a.g());
    }

    @Ce.b(Ce.a.NONE)
    @Ce.d
    @Ce.h("none")
    public final De.c Q2(Fe.r<? super T> rVar) {
        return S2(rVar, He.a.f8380f, He.a.f8377c);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> Q5(long j10, TimeUnit timeUnit) {
        return Y5(w7(j10, timeUnit));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> Q6(long j10, TimeUnit timeUnit, J j11, boolean z10, int i10) {
        return M6(Long.MAX_VALUE, j10, timeUnit, j11, z10, i10);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<List<T>> Q7(int i10) {
        return S7(He.a.p(), i10);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<List<T>> R(long j10, TimeUnit timeUnit, J j11, int i10) {
        return (AbstractC2362l<List<T>>) S(j10, timeUnit, j11, i10, io.reactivex.internal.util.b.b(), false);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K> AbstractC2362l<T> R1(Fe.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(callable, "collectionSupplier is null");
        return Ye.a.P(new Le.N(this, oVar, callable));
    }

    @Ce.b(Ce.a.NONE)
    @Ce.d
    @Ce.h("none")
    public final De.c R2(Fe.r<? super T> rVar, Fe.g<? super Throwable> gVar) {
        return S2(rVar, gVar, He.a.f8377c);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> R4(int i10) {
        return p4(Se.e.f23101c, true, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> R5(long j10, TimeUnit timeUnit, J j11) {
        return Y5(x7(j10, timeUnit, j11));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> R6(long j10, TimeUnit timeUnit, boolean z10) {
        return Q6(j10, timeUnit, C3604b.a(), z10, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<List<T>> R7(Comparator<? super T> comparator) {
        He.b.g(comparator, "comparator is null");
        return (K<List<T>>) E7().u0(He.a.o(comparator));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final <U extends Collection<? super T>> AbstractC2362l<U> S(long j10, TimeUnit timeUnit, J j11, int i10, Callable<U> callable, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        He.b.g(callable, "bufferSupplier is null");
        He.b.h(i10, oc.c.f98682m);
        return Ye.a.P(new C2740q(this, j10, j10, timeUnit, j11, callable, i10, z10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> S1() {
        return U1(He.a.k());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.NONE)
    @Ce.d
    public final De.c S2(Fe.r<? super T> rVar, Fe.g<? super Throwable> gVar, Fe.a aVar) {
        He.b.g(rVar, "onNext is null");
        He.b.g(gVar, "onError is null");
        He.b.g(aVar, "onComplete is null");
        Te.i iVar = new Te.i(rVar, gVar, aVar);
        l6(iVar);
        return iVar;
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final AbstractC2368s<T> S4(Fe.c<T, T, T> cVar) {
        He.b.g(cVar, "reducer is null");
        return Ye.a.Q(new X0(this, cVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> S5(int i10) {
        if (i10 >= 0) {
            return i10 == 0 ? Ye.a.P(this) : Ye.a.P(new C2753u1(this, i10));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> S6(Fe.r<? super T> rVar) {
        He.b.g(rVar, "stopPredicate is null");
        return Ye.a.P(new H1(this, rVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<List<T>> S7(Comparator<? super T> comparator, int i10) {
        He.b.g(comparator, "comparator is null");
        return (K<List<T>>) F7(i10).u0(He.a.o(comparator));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <TOpening, TClosing> AbstractC2362l<List<T>> T(AbstractC2362l<? extends TOpening> abstractC2362l, Fe.o<? super TOpening, ? extends hn.b<? extends TClosing>> oVar) {
        return (AbstractC2362l<List<T>>) U(abstractC2362l, oVar, io.reactivex.internal.util.b.b());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> T0(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        return U0(oVar, 2);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> T1(Fe.d<? super T, ? super T> dVar) {
        He.b.g(dVar, "comparer is null");
        return Ye.a.P(new Le.O(this, He.a.k(), dVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> K<R> T4(R r10, Fe.c<R, ? super T, R> cVar) {
        He.b.g(r10, "seed is null");
        He.b.g(cVar, "reducer is null");
        return Ye.a.S(new Y0(this, r10, cVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> T5(long j10, TimeUnit timeUnit) {
        return W5(j10, timeUnit, C3604b.a(), false, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <U> AbstractC2362l<T> T6(hn.b<U> bVar) {
        He.b.g(bVar, "other is null");
        return Ye.a.P(new G1(this, bVar));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <TOpening, TClosing, U extends Collection<? super T>> AbstractC2362l<U> U(AbstractC2362l<? extends TOpening> abstractC2362l, Fe.o<? super TOpening, ? extends hn.b<? extends TClosing>> oVar, Callable<U> callable) {
        He.b.g(abstractC2362l, "openingIndicator is null");
        He.b.g(oVar, "closingIndicator is null");
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.P(new C2731n(this, abstractC2362l, oVar, callable));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> U0(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        if (!(this instanceof Ie.m)) {
            return Ye.a.P(new C2757w(this, oVar, i10, io.reactivex.internal.util.j.IMMEDIATE));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? m2() : C2724k1.a(call, oVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K> AbstractC2362l<T> U1(Fe.o<? super T, K> oVar) {
        He.b.g(oVar, "keySelector is null");
        return Ye.a.P(new Le.O(this, oVar, He.b.d()));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> K<R> U4(Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        He.b.g(callable, "seedSupplier is null");
        He.b.g(cVar, "reducer is null");
        return Ye.a.S(new Z0(this, callable, cVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> U5(long j10, TimeUnit timeUnit, J j11) {
        return W5(j10, timeUnit, j11, false, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> U6(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.P(new I1(this, rVar));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> U7(J j10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.P(new R1(this, j10));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B> AbstractC2362l<List<T>> V(hn.b<B> bVar) {
        return (AbstractC2362l<List<T>>) X(bVar, io.reactivex.internal.util.b.b());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c V0(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        return W0(oVar, 2);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> V1(Fe.g<? super T> gVar) {
        He.b.g(gVar, "onAfterNext is null");
        return Ye.a.P(new Le.P(this, gVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> V4() {
        return W4(Long.MAX_VALUE);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> V5(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        return W5(j10, timeUnit, j11, z10, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final cf.f<T> V6() {
        cf.f<T> fVar = new cf.f<>();
        l6(fVar);
        return fVar;
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B> AbstractC2362l<List<T>> W(hn.b<B> bVar, int i10) {
        He.b.h(i10, "initialCapacity");
        return (AbstractC2362l<List<T>>) X(bVar, He.a.f(i10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2353c W0(Fe.o<? super T, ? extends InterfaceC2359i> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.O(new Ne.c(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> W1(Fe.a aVar) {
        return b2(He.a.h(), He.a.h(), He.a.f8377c, aVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> W4(long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? m2() : Ye.a.P(new C2697b1(this, j10));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j10);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final AbstractC2362l<T> W5(long j10, TimeUnit timeUnit, J j11, boolean z10, int i10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new C2756v1(this, j10, timeUnit, j11, i10 << 1, z10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final cf.f<T> W6(long j10) {
        cf.f<T> fVar = new cf.f<>(j10);
        l6(fVar);
        return fVar;
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B, U extends Collection<? super T>> AbstractC2362l<U> X(hn.b<B> bVar, Callable<U> callable) {
        He.b.g(bVar, "boundaryIndicator is null");
        He.b.g(callable, "bufferSupplier is null");
        return Ye.a.P(new C2737p(this, bVar, callable));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c X0(Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        return Z0(oVar, true, 2);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> X1(Fe.a aVar) {
        He.b.g(aVar, "onFinally is null");
        return Ye.a.P(new Le.Q(this, aVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> X4(Fe.e eVar) {
        He.b.g(eVar, "stop is null");
        return Ye.a.P(new C2700c1(this, eVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> X5(long j10, TimeUnit timeUnit, boolean z10) {
        return W5(j10, timeUnit, C3604b.a(), z10, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final cf.f<T> X6(long j10, boolean z10) {
        cf.f<T> fVar = new cf.f<>(j10);
        if (z10) {
            fVar.cancel();
        }
        l6(fVar);
        return fVar;
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<AbstractC2362l<T>> X7(long j10) {
        return Z7(j10, j10, a0());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B> AbstractC2362l<List<T>> Y(Callable<? extends hn.b<B>> callable) {
        return (AbstractC2362l<List<T>>) Z(callable, io.reactivex.internal.util.b.b());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c Y0(Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        return Z0(oVar, z10, 2);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> Y1(Fe.a aVar) {
        return e2(He.a.h(), He.a.f8381g, aVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> Y4(Fe.o<? super AbstractC2362l<Object>, ? extends hn.b<?>> oVar) {
        He.b.g(oVar, "handler is null");
        return Ye.a.P(new C2703d1(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<T> Y5(hn.b<U> bVar) {
        He.b.g(bVar, "other is null");
        return Ye.a.P(new C2759w1(this, bVar));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> Y6(long j10, TimeUnit timeUnit) {
        return Z6(j10, timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<AbstractC2362l<T>> Y7(long j10, long j11) {
        return Z7(j10, j11, a0());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B, U extends Collection<? super T>> AbstractC2362l<U> Z(Callable<? extends hn.b<B>> callable, Callable<U> callable2) {
        He.b.g(callable, "boundaryIndicatorSupplier is null");
        He.b.g(callable2, "bufferSupplier is null");
        return Ye.a.P(new C2734o(this, callable, callable2));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2353c Z0(Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.O(new Ne.c(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> Z1(Fe.a aVar) {
        return b2(He.a.h(), He.a.h(), aVar, He.a.f8377c);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> Z4(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar) {
        He.b.g(oVar, "selector is null");
        return C2706e1.e9(C2749t0.d(this), oVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> Z5(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.P(new C2762x1(this, rVar));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<T> Z6(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new J1(this, j10, timeUnit, j11));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<AbstractC2362l<T>> Z7(long j10, long j11, int i10) {
        He.b.i(j11, com.google.android.material.timepicker.d.f65283e);
        He.b.i(j10, oc.c.f98682m);
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new T1(this, j10, j11, i10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> a1(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        return b1(oVar, 2, true);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> a2(Fe.g<? super A<T>> gVar) {
        He.b.g(gVar, "onNotification is null");
        return b2(He.a.t(gVar), He.a.s(gVar), He.a.r(gVar), He.a.f8377c);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> a5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, int i10) {
        He.b.g(oVar, "selector is null");
        He.b.h(i10, "bufferSize");
        return C2706e1.e9(C2749t0.e(this, i10), oVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> a6() {
        return E7().u1().M3(He.a.o(He.a.p())).H2(He.a.k());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> a7(long j10, TimeUnit timeUnit) {
        return x5(j10, timeUnit);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<AbstractC2362l<T>> a8(long j10, long j11, TimeUnit timeUnit) {
        return c8(j10, j11, timeUnit, C3604b.a(), a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> b0() {
        return c0(16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> b1(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        if (!(this instanceof Ie.m)) {
            return Ye.a.P(new C2757w(this, oVar, i10, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? m2() : C2724k1.a(call, oVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> b2(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        He.b.g(aVar2, "onAfterTerminate is null");
        return Ye.a.P(new Le.S(this, gVar, gVar2, aVar, aVar2));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final <R> AbstractC2362l<R> b5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, int i10, long j10, TimeUnit timeUnit) {
        return c5(oVar, i10, j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> b6(Comparator<? super T> comparator) {
        He.b.g(comparator, "sortFunction");
        return E7().u1().M3(He.a.o(comparator)).H2(He.a.k());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> b7(long j10, TimeUnit timeUnit, J j11) {
        return y5(j10, timeUnit, j11);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<AbstractC2362l<T>> b8(long j10, long j11, TimeUnit timeUnit, J j12) {
        return c8(j10, j11, timeUnit, j12, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<Boolean> c(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.S(new C2710g(this, rVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> c0(int i10) {
        He.b.h(i10, "initialCapacity");
        return Ye.a.P(new Le.r(this, i10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> c1(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        return d1(oVar, a0(), a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> c2(hn.c<? super T> cVar) {
        He.b.g(cVar, "subscriber is null");
        return b2(C2749t0.m(cVar), C2749t0.l(cVar), C2749t0.k(cVar), He.a.f8377c);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> c5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, int i10, long j10, TimeUnit timeUnit, J j11) {
        He.b.g(oVar, "selector is null");
        He.b.g(timeUnit, "unit is null");
        He.b.h(i10, "bufferSize");
        He.b.g(j11, "scheduler is null");
        return C2706e1.e9(C2749t0.f(this, i10, j10, timeUnit, j11), oVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> c6(hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return G0(bVar, this);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> c7(long j10, TimeUnit timeUnit) {
        return e7(j10, timeUnit, C3604b.a(), false);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<AbstractC2362l<T>> c8(long j10, long j11, TimeUnit timeUnit, J j12, int i10) {
        He.b.h(i10, "bufferSize");
        He.b.i(j10, "timespan");
        He.b.i(j11, "timeskip");
        He.b.g(j12, "scheduler is null");
        He.b.g(timeUnit, "unit is null");
        return Ye.a.P(new X1(this, j10, j11, timeUnit, j12, Long.MAX_VALUE, i10, false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <U> AbstractC2362l<U> d0(Class<U> cls) {
        He.b.g(cls, "clazz is null");
        return (AbstractC2362l<U>) M3(He.a.e(cls));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> d1(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.P(new C2760x(this, oVar, i10, i11, io.reactivex.internal.util.j.IMMEDIATE));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> d2(Fe.g<? super Throwable> gVar) {
        Fe.g<? super T> h10 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return b2(h10, gVar, aVar, aVar);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> d5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, int i10, J j10) {
        He.b.g(oVar, "selector is null");
        He.b.g(j10, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return C2706e1.e9(C2749t0.e(this, i10), C2749t0.h(oVar, j10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> d6(Iterable<? extends T> iterable) {
        return G0(Z2(iterable), this);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> d7(long j10, TimeUnit timeUnit, J j11) {
        return e7(j10, timeUnit, j11, false);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<AbstractC2362l<T>> d8(long j10, TimeUnit timeUnit) {
        return i8(j10, timeUnit, C3604b.a(), Long.MAX_VALUE, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U> K<U> e0(Callable<? extends U> callable, Fe.b<? super U, ? super T> bVar) {
        He.b.g(callable, "initialItemSupplier is null");
        He.b.g(bVar, "collector is null");
        return Ye.a.S(new C2748t(this, callable, bVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> e1(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, int i11, boolean z10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "prefetch");
        return Ye.a.P(new C2760x(this, oVar, i10, i11, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> e2(Fe.g<? super hn.d> gVar, Fe.q qVar, Fe.a aVar) {
        He.b.g(gVar, "onSubscribe is null");
        He.b.g(qVar, "onRequest is null");
        He.b.g(aVar, "onCancel is null");
        return Ye.a.P(new T(this, gVar, qVar, aVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final <R> AbstractC2362l<R> e5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, long j10, TimeUnit timeUnit) {
        return f5(oVar, j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> e6(T t10) {
        He.b.g(t10, "value is null");
        return G0(x3(t10), this);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<T> e7(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new K1(this, j10, timeUnit, j11, z10));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<AbstractC2362l<T>> e8(long j10, TimeUnit timeUnit, long j11) {
        return i8(j10, timeUnit, C3604b.a(), j11, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <U> K<U> f0(U u10, Fe.b<? super U, ? super T> bVar) {
        He.b.g(u10, "initialItem is null");
        return e0(He.a.m(u10), bVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> f1(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, boolean z10) {
        return e1(oVar, a0(), a0(), z10);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> f2(Fe.g<? super T> gVar) {
        Fe.g<? super Throwable> h10 = He.a.h();
        Fe.a aVar = He.a.f8377c;
        return b2(gVar, h10, aVar, aVar);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> f5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, long j10, TimeUnit timeUnit, J j11) {
        He.b.g(oVar, "selector is null");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return C2706e1.e9(C2749t0.g(this, j10, timeUnit, j11), oVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> f6(T... tArr) {
        AbstractC2362l T22 = T2(tArr);
        return T22 == m2() ? Ye.a.P(this) : G0(T22, this);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> f7(long j10, TimeUnit timeUnit, boolean z10) {
        return e7(j10, timeUnit, C3604b.a(), z10);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<AbstractC2362l<T>> f8(long j10, TimeUnit timeUnit, long j11, boolean z10) {
        return i8(j10, timeUnit, C3604b.a(), j11, z10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> g(hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return f(this, bVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U> AbstractC2362l<U> g1(Fe.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return h1(oVar, 2);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> g2(Fe.q qVar) {
        return e2(He.a.h(), qVar, He.a.f8377c);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K> AbstractC2362l<Ee.b<K, T>> g3(Fe.o<? super T, ? extends K> oVar) {
        return (AbstractC2362l<Ee.b<K, T>>) j3(oVar, He.a.k(), false, a0());
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> g5(Fe.o<? super AbstractC2362l<T>, ? extends hn.b<R>> oVar, J j10) {
        He.b.g(oVar, "selector is null");
        He.b.g(j10, "scheduler is null");
        return C2706e1.e9(C2749t0.d(this), C2749t0.h(oVar, j10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.h("none")
    public final De.c g6() {
        return k6(He.a.h(), He.a.f8380f, He.a.f8377c, C2749t0.i.INSTANCE);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> g7(long j10, TimeUnit timeUnit) {
        return z1(j10, timeUnit);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<AbstractC2362l<T>> g8(long j10, TimeUnit timeUnit, J j11) {
        return i8(j10, timeUnit, j11, Long.MAX_VALUE, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U> AbstractC2362l<U> h1(Fe.o<? super T, ? extends Iterable<? extends U>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new C2711g0(this, oVar, i10));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> h2(Fe.g<? super hn.d> gVar) {
        return e2(gVar, He.a.f8381g, He.a.f8377c);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K, V> AbstractC2362l<Ee.b<K, V>> h3(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2) {
        return j3(oVar, oVar2, false, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Ee.a<T> h5() {
        return C2706e1.d9(this);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final De.c h6(Fe.g<? super T> gVar) {
        return k6(gVar, He.a.f8380f, He.a.f8377c, C2749t0.i.INSTANCE);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> h7(long j10, TimeUnit timeUnit, J j11) {
        return A1(j10, timeUnit, j11);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<AbstractC2362l<T>> h8(long j10, TimeUnit timeUnit, J j11, long j12) {
        return i8(j10, timeUnit, j11, j12, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<Boolean> i(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.S(new C2719j(this, rVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> i1(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        return j1(oVar, 2);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> i2(Fe.a aVar) {
        return b2(He.a.h(), He.a.a(aVar), aVar, He.a.f8377c);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K, V> AbstractC2362l<Ee.b<K, V>> i3(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, boolean z10) {
        return j3(oVar, oVar2, z10, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> i4(@Ce.f InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.P(new G0(this, interfaceC2359i));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Ee.a<T> i5(int i10) {
        He.b.h(i10, "bufferSize");
        return C2706e1.Z8(this, i10);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final De.c i6(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2) {
        return k6(gVar, gVar2, He.a.f8377c, C2749t0.i.INSTANCE);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> i7() {
        return l7(TimeUnit.MILLISECONDS, C3604b.a());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<AbstractC2362l<T>> i8(long j10, TimeUnit timeUnit, J j11, long j12, boolean z10) {
        return j8(j10, timeUnit, j11, j12, z10, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> j1(Fe.o<? super T, ? extends y<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new Ne.d(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> j2(long j10) {
        if (j10 >= 0) {
            return Ye.a.Q(new V(this, j10));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <K, V> AbstractC2362l<Ee.b<K, V>> j3(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, boolean z10, int i10) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new C2735o0(this, oVar, oVar2, i10, z10, null));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> j4(@Ce.f y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return Ye.a.P(new H0(this, yVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final Ee.a<T> j5(int i10, long j10, TimeUnit timeUnit) {
        return k5(i10, j10, timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final De.c j6(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        return k6(gVar, gVar2, aVar, C2749t0.i.INSTANCE);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> j7(J j10) {
        return l7(TimeUnit.MILLISECONDS, j10);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<AbstractC2362l<T>> j8(long j10, TimeUnit timeUnit, J j11, long j12, boolean z10, int i10) {
        He.b.h(i10, "bufferSize");
        He.b.g(j11, "scheduler is null");
        He.b.g(timeUnit, "unit is null");
        He.b.i(j12, oc.c.f98682m);
        return Ye.a.P(new X1(this, j10, j10, timeUnit, j11, j12, i10, z10));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final <R> R k(@Ce.f InterfaceC2363m<T, ? extends R> interfaceC2363m) {
        return (R) ((InterfaceC2363m) He.b.g(interfaceC2363m, "converter is null")).a(this);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> k1(Fe.o<? super T, ? extends y<? extends R>> oVar) {
        return m1(oVar, true, 2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<T> k2(long j10, T t10) {
        if (j10 >= 0) {
            He.b.g(t10, "defaultItem is null");
            return Ye.a.S(new W(this, j10, t10));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <K, V> AbstractC2362l<Ee.b<K, V>> k3(Fe.o<? super T, ? extends K> oVar, Fe.o<? super T, ? extends V> oVar2, boolean z10, int i10, Fe.o<? super Fe.g<Object>, ? extends Map<K, Object>> oVar3) {
        He.b.g(oVar, "keySelector is null");
        He.b.g(oVar2, "valueSelector is null");
        He.b.h(i10, "bufferSize");
        He.b.g(oVar3, "evictingMapFactory is null");
        return Ye.a.P(new C2735o0(this, oVar, oVar2, i10, z10, oVar3));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> k4(@Ce.f Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return Ye.a.P(new I0(this, q10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ee.a<T> k5(int i10, long j10, TimeUnit timeUnit, J j11) {
        He.b.h(i10, "bufferSize");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return C2706e1.b9(this, j10, timeUnit, j11, i10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    public final De.c k6(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.g<? super hn.d> gVar3) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        He.b.g(gVar3, "onSubscribe is null");
        Te.m mVar = new Te.m(gVar, gVar2, aVar, gVar3);
        l6(mVar);
        return mVar;
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> k7(TimeUnit timeUnit) {
        return l7(timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B> AbstractC2362l<AbstractC2362l<T>> k8(hn.b<B> bVar) {
        return l8(bVar, a0());
    }

    @Override
    @Ce.b(Ce.a.SPECIAL)
    @Ce.h("none")
    public final void l(hn.c<? super T> cVar) {
        if (cVar instanceof InterfaceC2367q) {
            l6((InterfaceC2367q) cVar);
        } else {
            He.b.g(cVar, "s is null");
            l6(new Te.u(cVar));
        }
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> l1(Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
        return m1(oVar, z10, 2);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<T> l2(long j10) {
        if (j10 >= 0) {
            return Ye.a.S(new W(this, j10, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <K> AbstractC2362l<Ee.b<K, T>> l3(Fe.o<? super T, ? extends K> oVar, boolean z10) {
        return (AbstractC2362l<Ee.b<K, T>>) j3(oVar, He.a.k(), z10, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> l4(hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return Q3(this, bVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ee.a<T> l5(int i10, J j10) {
        He.b.g(j10, "scheduler is null");
        return C2706e1.f9(i5(i10), j10);
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.h("none")
    public final void l6(InterfaceC2367q<? super T> interfaceC2367q) {
        He.b.g(interfaceC2367q, "s is null");
        try {
            hn.c<? super T> h02 = Ye.a.h0(this, interfaceC2367q);
            He.b.g(h02, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            m6(h02);
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

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> l7(TimeUnit timeUnit, J j10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j10, "scheduler is null");
        return Ye.a.P(new L1(this, timeUnit, j10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <B> AbstractC2362l<AbstractC2362l<T>> l8(hn.b<B> bVar, int i10) {
        He.b.g(bVar, "boundaryIndicator is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new U1(this, bVar, i10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final T m() {
        Te.d dVar = new Te.d();
        l6(dVar);
        T b10 = dVar.b();
        if (b10 != null) {
            return b10;
        }
        throw new NoSuchElementException();
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> m1(Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new Ne.d(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <TRight, TLeftEnd, TRightEnd, R> AbstractC2362l<R> m3(hn.b<? extends TRight> bVar, Fe.o<? super T, ? extends hn.b<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends hn.b<TRightEnd>> oVar2, Fe.c<? super T, ? super AbstractC2362l<TRight>, ? extends R> cVar) {
        He.b.g(bVar, "other is null");
        He.b.g(oVar, "leftEnd is null");
        He.b.g(oVar2, "rightEnd is null");
        He.b.g(cVar, "resultSelector is null");
        return Ye.a.P(new C2738p0(this, bVar, oVar, oVar2, cVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final Ee.a<T> m5(long j10, TimeUnit timeUnit) {
        return n5(j10, timeUnit, C3604b.a());
    }

    public abstract void m6(hn.c<? super T> cVar);

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> m7(long j10, TimeUnit timeUnit) {
        return u7(j10, timeUnit, null, C3604b.a());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <U, V> AbstractC2362l<AbstractC2362l<T>> m8(hn.b<U> bVar, Fe.o<? super U, ? extends hn.b<V>> oVar) {
        return n8(bVar, oVar, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final T n(T t10) {
        Te.d dVar = new Te.d();
        l6(dVar);
        T b10 = dVar.b();
        return b10 != null ? b10 : t10;
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> n1(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        return o1(oVar, 2);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> n3() {
        return Ye.a.P(new C2741q0(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> n4(J j10) {
        return p4(j10, false, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ee.a<T> n5(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return C2706e1.a9(this, j10, timeUnit, j11);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> n6(@Ce.f J j10) {
        He.b.g(j10, "scheduler is null");
        return o6(j10, !(this instanceof Le.F));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> n7(long j10, TimeUnit timeUnit, J j11) {
        return u7(j10, timeUnit, null, j11);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <U, V> AbstractC2362l<AbstractC2362l<T>> n8(hn.b<U> bVar, Fe.o<? super U, ? extends hn.b<V>> oVar, int i10) {
        He.b.g(bVar, "openingIndicator is null");
        He.b.g(oVar, "closingIndicator is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new V1(this, bVar, oVar, i10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.h("none")
    public final void o(Fe.g<? super T> gVar) {
        Iterator<T> it = p().iterator();
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

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> o1(Fe.o<? super T, ? extends Q<? extends R>> oVar, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new Ne.e(this, oVar, io.reactivex.internal.util.j.IMMEDIATE, i10));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2353c o3() {
        return Ye.a.O(new C2746s0(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final AbstractC2362l<T> o4(J j10, boolean z10) {
        return p4(j10, z10, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h(Ce.h.f4304o)
    public final Ee.a<T> o5(J j10) {
        He.b.g(j10, "scheduler is null");
        return C2706e1.f9(h5(), j10);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> o6(@Ce.f J j10, boolean z10) {
        He.b.g(j10, "scheduler is null");
        return Ye.a.P(new C2765y1(this, j10, z10));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> o7(long j10, TimeUnit timeUnit, J j11, hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return u7(j10, timeUnit, bVar, j11);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final <B> AbstractC2362l<AbstractC2362l<T>> o8(Callable<? extends hn.b<B>> callable) {
        return p8(callable, a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Iterable<T> p() {
        return q(a0());
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> p1(Fe.o<? super T, ? extends Q<? extends R>> oVar) {
        return r1(oVar, true, 2);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final AbstractC2362l<T> p2(Fe.r<? super T> rVar) {
        He.b.g(rVar, "predicate is null");
        return Ye.a.P(new Z(this, rVar));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> p4(J j10, boolean z10, int i10) {
        He.b.g(j10, "scheduler is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new K0(this, j10, z10, i10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> p5() {
        return r5(Long.MAX_VALUE, He.a.c());
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final <E extends hn.c<? super T>> E p6(E e10) {
        l(e10);
        return e10;
    }

    @Ce.f
    @Ce.h(Ce.h.f4305p)
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> p7(long j10, TimeUnit timeUnit, hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return u7(j10, timeUnit, bVar, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <B> AbstractC2362l<AbstractC2362l<T>> p8(Callable<? extends hn.b<B>> callable, int i10) {
        He.b.g(callable, "boundaryIndicatorSupplier is null");
        He.b.h(i10, "bufferSize");
        return Ye.a.P(new W1(this, callable, i10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final Iterable<T> q(int i10) {
        He.b.h(i10, "bufferSize");
        return new C2695b(this, i10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> q1(Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
        return r1(oVar, z10, 2);
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final K<T> q2(T t10) {
        return k2(0L, t10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <U> AbstractC2362l<U> q4(Class<U> cls) {
        He.b.g(cls, "clazz is null");
        return p2(He.a.l(cls)).d0(cls);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> q5(long j10) {
        return r5(j10, He.a.c());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> q6(hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return Ye.a.P(new C2768z1(this, bVar));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final <V> AbstractC2362l<T> q7(Fe.o<? super T, ? extends hn.b<V>> oVar) {
        return v7(null, oVar, null);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <U, R> AbstractC2362l<R> q8(hn.b<? extends U> bVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        He.b.g(bVar, "other is null");
        He.b.g(cVar, "combiner is null");
        return Ye.a.P(new Y1(this, cVar, bVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final T r() {
        Te.e eVar = new Te.e();
        l6(eVar);
        T b10 = eVar.b();
        if (b10 != null) {
            return b10;
        }
        throw new NoSuchElementException();
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <R> AbstractC2362l<R> r1(Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10, int i10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "prefetch");
        return Ye.a.P(new Ne.e(this, oVar, z10 ? io.reactivex.internal.util.j.END : io.reactivex.internal.util.j.BOUNDARY, i10));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2368s<T> r2() {
        return j2(0L);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> r4() {
        return v4(a0(), false, true);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> r5(long j10, Fe.r<? super Throwable> rVar) {
        if (j10 >= 0) {
            He.b.g(rVar, "predicate is null");
            return Ye.a.P(new C2712g1(this, j10, rVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j10);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> r6(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        return s6(oVar, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <V> AbstractC2362l<T> r7(Fe.o<? super T, ? extends hn.b<V>> oVar, AbstractC2362l<? extends T> abstractC2362l) {
        He.b.g(abstractC2362l, "other is null");
        return v7(null, oVar, abstractC2362l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <T1, T2, R> AbstractC2362l<R> r8(hn.b<T1> bVar, hn.b<T2> bVar2, Fe.h<? super T, ? super T1, ? super T2, R> hVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        return v8(new hn.b[]{bVar, bVar2}, He.a.y(hVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final T s(T t10) {
        Te.e eVar = new Te.e();
        l6(eVar);
        T b10 = eVar.b();
        return b10 != null ? b10 : t10;
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> s1(@Ce.f InterfaceC2359i interfaceC2359i) {
        He.b.g(interfaceC2359i, "other is null");
        return Ye.a.P(new Le.A(this, interfaceC2359i));
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final K<T> s2() {
        return l2(0L);
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> s4(int i10) {
        return v4(i10, false, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> s5(Fe.d<? super Integer, ? super Throwable> dVar) {
        He.b.g(dVar, "predicate is null");
        return Ye.a.P(new C2709f1(this, dVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> s6(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
        return t6(oVar, i10, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <U, V> AbstractC2362l<T> s7(hn.b<U> bVar, Fe.o<? super T, ? extends hn.b<V>> oVar) {
        He.b.g(bVar, "firstTimeoutIndicator is null");
        return v7(bVar, oVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <T1, T2, T3, R> AbstractC2362l<R> s8(hn.b<T1> bVar, hn.b<T2> bVar2, hn.b<T3> bVar3, Fe.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        return v8(new hn.b[]{bVar, bVar2, bVar3}, He.a.z(iVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final Iterable<T> t() {
        return new C2698c(this);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> t1(@Ce.f y<? extends T> yVar) {
        He.b.g(yVar, "other is null");
        return Ye.a.P(new Le.B(this, yVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> t2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        return E2(oVar, false, a0(), a0());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> t4(int i10, Fe.a aVar) {
        return w4(i10, false, false, aVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> t5(Fe.r<? super Throwable> rVar) {
        return r5(Long.MAX_VALUE, rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> AbstractC2362l<R> t6(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
        He.b.g(oVar, "mapper is null");
        He.b.h(i10, "bufferSize");
        if (!(this instanceof Ie.m)) {
            return Ye.a.P(new A1(this, oVar, i10, z10));
        }
        Object call = ((Ie.m) this).call();
        return call == null ? m2() : C2724k1.a(call, oVar);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U, V> AbstractC2362l<T> t7(hn.b<U> bVar, Fe.o<? super T, ? extends hn.b<V>> oVar, hn.b<? extends T> bVar2) {
        He.b.g(bVar, "firstTimeoutSelector is null");
        He.b.g(bVar2, "other is null");
        return v7(bVar, oVar, bVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <T1, T2, T3, T4, R> AbstractC2362l<R> t8(hn.b<T1> bVar, hn.b<T2> bVar2, hn.b<T3> bVar3, hn.b<T4> bVar4, Fe.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        He.b.g(bVar, "source1 is null");
        He.b.g(bVar2, "source2 is null");
        He.b.g(bVar3, "source3 is null");
        He.b.g(bVar4, "source4 is null");
        return v8(new hn.b[]{bVar, bVar2, bVar3, bVar4}, He.a.A(jVar));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> u1(@Ce.f Q<? extends T> q10) {
        He.b.g(q10, "other is null");
        return Ye.a.P(new Le.C(this, q10));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> u2(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
        return E2(oVar, false, i10, a0());
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> u4(int i10, boolean z10) {
        return v4(i10, z10, false);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> u5(Fe.e eVar) {
        He.b.g(eVar, "stop is null");
        return r5(Long.MAX_VALUE, He.a.v(eVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final AbstractC2353c u6(@Ce.f Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new Ne.f(this, oVar, false));
    }

    public final AbstractC2362l<T> u7(long j10, TimeUnit timeUnit, hn.b<? extends T> bVar, J j11) {
        He.b.g(timeUnit, "timeUnit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new N1(this, j10, timeUnit, j11, bVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <R> AbstractC2362l<R> u8(Iterable<? extends hn.b<?>> iterable, Fe.o<? super Object[], R> oVar) {
        He.b.g(iterable, "others is null");
        He.b.g(oVar, "combiner is null");
        return Ye.a.P(new Z1(this, iterable, oVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final Iterable<T> v(T t10) {
        return new C2701d(this, t10);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> v1(hn.b<? extends T> bVar) {
        He.b.g(bVar, "other is null");
        return C0(this, bVar);
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2362l<R> v2(Fe.o<? super T, ? extends hn.b<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        return z2(oVar, cVar, false, a0(), a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<Boolean> v3() {
        return c(He.a.b());
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> v4(int i10, boolean z10, boolean z11) {
        He.b.h(i10, "capacity");
        return Ye.a.P(new L0(this, i10, z11, z10, He.a.f8377c));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final AbstractC2362l<T> v5(Fe.o<? super AbstractC2362l<Throwable>, ? extends hn.b<?>> oVar) {
        He.b.g(oVar, "handler is null");
        return Ye.a.P(new C2715h1(this, oVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final AbstractC2353c v6(@Ce.f Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.O(new Ne.f(this, oVar, true));
    }

    public final <U, V> AbstractC2362l<T> v7(hn.b<U> bVar, Fe.o<? super T, ? extends hn.b<V>> oVar, hn.b<? extends T> bVar2) {
        He.b.g(oVar, "itemTimeoutIndicator is null");
        return Ye.a.P(new M1(this, bVar, oVar, bVar2));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    public final <R> AbstractC2362l<R> v8(hn.b<?>[] bVarArr, Fe.o<? super Object[], R> oVar) {
        He.b.g(bVarArr, "others is null");
        He.b.g(oVar, "combiner is null");
        return Ye.a.P(new Z1(this, bVarArr, oVar));
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final Iterable<T> w() {
        return new C2704e(this);
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final K<Boolean> w1(Object obj) {
        He.b.g(obj, "item is null");
        return i(He.a.i(obj));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2362l<R> w2(Fe.o<? super T, ? extends hn.b<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, int i10) {
        return z2(oVar, cVar, false, i10, a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final <TRight, TLeftEnd, TRightEnd, R> AbstractC2362l<R> w3(hn.b<? extends TRight> bVar, Fe.o<? super T, ? extends hn.b<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends hn.b<TRightEnd>> oVar2, Fe.c<? super T, ? super TRight, ? extends R> cVar) {
        He.b.g(bVar, "other is null");
        He.b.g(oVar, "leftEnd is null");
        He.b.g(oVar2, "rightEnd is null");
        He.b.g(cVar, "resultSelector is null");
        return Ye.a.P(new C2758w0(this, bVar, oVar, oVar2, cVar));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    public final AbstractC2362l<T> w4(int i10, boolean z10, boolean z11, Fe.a aVar) {
        He.b.g(aVar, "onOverflow is null");
        He.b.h(i10, "capacity");
        return Ye.a.P(new L0(this, i10, z11, z10, aVar));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.h("none")
    public final void w5(hn.c<? super T> cVar) {
        He.b.g(cVar, "s is null");
        if (cVar instanceof C4185d) {
            l6((C4185d) cVar);
        } else {
            l6(new C4185d(cVar));
        }
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> w6(Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        return x6(oVar, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final T x() {
        return O5().k();
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final K<Long> x1() {
        return Ye.a.S(new Le.E(this));
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2362l<R> x2(Fe.o<? super T, ? extends hn.b<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10) {
        return z2(oVar, cVar, z10, a0(), a0());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    public final AbstractC2362l<T> x4(long j10, Fe.a aVar, EnumC2351a enumC2351a) {
        He.b.g(enumC2351a, "overflowStrategy is null");
        He.b.i(j10, "capacity");
        return Ye.a.P(new M0(this, j10, aVar, enumC2351a));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> x5(long j10, TimeUnit timeUnit) {
        return y5(j10, timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.SPECIAL)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> x6(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
        return t6(oVar, i10, true);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final T y(T t10) {
        return M5(t10).k();
    }

    @Ce.b(Ce.a.FULL)
    @Ce.d
    @Ce.h("none")
    public final <U, R> AbstractC2362l<R> y2(Fe.o<? super T, ? extends hn.b<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i10) {
        return z2(oVar, cVar, z10, i10, a0());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> y4(boolean z10) {
        return v4(a0(), z10, true);
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<T> y5(long j10, TimeUnit timeUnit, J j11) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new C2721j1(this, j10, timeUnit, j11, false));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> AbstractC2362l<R> y6(@Ce.f Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Ne.g(this, oVar, false));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> y7() {
        return B7(TimeUnit.MILLISECONDS, C3604b.a());
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.h("none")
    public final void z() {
        C2725l.a(this);
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final <R> AbstractC2362l<R> z0(r<? super T, ? extends R> rVar) {
        return a3(((r) He.b.g(rVar, "composer is null")).a(this));
    }

    @Ce.b(Ce.a.ERROR)
    @Ce.d
    @Ce.h(Ce.h.f4305p)
    public final AbstractC2362l<T> z1(long j10, TimeUnit timeUnit) {
        return A1(j10, timeUnit, C3604b.a());
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.FULL)
    @Ce.d
    public final <U, R> AbstractC2362l<R> z2(Fe.o<? super T, ? extends hn.b<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar, boolean z10, int i10, int i11) {
        He.b.g(oVar, "mapper is null");
        He.b.g(cVar, "combiner is null");
        He.b.h(i10, "maxConcurrency");
        He.b.h(i11, "bufferSize");
        return E2(C2749t0.b(oVar, cVar), z10, i10, i11);
    }

    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<T> z4() {
        return Ye.a.P(new N0(this));
    }

    @Ce.f
    @Ce.h(Ce.h.f4304o)
    @Ce.b(Ce.a.ERROR)
    @Ce.d
    public final AbstractC2362l<T> z5(long j10, TimeUnit timeUnit, J j11, boolean z10) {
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new C2721j1(this, j10, timeUnit, j11, z10));
    }

    @Ce.f
    @Ce.h("none")
    @Ce.b(Ce.a.UNBOUNDED_IN)
    @Ce.d
    public final <R> AbstractC2362l<R> z6(@Ce.f Fe.o<? super T, ? extends y<? extends R>> oVar) {
        He.b.g(oVar, "mapper is null");
        return Ye.a.P(new Ne.g(this, oVar, true));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @Ce.d
    @Ce.h("none")
    public final AbstractC2362l<C3606d<T>> z7(J j10) {
        return B7(TimeUnit.MILLISECONDS, j10);
    }
}
