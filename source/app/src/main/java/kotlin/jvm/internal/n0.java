package kotlin.jvm.internal;

import java.util.Arrays;
import java.util.Collections;
import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;
import pf.C14960A;

public class n0 {

    public static final o0 f95757a;

    public static final String f95758b = " (Kotlin reflection is not available)";

    public static final KClass[] f95759c;

    static {
        o0 o0Var = null;
        try {
            o0Var = (o0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (o0Var == null) {
            o0Var = new o0();
        }
        f95757a = o0Var;
        f95759c = new KClass[0];
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r A(Wf.f fVar) {
        return f95757a.s(fVar, Collections.emptyList(), false);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r B(Class cls) {
        return f95757a.s(d(cls), Collections.emptyList(), false);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r C(Class cls, Wf.t tVar) {
        return f95757a.s(d(cls), Collections.singletonList(tVar), false);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r D(Class cls, Wf.t tVar, Wf.t tVar2) {
        return f95757a.s(d(cls), Arrays.asList(tVar, tVar2), false);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r E(Class cls, Wf.t... tVarArr) {
        return f95757a.s(d(cls), C14960A.cz(tVarArr), false);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.s F(Object obj, String str, Wf.u uVar, boolean z10) {
        return f95757a.t(obj, str, uVar, z10);
    }

    public static KClass a(Class cls) {
        return f95757a.a(cls);
    }

    public static KClass b(Class cls, String str) {
        return f95757a.b(cls, str);
    }

    public static Wf.h c(H h10) {
        return f95757a.c(h10);
    }

    public static KClass d(Class cls) {
        return f95757a.d(cls);
    }

    public static KClass e(Class cls, String str) {
        return f95757a.e(cls, str);
    }

    public static KClass[] f(Class[] clsArr) {
        int length = clsArr.length;
        if (length == 0) {
            return f95759c;
        }
        KClass[] kClassArr = new KClass[length];
        for (int i10 = 0; i10 < length; i10++) {
            kClassArr[i10] = d(clsArr[i10]);
        }
        return kClassArr;
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.g g(Class cls) {
        return f95757a.f(cls, "");
    }

    public static Wf.g h(Class cls, String str) {
        return f95757a.f(cls, str);
    }

    @InterfaceC14422l0(version = "1.6")
    public static Wf.r i(Wf.r rVar) {
        return f95757a.g(rVar);
    }

    public static Wf.j j(W w10) {
        return f95757a.h(w10);
    }

    public static Wf.k k(Y y10) {
        return f95757a.i(y10);
    }

    public static Wf.l l(a0 a0Var) {
        return f95757a.j(a0Var);
    }

    @InterfaceC14422l0(version = "1.6")
    public static Wf.r m(Wf.r rVar) {
        return f95757a.k(rVar);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r n(Wf.f fVar) {
        return f95757a.s(fVar, Collections.emptyList(), true);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r o(Class cls) {
        return f95757a.s(d(cls), Collections.emptyList(), true);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r p(Class cls, Wf.t tVar) {
        return f95757a.s(d(cls), Collections.singletonList(tVar), true);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r q(Class cls, Wf.t tVar, Wf.t tVar2) {
        return f95757a.s(d(cls), Arrays.asList(tVar, tVar2), true);
    }

    @InterfaceC14422l0(version = "1.4")
    public static Wf.r r(Class cls, Wf.t... tVarArr) {
        return f95757a.s(d(cls), C14960A.cz(tVarArr), true);
    }

    @InterfaceC14422l0(version = "1.6")
    public static Wf.r s(Wf.r rVar, Wf.r rVar2) {
        return f95757a.l(rVar, rVar2);
    }

    public static Wf.o t(f0 f0Var) {
        return f95757a.m(f0Var);
    }

    public static Wf.p u(h0 h0Var) {
        return f95757a.n(h0Var);
    }

    public static Wf.q v(j0 j0Var) {
        return f95757a.o(j0Var);
    }

    @InterfaceC14422l0(version = "1.3")
    public static String w(F f10) {
        return f95757a.p(f10);
    }

    @InterfaceC14422l0(version = "1.1")
    public static String x(O o10) {
        return f95757a.q(o10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static void y(Wf.s sVar, Wf.r rVar) {
        f95757a.r(sVar, Collections.singletonList(rVar));
    }

    @InterfaceC14422l0(version = "1.4")
    public static void z(Wf.s sVar, Wf.r... rVarArr) {
        f95757a.r(sVar, C14960A.cz(rVarArr));
    }
}
