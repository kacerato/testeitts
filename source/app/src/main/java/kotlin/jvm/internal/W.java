package kotlin.jvm.internal;

import Wf.j;
import Wf.o;
import nf.InterfaceC14422l0;

public abstract class W extends c0 implements Wf.j {
    public W() {
    }

    @Override
    public Wf.c computeReflected() {
        return n0.j(this);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Object getDelegate() {
        return ((Wf.j) getReflected()).getDelegate();
    }

    @Override
    public Object invoke() {
        return get();
    }

    @InterfaceC14422l0(version = "1.1")
    public W(Object obj) {
        super(obj);
    }

    @Override
    public j.a a() {
        return ((Wf.j) getReflected()).a();
    }

    @Override
    public o.a c() {
        return ((Wf.j) getReflected()).c();
    }

    @InterfaceC14422l0(version = "1.4")
    public W(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
