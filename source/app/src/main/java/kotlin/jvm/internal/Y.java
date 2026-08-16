package kotlin.jvm.internal;

import Wf.k;
import Wf.p;
import nf.InterfaceC14422l0;

public abstract class Y extends c0 implements Wf.k {
    public Y() {
    }

    @Override
    public Wf.c computeReflected() {
        return n0.k(this);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Object g(Object obj) {
        return ((Wf.k) getReflected()).g(obj);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    @InterfaceC14422l0(version = "1.1")
    public Y(Object obj) {
        super(obj);
    }

    @Override
    public k.a a() {
        return ((Wf.k) getReflected()).a();
    }

    @Override
    public p.a c() {
        return ((Wf.k) getReflected()).c();
    }

    @InterfaceC14422l0(version = "1.4")
    public Y(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
