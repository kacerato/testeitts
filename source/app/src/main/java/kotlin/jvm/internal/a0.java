package kotlin.jvm.internal;

import Wf.l;
import Wf.q;
import nf.InterfaceC14422l0;

public abstract class a0 extends c0 implements Wf.l {
    public a0() {
    }

    @Override
    public Wf.c computeReflected() {
        return n0.l(this);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return e(obj, obj2);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Object v(Object obj, Object obj2) {
        return ((Wf.l) getReflected()).v(obj, obj2);
    }

    @InterfaceC14422l0(version = "1.4")
    public a0(Class cls, String str, String str2, int i10) {
        super(r.NO_RECEIVER, cls, str, str2, i10);
    }

    @Override
    public l.a a() {
        return ((Wf.l) getReflected()).a();
    }

    @Override
    public q.a c() {
        return ((Wf.l) getReflected()).c();
    }
}
