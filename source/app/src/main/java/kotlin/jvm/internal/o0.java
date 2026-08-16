package kotlin.jvm.internal;

import java.util.List;
import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;

public class o0 {

    public static final String f95760a = "kotlin.jvm.functions.";

    public KClass a(Class cls) {
        return new C14024v(cls);
    }

    public KClass b(Class cls, String str) {
        return new C14024v(cls);
    }

    public Wf.h c(H h10) {
        return h10;
    }

    public KClass d(Class cls) {
        return new C14024v(cls);
    }

    public KClass e(Class cls, String str) {
        return new C14024v(cls);
    }

    public Wf.g f(Class cls, String str) {
        return new d0(cls, str);
    }

    @InterfaceC14422l0(version = "1.6")
    public Wf.r g(Wf.r rVar) {
        z0 z0Var = (z0) rVar;
        return new z0(rVar.E(), rVar.getArguments(), z0Var.r(), z0Var.p() | 2);
    }

    public Wf.j h(W w10) {
        return w10;
    }

    public Wf.k i(Y y10) {
        return y10;
    }

    public Wf.l j(a0 a0Var) {
        return a0Var;
    }

    @InterfaceC14422l0(version = "1.6")
    public Wf.r k(Wf.r rVar) {
        z0 z0Var = (z0) rVar;
        return new z0(rVar.E(), rVar.getArguments(), z0Var.r(), z0Var.p() | 4);
    }

    @InterfaceC14422l0(version = "1.6")
    public Wf.r l(Wf.r rVar, Wf.r rVar2) {
        return new z0(rVar.E(), rVar.getArguments(), rVar2, ((z0) rVar).p());
    }

    public Wf.o m(f0 f0Var) {
        return f0Var;
    }

    public Wf.p n(h0 h0Var) {
        return h0Var;
    }

    public Wf.q o(j0 j0Var) {
        return j0Var;
    }

    @InterfaceC14422l0(version = "1.3")
    public String p(F f10) {
        String obj = f10.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith(f95760a) ? obj.substring(21) : obj;
    }

    @InterfaceC14422l0(version = "1.1")
    public String q(O o10) {
        return p(o10);
    }

    @InterfaceC14422l0(version = "1.4")
    public void r(Wf.s sVar, List<Wf.r> list) {
        ((x0) sVar).c(list);
    }

    @InterfaceC14422l0(version = "1.4")
    public Wf.r s(Wf.f fVar, List<Wf.t> list, boolean z10) {
        return new z0(fVar, list, z10);
    }

    @InterfaceC14422l0(version = "1.4")
    public Wf.s t(Object obj, String str, Wf.u uVar, boolean z10) {
        return new x0(obj, str, uVar, z10);
    }
}
