package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;

public class i0 extends h0 {
    public i0(Wf.g gVar, String str, String str2) {
        super(r.NO_RECEIVER, ((InterfaceC14023u) gVar).f(), str, str2, !(gVar instanceof KClass) ? 1 : 0);
    }

    public Object get(Object obj) {
        return c().call(obj);
    }

    @InterfaceC14422l0(version = "1.4")
    public i0(Class cls, String str, String str2, int i10) {
        super(r.NO_RECEIVER, cls, str, str2, i10);
    }

    @InterfaceC14422l0(version = "1.4")
    public i0(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
