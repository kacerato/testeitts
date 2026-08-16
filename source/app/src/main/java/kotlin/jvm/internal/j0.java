package kotlin.jvm.internal;

import Wf.q;
import nf.InterfaceC14422l0;

public abstract class j0 extends l0 implements Wf.q {
    public j0() {
    }

    @Override
    public Wf.c computeReflected() {
        return n0.v(this);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return e(obj, obj2);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Object v(Object obj, Object obj2) {
        return ((Wf.q) getReflected()).v(obj, obj2);
    }

    @InterfaceC14422l0(version = "1.4")
    public j0(Class cls, String str, String str2, int i10) {
        super(r.NO_RECEIVER, cls, str, str2, i10);
    }

    @Override
    public q.a c() {
        return ((Wf.q) getReflected()).c();
    }
}
