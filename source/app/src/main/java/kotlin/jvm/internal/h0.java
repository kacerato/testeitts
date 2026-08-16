package kotlin.jvm.internal;

import Wf.p;
import nf.InterfaceC14422l0;

public abstract class h0 extends l0 implements Wf.p {
    public h0() {
    }

    @Override
    public Wf.c computeReflected() {
        return n0.u(this);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Object g(Object obj) {
        return ((Wf.p) getReflected()).g(obj);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    @InterfaceC14422l0(version = "1.1")
    public h0(Object obj) {
        super(obj);
    }

    @Override
    public p.a c() {
        return ((Wf.p) getReflected()).c();
    }

    @InterfaceC14422l0(version = "1.4")
    public h0(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
