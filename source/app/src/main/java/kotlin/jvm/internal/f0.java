package kotlin.jvm.internal;

import Wf.o;
import nf.InterfaceC14422l0;

public abstract class f0 extends l0 implements Wf.o {
    public f0() {
    }

    @Override
    public Wf.c computeReflected() {
        return n0.t(this);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Object getDelegate() {
        return ((Wf.o) getReflected()).getDelegate();
    }

    @Override
    public Object invoke() {
        return get();
    }

    @InterfaceC14422l0(version = "1.1")
    public f0(Object obj) {
        super(obj);
    }

    @Override
    public o.a c() {
        return ((Wf.o) getReflected()).c();
    }

    @InterfaceC14422l0(version = "1.4")
    public f0(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
